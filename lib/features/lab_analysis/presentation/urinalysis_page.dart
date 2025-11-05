import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/theme/colors.dart';
import '../domain/entities/urinalysis_result.dart';
import '../../../l10n/app_localizations.dart';

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

class UrinalysisPage extends StatefulWidget {
  const UrinalysisPage({super.key});

  @override
  State<UrinalysisPage> createState() => _UrinalysisPageState();
}

class _UrinalysisPageState extends State<UrinalysisPage> {
  final _formKey = GlobalKey<FormState>();
  
  // Controllers for physical properties
  final _specificGravityController = TextEditingController();
  final _phController = TextEditingController();
  
  // Controllers for microscopic analysis
  final _rbcController = TextEditingController();
  final _wbcController = TextEditingController();
  final _epithelialController = TextEditingController();
  final _bacteriaController = TextEditingController();
  final _castsController = TextEditingController();
  final _crystalsController = TextEditingController();
  
  final _notesController = TextEditingController();
  
  // Dropdown selections
  UrineColor _selectedColor = UrineColor.yellow;
  UrineClarity _selectedClarity = UrineClarity.clear;
  UrineProtein _selectedProtein = UrineProtein.negative;
  UrineGlucose _selectedGlucose = UrineGlucose.negative;
  UrineKetones _selectedKetones = UrineKetones.negative;
  UrineBlood _selectedBlood = UrineBlood.negative;
  UrineLeukocytes _selectedLeukocytes = UrineLeukocytes.negative;
  UrineNitrites _selectedNitrites = UrineNitrites.negative;
  UrineBilirubin _selectedBilirubin = UrineBilirubin.negative;
  UrineUrobilinogen _selectedUrobilinogen = UrineUrobilinogen.normal;
  
  UrinalysisResult? _currentResult;
  bool _showResults = false;

  @override
  void dispose() {
    _specificGravityController.dispose();
    _phController.dispose();
    _rbcController.dispose();
    _wbcController.dispose();
    _epithelialController.dispose();
    _bacteriaController.dispose();
    _castsController.dispose();
    _crystalsController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  void _analyzeUrine() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _currentResult = UrinalysisResult(
          color: _selectedColor,
          clarity: _selectedClarity,
          specificGravity: parseLocalizedDouble(_specificGravityController.text),
          ph: parseLocalizedDouble(_phController.text),
          protein: _selectedProtein,
          glucose: _selectedGlucose,
          ketones: _selectedKetones,
          blood: _selectedBlood,
          leukocytes: _selectedLeukocytes,
          nitrites: _selectedNitrites,
          bilirubin: _selectedBilirubin,
          urobilinogen: _selectedUrobilinogen,
          rbcCount: _rbcController.text.isNotEmpty 
              ? int.parse(_rbcController.text) : null,
          wbcCount: _wbcController.text.isNotEmpty 
              ? int.parse(_wbcController.text) : null,
          epithelialCells: _epithelialController.text.isNotEmpty 
              ? int.parse(_epithelialController.text) : null,
          bacteria: _bacteriaController.text.isNotEmpty 
              ? int.parse(_bacteriaController.text) : null,
          casts: _castsController.text.isNotEmpty 
              ? int.parse(_castsController.text) : null,
          crystals: _crystalsController.text.isNotEmpty 
              ? int.parse(_crystalsController.text) : null,
          timestamp: DateTime.now(),
          notes: _notesController.text.isNotEmpty ? _notesController.text : null,
        );
        _showResults = true;
      });
    }
  }

  void _clearForm() {
    setState(() {
      _specificGravityController.clear();
      _phController.clear();
      _rbcController.clear();
      _wbcController.clear();
      _epithelialController.clear();
      _bacteriaController.clear();
      _castsController.clear();
      _crystalsController.clear();
      _notesController.clear();
      
      _selectedColor = UrineColor.yellow;
      _selectedClarity = UrineClarity.clear;
      _selectedProtein = UrineProtein.negative;
      _selectedGlucose = UrineGlucose.negative;
      _selectedKetones = UrineKetones.negative;
      _selectedBlood = UrineBlood.negative;
      _selectedLeukocytes = UrineLeukocytes.negative;
      _selectedNitrites = UrineNitrites.negative;
      _selectedBilirubin = UrineBilirubin.negative;
      _selectedUrobilinogen = UrineUrobilinogen.normal;
      
      _currentResult = null;
      _showResults = false;
    });
  }

  String _getUrinalysisTypeText(UrinalysisType type) {
    switch (type) {
      case UrinalysisType.normal:
        return 'Bình thường';
      case UrinalysisType.uti:
        return 'Nhiễm khuẩn đường tiểu';
      case UrinalysisType.kidney_disease:
        return 'Bệnh thận';
      case UrinalysisType.diabetes:
        return 'Đái tháo đường';
      case UrinalysisType.liver_disease:
        return 'Bệnh gan';
      case UrinalysisType.dehydration:
        return 'Mất nước';
      case UrinalysisType.hematuria:
        return 'Hematuria';
      case UrinalysisType.proteinuria:
        return 'Proteinuria';
      case UrinalysisType.glycosuria:
        return 'Glycosuria';
      case UrinalysisType.ketonuria:
        return 'Ketonuria';
    }
  }

  String _getCauseText(UrinalysisCause cause) {
    switch (cause) {
      case UrinalysisCause.normal:
        return 'Bình thường';
      case UrinalysisCause.bacterial_uti:
        return 'Nhiễm khuẩn đường tiểu';
      case UrinalysisCause.acute_cystitis:
        return 'Viêm bàng quang cấp';
      case UrinalysisCause.pyelonephritis:
        return 'Viêm thận bể thận';
      case UrinalysisCause.diabetes_mellitus:
        return 'Đái tháo đường';
      case UrinalysisCause.diabetic_ketoacidosis:
        return 'Coma nhiễm toan do đái tháo đường';
      case UrinalysisCause.diabetic_nephropathy:
        return 'Bệnh thận do đái tháo đường';
      case UrinalysisCause.glomerulonephritis:
        return 'Viêm cầu thận';
      case UrinalysisCause.nephrotic_syndrome:
        return 'Hội chứng thận hư';
      case UrinalysisCause.acute_kidney_injury:
        return 'Suy thận cấp';
      case UrinalysisCause.chronic_kidney_disease:
        return 'Bệnh thận mạn';
      case UrinalysisCause.hepatitis:
        return 'Viêm gan';
      case UrinalysisCause.cirrhosis:
        return 'Xơ gan';
      case UrinalysisCause.biliary_obstruction:
        return 'Tắc mật';
      case UrinalysisCause.kidney_stones:
        return 'Sỏi thận';
      case UrinalysisCause.bladder_cancer:
        return 'Ung thư bàng quang';
      case UrinalysisCause.kidney_cancer:
        return 'Ung thư thận';
      case UrinalysisCause.rhabdomyolysis:
        return 'Tan rã cơ vân';
      case UrinalysisCause.dehydration_concentrated:
        return 'Nước tiểu cô đặc do mất nước';
      default:
        return cause.toString().replaceAll('_', ' ');
    }
  }

  String _getColorText(UrineColor color, AppLocalizations localizations) {
    switch (color) {
      case UrineColor.pale_yellow:
        return localizations.colorPaleYellow;
      case UrineColor.yellow:
        return localizations.colorYellow;
      case UrineColor.dark_yellow:
        return localizations.colorDarkYellow;
      case UrineColor.amber:
        return localizations.colorAmber;
      case UrineColor.red:
        return localizations.colorRed;
      case UrineColor.brown:
        return localizations.colorBrown;
      case UrineColor.green:
        return localizations.colorGreen;
      case UrineColor.blue:
        return localizations.colorBlue;
      case UrineColor.colorless:
        return localizations.colorColorless;
    }
  }

  String _getClarityText(UrineClarity clarity, AppLocalizations localizations) {
    switch (clarity) {
      case UrineClarity.clear:
        return localizations.clarityClear;
      case UrineClarity.slightly_cloudy:
        return localizations.claritySlightlyCloudy;
      case UrineClarity.cloudy:
        return localizations.clarityCloudy;
      case UrineClarity.turbid:
        return localizations.clarityTurbid;
    }
  }

  String _getProteinText(UrineProtein protein, AppLocalizations localizations) {
    switch (protein) {
      case UrineProtein.negative:
        return localizations.testNegative;
      case UrineProtein.trace:
        return localizations.testTrace;
      case UrineProtein.plus_1:
        return '+1';
      case UrineProtein.plus_2:
        return '+2';
      case UrineProtein.plus_3:
        return '+3';
      case UrineProtein.plus_4:
        return '+4';
    }
  }

  String _getGlucoseText(UrineGlucose glucose, AppLocalizations localizations) {
    switch (glucose) {
      case UrineGlucose.negative:
        return localizations.testNegative;
      case UrineGlucose.trace:
        return localizations.testTrace;
      case UrineGlucose.plus_1:
        return '+1';
      case UrineGlucose.plus_2:
        return '+2';
      case UrineGlucose.plus_3:
        return '+3';
      case UrineGlucose.plus_4:
        return '+4';
    }
  }

  String _getKetonesText(UrineKetones ketones, AppLocalizations localizations) {
    switch (ketones) {
      case UrineKetones.negative:
        return localizations.testNegative;
      case UrineKetones.trace:
        return localizations.testTrace;
      case UrineKetones.small:
        return localizations.testSmall;
      case UrineKetones.moderate:
        return localizations.testModerate;
      case UrineKetones.large:
        return localizations.testLarge;
    }
  }
  
  String _getNegativePositiveText(bool isNegative, AppLocalizations localizations) {
    return isNegative ? localizations.testNegative : localizations.testPositive;
  }
  
  String _getNormalHighText(bool isNormal, AppLocalizations localizations) {
    return isNormal ? localizations.testNormal : localizations.testHigh;
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.urinalysisTitle),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        actions: [
          if (_showResults)
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: _clearForm,
              tooltip: localizations.newAnalysis,
            ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header info
              Card(
                color: AppColors.primary.withValues(alpha: 0.1),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Icon(Icons.opacity, 
                           size: 48, 
                           color: AppColors.primary),
                      const SizedBox(height: 8),
                      Text(
                        localizations.urinalysisTitle,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        localizations.urinalysisSubtitle,
                        style: const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              if (!_showResults) ...[
                // Physical Properties Card
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.visibility, color: AppColors.primary),
                            const SizedBox(width: 8),
                            Text(
                              localizations.physicalProperties,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        
                        // Color and Clarity column (to avoid overflow)
                        Column(
                          children: [
                            DropdownButtonFormField<UrineColor>(
                              initialValue: _selectedColor,
                              decoration: InputDecoration(
                                labelText: localizations.colorLabel,
                                border: const OutlineInputBorder(),
                                contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                              ),
                              items: UrineColor.values.map((color) {
                                return DropdownMenuItem(
                                  value: color,
                                  child: Text(_getColorText(color, localizations)),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  _selectedColor = value!;
                                });
                              },
                            ),
                            const SizedBox(height: 16),
                            DropdownButtonFormField<UrineClarity>(
                              initialValue: _selectedClarity,
                              decoration: InputDecoration(
                                labelText: localizations.clarityLabel,
                                border: const OutlineInputBorder(),
                                contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                              ),
                              items: UrineClarity.values.map((clarity) {
                                return DropdownMenuItem(
                                  value: clarity,
                                  child: Text(_getClarityText(clarity, localizations)),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  _selectedClarity = value!;
                                });
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        
                        // Specific Gravity and pH row
                        Row(
                          children: [
                            Expanded(
                              child: _buildNumberField(
                                controller: _specificGravityController,
                                label: '${localizations.specificGravityLabel} *',
                                hint: '1.003-1.030',
                                validator: _validateRequiredNumber,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: _buildNumberField(
                                controller: _phController,
                                label: 'pH *',
                                hint: '4.5-8.0',
                                validator: _validateRequiredNumber,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                
                // Chemical Analysis Card
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.science, color: AppColors.secondary),
                            const SizedBox(width: 8),
                            Text(
                              localizations.chemicalAnalysis,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        
                        // First row - Protein and Glucose
                        Row(
                          children: [
                            Expanded(
                              child: DropdownButtonFormField<UrineProtein>(
                                initialValue: _selectedProtein,
                                decoration: const InputDecoration(
                                  labelText: 'Protein',
                                  border: OutlineInputBorder(),
                                ),
                                items: UrineProtein.values.map((protein) {
                                  return DropdownMenuItem(
                                    value: protein,
                                    child: Text(_getProteinText(protein, localizations)),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectedProtein = value!;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: DropdownButtonFormField<UrineGlucose>(
                                initialValue: _selectedGlucose,
                                decoration: const InputDecoration(
                                  labelText: 'Glucose',
                                  border: OutlineInputBorder(),
                                ),
                                items: UrineGlucose.values.map((glucose) {
                                  return DropdownMenuItem(
                                    value: glucose,
                                    child: Text(_getGlucoseText(glucose, localizations)),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectedGlucose = value!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        
                        // Second row - Ketones and Blood
                        Row(
                          children: [
                            Expanded(
                              child: DropdownButtonFormField<UrineKetones>(
                                initialValue: _selectedKetones,
                                decoration: const InputDecoration(
                                  labelText: 'Ketones',
                                  border: OutlineInputBorder(),
                                ),
                                items: UrineKetones.values.map((ketones) {
                                  return DropdownMenuItem(
                                    value: ketones,
                                    child: Text(_getKetonesText(ketones, localizations)),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectedKetones = value!;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: DropdownButtonFormField<UrineBlood>(
                                initialValue: _selectedBlood,
                                decoration: const InputDecoration(
                                  labelText: 'Blood',
                                  border: OutlineInputBorder(),
                                ),
                                items: UrineBlood.values.map((blood) {
                                  return DropdownMenuItem(
                                    value: blood,
                                    child: Text(_getNegativePositiveText(blood == UrineBlood.negative, localizations)),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectedBlood = value!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        
                        // Third row - Leukocytes and Nitrites
                        Row(
                          children: [
                            Expanded(
                              child: DropdownButtonFormField<UrineLeukocytes>(
                                initialValue: _selectedLeukocytes,
                                decoration: const InputDecoration(
                                  labelText: 'Leukocytes',
                                  border: OutlineInputBorder(),
                                ),
                                items: UrineLeukocytes.values.map((leukocytes) {
                                  return DropdownMenuItem(
                                    value: leukocytes,
                                    child: Text(_getNegativePositiveText(leukocytes == UrineLeukocytes.negative, localizations)),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectedLeukocytes = value!;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: DropdownButtonFormField<UrineNitrites>(
                                initialValue: _selectedNitrites,
                                decoration: const InputDecoration(
                                  labelText: 'Nitrites',
                                  border: OutlineInputBorder(),
                                ),
                                items: UrineNitrites.values.map((nitrites) {
                                  return DropdownMenuItem(
                                    value: nitrites,
                                    child: Text(_getNegativePositiveText(nitrites == UrineNitrites.negative, localizations)),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectedNitrites = value!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        
                        // Fourth row - Bilirubin and Urobilinogen
                        Row(
                          children: [
                            Expanded(
                              child: DropdownButtonFormField<UrineBilirubin>(
                                initialValue: _selectedBilirubin,
                                decoration: const InputDecoration(
                                  labelText: 'Bilirubin',
                                  border: OutlineInputBorder(),
                                ),
                                items: UrineBilirubin.values.map((bilirubin) {
                                  return DropdownMenuItem(
                                    value: bilirubin,
                                    child: Text(_getNegativePositiveText(bilirubin == UrineBilirubin.negative, localizations)),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectedBilirubin = value!;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: DropdownButtonFormField<UrineUrobilinogen>(
                                initialValue: _selectedUrobilinogen,
                                decoration: const InputDecoration(
                                  labelText: 'Urobilinogen',
                                  border: OutlineInputBorder(),
                                ),
                                items: UrineUrobilinogen.values.map((urobilinogen) {
                                  return DropdownMenuItem(
                                    value: urobilinogen,
                                    child: Text(_getNormalHighText(urobilinogen == UrineUrobilinogen.normal, localizations)),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectedUrobilinogen = value!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                
                // Microscopic Analysis Card (Optional)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.zoom_in, color: AppColors.secondary),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                localizations.microscopicAnalysis,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        
                        // First row - RBC and WBC
                        Row(
                          children: [
                            Expanded(
                              child: _buildNumberField(
                                controller: _rbcController,
                                label: localizations.redBloodCellsHpf,
                                hint: '0-2',
                                validator: _validateOptionalNumber,
                                isInteger: true,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: _buildNumberField(
                                controller: _wbcController,
                                label: localizations.whiteBloodCellsHpf,
                                hint: '0-5',
                                validator: _validateOptionalNumber,
                                isInteger: true,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        
                        // Second row - Epithelial cells and Bacteria
                        Row(
                          children: [
                            Expanded(
                              child: _buildNumberField(
                                controller: _epithelialController,
                                label: localizations.epithelialCellsHpf,
                                hint: '0-5',
                                validator: _validateOptionalNumber,
                                isInteger: true,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: _buildNumberField(
                                controller: _bacteriaController,
                                label: localizations.bacteriaHpf,
                                hint: localizations.fewMany,
                                validator: _validateOptionalNumber,
                                isInteger: true,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        
                        // Third row - Casts and Crystals
                        Row(
                          children: [
                            Expanded(
                              child: _buildNumberField(
                                controller: _castsController,
                                label: localizations.castsLpf,
                                hint: '0-1',
                                validator: _validateOptionalNumber,
                                isInteger: true,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: _buildNumberField(
                                controller: _crystalsController,
                                label: localizations.crystalsHpf,
                                hint: localizations.fewMany,
                                validator: _validateOptionalNumber,
                                isInteger: true,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                
                // Notes Card
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.note_add, color: Colors.grey[600]),
                            const SizedBox(width: 8),
                            Text(
                              localizations.notesOptional,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          controller: _notesController,
                          decoration: InputDecoration(
                            hintText: localizations.notesHint,
                            border: const OutlineInputBorder(),
                          ),
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                
                // Analyze button
                ElevatedButton(
                  onPressed: _analyzeUrine,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.analytics),
                      const SizedBox(width: 8),
                      Text(
                        localizations.analyzeUrine,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
              
              if (_showResults) _buildResultsCard(localizations),
              
              const SizedBox(height: 16),
              _buildCitationWidget(localizations),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNumberField({
    required TextEditingController controller,
    required String label,
    required String hint,
    required String? Function(String?) validator,
    bool isInteger = false,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: const OutlineInputBorder(),
      ),
      keyboardType: TextInputType.numberWithOptions(decimal: !isInteger),
      inputFormatters: isInteger
          ? [FilteringTextInputFormatter.digitsOnly]
          : [
              CommaToDotFormatter(),
              FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
            ],
      validator: validator,
    );
  }

  // Validators
  String? _validateRequiredNumber(String? value) {
    final localizations = AppLocalizations.of(context)!;
    if (value == null || value.isEmpty) {
      return localizations.pleaseEnterValue;
    }
    final number = parseLocalizedDouble(value);
    if (number < 0) {
      return localizations.invalidValue;
    }
    return null;
  }

  String? _validateOptionalNumber(String? value) {
    final localizations = AppLocalizations.of(context)!;
    if (value == null || value.isEmpty) {
      return null; // Optional field
    }
    final number = double.tryParse(value);
    if (number == null || number < 0) {
      return localizations.invalidValue;
    }
    return null;
  }

  Widget _buildResultsCard(AppLocalizations localizations) {
    final result = _currentResult!;
    final urinalysisType = result.urinalysisType;
    final likelyCauses = result.likelyCauses;

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
                  localizations.analysisResults,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            // Main diagnosis
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: _getTypeColor(urinalysisType).withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: _getTypeColor(urinalysisType),
                  width: 2,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        _getTypeIcon(urinalysisType),
                        color: _getTypeColor(urinalysisType),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          _getUrinalysisTypeText(urinalysisType),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: _getTypeColor(urinalysisType),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            
            // Risk and urgency assessment
            _buildUrgencyCard(result.riskLevel, result.urgencyLevel, localizations),
            const SizedBox(height: 16),
            
            // Likely causes
            Text(
              localizations.likelyDiagnoses,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            
            ...likelyCauses.map((cause) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      _getCauseText(cause),
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget _buildUrgencyCard(String riskLevel, String urgencyLevel, AppLocalizations localizations) {
    Color color = _getRiskColor(riskLevel);
    IconData icon = _getRiskIcon(riskLevel);

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: color),
              const SizedBox(width: 8),
              Text(
                '${localizations.riskLevel}: $riskLevel',
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            urgencyLevel,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Color _getTypeColor(UrinalysisType type) {
    switch (type) {
      case UrinalysisType.normal:
        return Colors.green;
      case UrinalysisType.uti:
        return Colors.red;
      case UrinalysisType.kidney_disease:
        return Colors.purple;
      case UrinalysisType.diabetes:
        return Colors.orange;
      case UrinalysisType.liver_disease:
        return Colors.brown;
      case UrinalysisType.hematuria:
        return Colors.red.shade700;
      case UrinalysisType.proteinuria:
        return Colors.purple.shade700;
      case UrinalysisType.glycosuria:
        return Colors.orange.shade700;
      case UrinalysisType.ketonuria:
        return Colors.pink;
      case UrinalysisType.dehydration:
        return Colors.amber;
    }
  }

  IconData _getTypeIcon(UrinalysisType type) {
    switch (type) {
      case UrinalysisType.normal:
        return Icons.check_circle;
      case UrinalysisType.uti:
        return Icons.dangerous;
      case UrinalysisType.kidney_disease:
        return Icons.healing;
      case UrinalysisType.diabetes:
        return Icons.health_and_safety;
      case UrinalysisType.liver_disease:
        return Icons.local_hospital;
      case UrinalysisType.hematuria:
        return Icons.bloodtype;
      case UrinalysisType.proteinuria:
        return Icons.water_drop;
      case UrinalysisType.glycosuria:
        return Icons.gradient;
      case UrinalysisType.ketonuria:
        return Icons.science;
      case UrinalysisType.dehydration:
        return Icons.dry;
    }
  }

  Color _getRiskColor(String risk) {
    switch (risk) {
      case 'Cao':
        return Colors.red;
      case 'Trung bình':
        return Colors.orange;
      case 'Thấp':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  IconData _getRiskIcon(String risk) {
    switch (risk) {
      case 'Cao':
        return Icons.dangerous;
      case 'Trung bình':
        return Icons.warning;
      case 'Thấp':
        return Icons.check_circle;
      default:
        return Icons.help;
    }
  }

  Widget _buildCitationWidget(AppLocalizations localizations) {
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
                localizations.referencesLabel,
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
            'Simerville JA, et al. Urinalysis: a comprehensive review. Am Fam Physician. 2005;71(6):1153-62.\n'
            'European Association of Urology. Guidelines on Urological Infections. 2023.',
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
