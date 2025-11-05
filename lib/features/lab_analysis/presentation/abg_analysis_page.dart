import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../l10n/app_localizations.dart';
import '../../../core/theme/colors.dart';
import '../domain/entities/abg_result.dart';

// Formatter để chuyển dấu phẩy thành dấu chấm và chỉ cho phép số thập phân
class CommaToDotFormatter extends TextInputFormatter {
  final RegExp _allowed = RegExp(r'[0-9\.,]');
  
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    // Lọc các ký tự không hợp lệ
    final filtered = newValue.text.characters.where((c) => _allowed.hasMatch(c)).join();
    // Chuyển ',' thành '.'
    final transformed = filtered.replaceAll(',', '.');
    // Đảm bảo chỉ có một dấu chấm
    final parts = transformed.split('.');
    String result;
    if (parts.length > 2) {
      result = '${parts[0]}.${parts.sublist(1).join('')}';
    } else {
      result = transformed;
    }
    
    return TextEditingValue(
      text: result,
      selection: TextSelection.collapsed(offset: result.length),
    );
  }
}

// Hàm parse số có hỗ trợ dấu phẩy
double parseLocalizedDouble(String text) {
  if (text.trim().isEmpty) return 0.0;
  final normalized = text.replaceAll(',', '.');
  return double.tryParse(normalized) ?? 0.0;
}

class ABGAnalysisPage extends StatefulWidget {
  const ABGAnalysisPage({super.key});

  @override
  State<ABGAnalysisPage> createState() => _ABGAnalysisPageState();
}

class _ABGAnalysisPageState extends State<ABGAnalysisPage> {
  final _formKey = GlobalKey<FormState>();
  final _phController = TextEditingController();
  final _pco2Controller = TextEditingController();
  final _po2Controller = TextEditingController();
  final _hco3Controller = TextEditingController();
  final _baseExcessController = TextEditingController();
  final _sao2Controller = TextEditingController();
  final _fio2Controller = TextEditingController(text: '21');
  final _notesController = TextEditingController();

  ABGResult? _currentResult;
  bool _showResults = false;

  @override
  void dispose() {
    _phController.dispose();
    _pco2Controller.dispose();
    _po2Controller.dispose();
    _hco3Controller.dispose();
    _baseExcessController.dispose();
    _sao2Controller.dispose();
    _fio2Controller.dispose();
    _notesController.dispose();
    super.dispose();
  }

  void _analyzeABG() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _currentResult = ABGResult(
          ph: parseLocalizedDouble(_phController.text),
          pco2: parseLocalizedDouble(_pco2Controller.text),
          po2: parseLocalizedDouble(_po2Controller.text),
          hco3: parseLocalizedDouble(_hco3Controller.text),
          baseExcess: parseLocalizedDouble(_baseExcessController.text),
          sao2: parseLocalizedDouble(_sao2Controller.text),
          fio2: parseLocalizedDouble(_fio2Controller.text) / 100,
          timestamp: DateTime.now(),
          notes: _notesController.text.isNotEmpty ? _notesController.text : null,
        );
        _showResults = true;
      });
    }
  }

  void _clearForm() {
    setState(() {
      _phController.clear();
      _pco2Controller.clear();
      _po2Controller.clear();
      _hco3Controller.clear();
      _baseExcessController.clear();
      _sao2Controller.clear();
      _fio2Controller.text = '21';
      _notesController.clear();
      _currentResult = null;
      _showResults = false;
    });
  }

  String _getInterpretationText(ABGInterpretation interpretation, BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    switch (interpretation) {
      case ABGInterpretation.normal:
        return l10n.abgInterpretationNormal;
      case ABGInterpretation.respiratoryAcidosis:
        return l10n.abgInterpretationRespAcidosis;
      case ABGInterpretation.respiratoryAlkalosis:
        return l10n.abgInterpretationRespAlkalosis;
      case ABGInterpretation.metabolicAcidosis:
        return l10n.abgInterpretationMetAcidosis;
      case ABGInterpretation.metabolicAlkalosis:
        return l10n.abgInterpretationMetAlkalosis;
      case ABGInterpretation.compensatedRespiratoryAcidosis:
        return l10n.abgInterpretationCompRespAcidosis;
      case ABGInterpretation.compensatedRespiratoryAlkalosis:
        return l10n.abgInterpretationCompRespAlkalosis;
      case ABGInterpretation.compensatedMetabolicAcidosis:
        return l10n.abgInterpretationCompMetAcidosis;
      case ABGInterpretation.compensatedMetabolicAlkalosis:
        return l10n.abgInterpretationCompMetAlkalosis;
      case ABGInterpretation.mixedDisorder:
        return l10n.abgInterpretationMixed;
    }
  }

  String _getOxygenationText(OxygenationStatus status, BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    switch (status) {
      case OxygenationStatus.normal:
        return l10n.oxygenationNormal;
      case OxygenationStatus.mildHypoxemia:
        return l10n.oxygenationMildHypoxemia;
      case OxygenationStatus.moderateHypoxemia:
        return l10n.oxygenationModerateHypoxemia;
      case OxygenationStatus.severeHypoxemia:
        return l10n.oxygenationSevereHypoxemia;
      case OxygenationStatus.normalWithSupplementalO2:
        return l10n.oxygenationNormalWithO2;
    }
  }

  Color _getInterpretationColor(ABGInterpretation interpretation) {
    switch (interpretation) {
      case ABGInterpretation.normal:
        return Colors.green;
      case ABGInterpretation.compensatedRespiratoryAcidosis:
      case ABGInterpretation.compensatedRespiratoryAlkalosis:
      case ABGInterpretation.compensatedMetabolicAcidosis:
      case ABGInterpretation.compensatedMetabolicAlkalosis:
        return Colors.orange;
      case ABGInterpretation.respiratoryAcidosis:
      case ABGInterpretation.respiratoryAlkalosis:
      case ABGInterpretation.metabolicAcidosis:
      case ABGInterpretation.metabolicAlkalosis:
        return Colors.red;
      case ABGInterpretation.mixedDisorder:
        return Colors.purple;
    }
  }

  Color _getOxygenationColor(OxygenationStatus status) {
    switch (status) {
      case OxygenationStatus.normal:
      case OxygenationStatus.normalWithSupplementalO2:
        return Colors.green;
      case OxygenationStatus.mildHypoxemia:
        return Colors.orange;
      case OxygenationStatus.moderateHypoxemia:
        return Colors.red.shade400;
      case OxygenationStatus.severeHypoxemia:
        return Colors.red.shade700;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.abgAnalysisTitle),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: _clearForm,
            icon: const Icon(Icons.clear_all),
            tooltip: l10n.abgClearAll,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.local_hospital, color: AppColors.primary),
                        const SizedBox(width: 8),
                        Text(
                          l10n.enterAbgResults,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: _buildNumberField(
                                  context: context,
                                  controller: _phController,
                                  label: l10n.phLabel,
                                  hint: l10n.phHint,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return l10n.pleaseEnterPh;
                                    }
                                    final ph = double.tryParse(value);
                                    if (ph == null || ph < 6.8 || ph > 8.0) {
                                      return l10n.invalidPh;
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: _buildNumberField(
                                  context: context,
                                  controller: _pco2Controller,
                                  label: l10n.pco2Label,
                                  hint: l10n.pco2Hint,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return l10n.pleaseEnterPco2;
                                    }
                                    final pco2 = double.tryParse(value);
                                    if (pco2 == null || pco2 < 10 || pco2 > 150) {
                                      return l10n.invalidPco2;
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              Expanded(
                                child: _buildNumberField(
                                  context: context,
                                  controller: _po2Controller,
                                  label: l10n.po2Label,
                                  hint: l10n.po2Hint,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return l10n.pleaseEnterPo2;
                                    }
                                    final po2 = double.tryParse(value);
                                    if (po2 == null || po2 < 20 || po2 > 600) {
                                      return l10n.invalidPo2;
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: _buildNumberField(
                                  context: context,
                                  controller: _hco3Controller,
                                  label: l10n.hco3Label,
                                  hint: l10n.hco3Hint,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return l10n.pleaseEnterHco3;
                                    }
                                    final hco3 = double.tryParse(value);
                                    if (hco3 == null || hco3 < 5 || hco3 > 50) {
                                      return l10n.invalidHco3;
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              Expanded(
                                child: _buildNumberField(
                                  context: context,
                                  controller: _baseExcessController,
                                  label: l10n.baseExcessLabel,
                                  hint: l10n.baseExcessHint,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return l10n.pleaseEnterBe;
                                    }
                                    final be = double.tryParse(value);
                                    if (be == null || be < -30 || be > 30) {
                                      return l10n.invalidBe;
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: _buildNumberField(
                                  context: context,
                                  controller: _sao2Controller,
                                  label: l10n.sao2Label,
                                  hint: l10n.sao2Hint,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return l10n.pleaseEnterSao2;
                                    }
                                    final sao2 = double.tryParse(value);
                                    if (sao2 == null || sao2 < 0 || sao2 > 100) {
                                      return l10n.invalidSao2;
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          _buildNumberField(
                            context: context,
                            controller: _fio2Controller,
                            label: l10n.fio2Label,
                            hint: l10n.fio2Hint,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return l10n.pleaseEnterFio2;
                              }
                              final fio2 = double.tryParse(value);
                              if (fio2 == null || fio2 < 21 || fio2 > 100) {
                                return l10n.invalidFio2;
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            controller: _notesController,
                            decoration: InputDecoration(
                              labelText: l10n.abgNotesLabel,
                              hintText: l10n.abgNotesHint,
                              border: const OutlineInputBorder(),
                            ),
                            maxLines: 2,
                          ),
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton.icon(
                                  onPressed: _analyzeABG,
                                  icon: const Icon(Icons.analytics),
                                  label: Text(l10n.analyzeAbg),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.primary,
                                    foregroundColor: Colors.white,
                                    padding: const EdgeInsets.all(16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (_showResults && _currentResult != null) ...[
              const SizedBox(height: 16),
              _buildResultsCard(context),
            ],
            const SizedBox(height: 16),
            _buildCitationWidget(context),
          ],
        ),
      ),
    );
  }

  Widget _buildNumberField({
    required BuildContext context,
    required TextEditingController controller,
    required String label,
    required String hint,
    required String? Function(String?) validator,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: const OutlineInputBorder(),
      ),
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      inputFormatters: [
        CommaToDotFormatter(),
        FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
      ],
      validator: validator,
    );
  }

  Widget _buildResultsCard(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final result = _currentResult!;
    final interpretation = result.acidBaseInterpretation;
    final oxygenation = result.oxygenationStatus;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.assignment_turned_in, color: AppColors.primary),
                const SizedBox(width: 8),
                Text(
                  l10n.abgAnalysisResults,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            // Acid-Base Status
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: _getInterpretationColor(interpretation).withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: _getInterpretationColor(interpretation),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.acidBaseStatus,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: _getInterpretationColor(interpretation),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _getInterpretationText(interpretation, context),
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 12),
            
            // Oxygenation Status
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: _getOxygenationColor(oxygenation).withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: _getOxygenationColor(oxygenation),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.oxygenationStatus,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: _getOxygenationColor(oxygenation),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _getOxygenationText(oxygenation, context),
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Calculated Values
            Text(
              l10n.calculatedIndices,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            
            Row(
              children: [
                Expanded(
                  child: _buildCalculatedValue(
                    'P/F Ratio',
                    result.pfRatio.toStringAsFixed(1),
                    'mmHg',
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _buildCalculatedValue(
                    'A-a Gradient',
                    result.aaGradient.toStringAsFixed(1),
                    'mmHg',
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 16),
            
            // Compensation Analysis
            if (interpretation != ABGInterpretation.normal) ...[
              Text(
                l10n.compensationAnalysis,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              
              if (interpretation.toString().contains('metabolic')) ...[
                Text(
                  l10n.expectedPco2(result.expectedPco2ForMetabolicCompensation.toStringAsFixed(1)),
                  style: const TextStyle(fontSize: 14),
                ),
                Text(
                  l10n.actualPco2(result.pco2.toStringAsFixed(1)),
                  style: const TextStyle(fontSize: 14),
                ),
              ] else if (interpretation.toString().contains('respiratory')) ...[
                Text(
                  l10n.expectedHco3(result.expectedHco3ForRespiratoryCompensation.toStringAsFixed(1)),
                  style: const TextStyle(fontSize: 14),
                ),
                Text(
                  l10n.actualHco3(result.hco3.toStringAsFixed(1)),
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ],
            
            if (result.notes != null) ...[
              const SizedBox(height: 16),
              Text(
                l10n.abgNotes,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(result.notes!),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildCalculatedValue(String label, String value, String unit) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '$value $unit',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCitationWidget(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.blue.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.article, color: Colors.blue.shade700, size: 16),
              const SizedBox(width: 6),
              Text(
                l10n.abgReferences,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            'West JB. Respiratory Physiology: The Essentials. 10th ed. 2016.\n'
            'Kacmarek RM, et al. Egan\'s Fundamentals of Respiratory Care. 12th ed. 2020.\n'
            'Rose BD, Post TW. Clinical Physiology of Acid-Base and Electrolyte Disorders. 5th ed. 2001.',
            style: TextStyle(
              fontSize: 11,
              color: Colors.blue.shade600,
            ),
          ),
        ],
      ),
    );
  }
}
