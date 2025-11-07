import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/theme/app_theme.dart';
import '../../../shared/widgets/medical_disclaimer_widget.dart';

class IdealBodyWeightPage extends StatefulWidget {
  const IdealBodyWeightPage({super.key});

  @override
  State<IdealBodyWeightPage> createState() => _IdealBodyWeightPageState();
}

class _IdealBodyWeightPageState extends State<IdealBodyWeightPage> {
  final TextEditingController _heightController = TextEditingController();
  String _selectedGender = 'male';
  String _heightUnit = 'cm';
  double? _devineIBW;
  double? _hamwiIBW;
  double? _robinsonIBW;
  double? _tidalVolumeMin;
  double? _tidalVolumeMax;
  String _selectedFormula = 'devine';

  @override
  void dispose() {
    _heightController.dispose();
    super.dispose();
  }

  void _calculateIBW() {
    final heightText = _heightController.text;
    if (heightText.isEmpty) {
      setState(() {
        _devineIBW = null;
        _hamwiIBW = null;
        _robinsonIBW = null;
        _tidalVolumeMin = null;
        _tidalVolumeMax = null;
      });
      return;
    }

    double? height = double.tryParse(heightText);
    if (height == null || height <= 0) {
      setState(() {
        _devineIBW = null;
        _hamwiIBW = null;
        _robinsonIBW = null;
        _tidalVolumeMin = null;
        _tidalVolumeMax = null;
      });
      return;
    }

    // Convert height to cm if needed
    if (_heightUnit == 'ft') {
      height = height * 30.48; // feet to cm
    } else if (_heightUnit == 'in') {
      height = height * 2.54; // inches to cm
    }

    // Devine Formula (most common for ventilator settings)
    if (height >= 152.4) { // 5 feet minimum
      if (_selectedGender == 'male') {
        _devineIBW = 50 + 2.3 * ((height - 152.4) / 2.54);
      } else {
        _devineIBW = 45.5 + 2.3 * ((height - 152.4) / 2.54);
      }
    }

    // Hamwi Formula
    if (height >= 152.4) {
      if (_selectedGender == 'male') {
        _hamwiIBW = 48 + 2.7 * ((height - 152.4) / 2.54);
      } else {
        _hamwiIBW = 45.5 + 2.2 * ((height - 152.4) / 2.54);
      }
    }

    // Robinson Formula
    if (height >= 152.4) {
      if (_selectedGender == 'male') {
        _robinsonIBW = 52 + 1.9 * ((height - 152.4) / 2.54);
      } else {
        _robinsonIBW = 49 + 1.7 * ((height - 152.4) / 2.54);
      }
    }

    // Calculate tidal volume for ventilator (6-8 ml/kg IBW)
    double selectedIBW;
    switch (_selectedFormula) {
      case 'hamwi':
        selectedIBW = _hamwiIBW ?? 0;
        break;
      case 'robinson':
        selectedIBW = _robinsonIBW ?? 0;
        break;
      default:
        selectedIBW = _devineIBW ?? 0;
    }

    if (selectedIBW > 0) {
      _tidalVolumeMin = selectedIBW * 6; // 6 ml/kg
      _tidalVolumeMax = selectedIBW * 8; // 8 ml/kg
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final isVietnamese = Localizations.localeOf(context).languageCode == 'vi';

    return Scaffold(
      appBar: AppBar(
        title: Text(isVietnamese 
            ? 'Công Cụ Học Tập: Cân Nặng Lý Tưởng' 
            : 'Educational Tool: Ideal Body Weight'),
        backgroundColor: AppTheme.primaryBlue,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Medical Disclaimer
            const MedicalDisclaimerWidget(),
            
            // Educational Context
            EducationalContextWidget(
              title: isVietnamese 
                  ? 'Công cụ tính cân nặng lý tưởng và thông số thở máy'
                  : 'Ideal Body Weight and Ventilator Settings Calculator',
              description: isVietnamese 
                  ? 'Công cụ học tập cho sinh viên y khoa và bác sĩ thực tập để hiểu về các công thức IBW (Devine, Hamwi, Robinson) và cách áp dụng trong việc cài đặt thông số thở máy. Kết quả cần được kiểm chứng với hướng dẫn lâm sàng cụ thể.'
                  : 'Learning tool for medical students and residents to understand IBW formulas (Devine, Hamwi, Robinson) and their application in ventilator settings. Results must be validated with specific clinical guidelines.',
            ),
            
            // Header Card
            Card(
              color: AppTheme.primaryBlue.withValues(alpha: 0.1),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calculate, 
                             color: AppTheme.primaryBlue, size: 24),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            isVietnamese 
                                ? 'Công Cụ Học Tập: Cân Nặng Lý Tưởng & Thở Máy'
                                : 'Educational Tool: Ideal Body Weight & Ventilator',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.primaryBlue,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      isVietnamese 
                          ? 'Công cụ học tập cho sinh viên y khoa để tính cân nặng lý tưởng và thông số thở máy dựa trên chiều cao và giới tính'
                          : 'Educational tool for medical students to calculate ideal body weight and ventilator settings based on height and gender',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Input Section
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isVietnamese ? 'Thông tin bệnh nhân' : 'Patient Information',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.darkGrey,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Gender Selection
                    Text(
                      isVietnamese ? 'Giới tính' : 'Gender',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppTheme.darkGrey,
                      ),
                    ),
                    const SizedBox(height: 8),
                    SegmentedButton<String>(
                      segments: [
                        ButtonSegment<String>(
                          value: 'male',
                          label: Text(isVietnamese ? 'Nam' : 'Male'),
                          icon: const Icon(Icons.male),
                        ),
                        ButtonSegment<String>(
                          value: 'female',
                          label: Text(isVietnamese ? 'Nữ' : 'Female'),
                          icon: const Icon(Icons.female),
                        ),
                      ],
                      selected: <String>{_selectedGender},
                      onSelectionChanged: (Set<String> newSelection) {
                        setState(() {
                          _selectedGender = newSelection.first;
                        });
                        _calculateIBW();
                      },
                      style: ButtonStyle(
                        visualDensity: VisualDensity.compact,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Height Input
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    isVietnamese ? 'Chiều cao' : 'Height',
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppTheme.darkGrey,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  TextField(
                                    controller: _heightController,
                                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
                                    ],
                                    decoration: InputDecoration(
                                      hintText: isVietnamese ? 'Nhập chiều cao' : 'Enter height',
                                      border: const OutlineInputBorder(),
                                      contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 12, 
                                        vertical: 12,
                                      ),
                                    ),
                                    onChanged: (value) => _calculateIBW(),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    isVietnamese ? 'Đơn vị' : 'Unit',
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppTheme.darkGrey,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  DropdownButtonFormField<String>(
                                    initialValue: _heightUnit,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 12,
                                      ),
                                    ),
                                    isExpanded: true,
                                    items: const [
                                      DropdownMenuItem(value: 'cm', child: Text('cm')),
                                      DropdownMenuItem(value: 'ft', child: Text('ft')),
                                      DropdownMenuItem(value: 'in', child: Text('in')),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        _heightUnit = value!;
                                      });
                                      _calculateIBW();
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Results Section
            if (_devineIBW != null) ...[
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        isVietnamese ? 'Kết quả tính toán' : 'Calculation Results',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.darkGrey,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // IBW Results
                      _buildResultRow(
                        isVietnamese ? 'Devine (Khuyến nghị)' : 'Devine (Recommended)',
                        '${_devineIBW!.toStringAsFixed(1)} kg',
                        isRecommended: true,
                      ),
                      _buildResultRow(
                        'Hamwi',
                        '${_hamwiIBW!.toStringAsFixed(1)} kg',
                      ),
                      _buildResultRow(
                        'Robinson',
                        '${_robinsonIBW!.toStringAsFixed(1)} kg',
                      ),

                      const Divider(height: 24),

                      // Formula Selection for Ventilator
                      Text(
                        isVietnamese ? 'Công thức cho thở máy' : 'Formula for Ventilator',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppTheme.darkGrey,
                        ),
                      ),
                      const SizedBox(height: 8),
                      DropdownButtonFormField<String>(
                        initialValue: _selectedFormula,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 12,
                          ),
                        ),
                        isExpanded: true,
                        items: [
                          DropdownMenuItem(
                            value: 'devine',
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(isVietnamese ? 'Devine (Khuyến nghị)' : 'Devine (Recommended)'),
                            ),
                          ),
                          const DropdownMenuItem(
                            value: 'hamwi', 
                            child: Text('Hamwi')
                          ),
                          const DropdownMenuItem(
                            value: 'robinson', 
                            child: Text('Robinson')
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _selectedFormula = value!;
                          });
                          _calculateIBW();
                        },
                      ),
                      const SizedBox(height: 16),

                      // Ventilator Settings
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.green.shade50,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.green.shade200),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.air, color: Colors.green.shade600, size: 20),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    isVietnamese ? 'Thông số thở máy' : 'Ventilator Settings',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green.shade700,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              isVietnamese 
                                  ? 'Tidal Volume (6-8 ml/kg IBW):\n${_tidalVolumeMin!.toStringAsFixed(0)} - ${_tidalVolumeMax!.toStringAsFixed(0)} ml'
                                  : 'Tidal Volume (6-8 ml/kg IBW):\n${_tidalVolumeMin!.toStringAsFixed(0)} - ${_tidalVolumeMax!.toStringAsFixed(0)} ml',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.green.shade600,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Clinical Notes
              Card(
                color: Colors.amber.shade50,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.info_outline, color: Colors.amber.shade700, size: 20),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              isVietnamese ? 'Ghi chú lâm sàng' : 'Clinical Notes',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.amber.shade700,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        isVietnamese 
                            ? '• Công thức Devine được khuyến nghị cho thở máy\n'
                              '• Tidal volume: 6-8 ml/kg IBW (ARDS: 4-6 ml/kg)\n'
                              '• Áp dụng cho bệnh nhân ≥ 152.4 cm (5 feet)\n'
                              '• Cân nặng thực có thể khác do BMI'
                            : '• Devine formula is recommended for ventilator settings\n'
                              '• Tidal volume: 6-8 ml/kg IBW (ARDS: 4-6 ml/kg)\n'
                              '• Applies to patients ≥ 152.4 cm (5 feet)\n'
                              '• Actual weight may differ due to BMI',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.amber.shade700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // References
              Card(
                color: Colors.grey.shade50,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.library_books, color: Colors.grey.shade700, size: 20),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              isVietnamese ? 'Tài liệu tham khảo và trích dẫn y khoa' : 'References & Medical Citations',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade700,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      _buildReferenceItem(
                        '1.',
                        isVietnamese 
                            ? 'Devine BJ. Gentamicin therapy. Drug Intell Clin Pharm. 1974;8:650-655.'
                            : 'Devine BJ. Gentamicin therapy. Drug Intell Clin Pharm. 1974;8:650-655.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '2.',
                        isVietnamese 
                            ? 'Hamwi GJ. Therapy: Changing dietary concepts. In: Danowski TS, ed. Diabetes Mellitus: Diagnosis and Treatment. New York: American Diabetes Association; 1964:73-78.'
                            : 'Hamwi GJ. Therapy: Changing dietary concepts. In: Danowski TS, ed. Diabetes Mellitus: Diagnosis and Treatment. New York: American Diabetes Association; 1964:73-78.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '3.',
                        isVietnamese 
                            ? 'Robinson JD, et al. Determination of ideal body weight. Am J Hosp Pharm. 1983;40:1016-1019.'
                            : 'Robinson JD, et al. Determination of ideal body weight. Am J Hosp Pharm. 1983;40:1016-1019.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '4.',
                        isVietnamese 
                            ? 'ARDSNet. Ventilation with lower tidal volumes as compared with traditional tidal volumes for acute lung injury and ARDS. N Engl J Med. 2000;342:1301-1308.'
                            : 'ARDSNet. Ventilation with lower tidal volumes as compared with traditional tidal volumes for acute lung injury and ARDS. N Engl J Med. 2000;342:1301-1308.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '5.',
                        isVietnamese 
                            ? 'Nuckton TJ, et al. Pulmonary dead-space fraction as a risk factor for death in the acute respiratory distress syndrome. N Engl J Med. 2002;346:1281-1286.'
                            : 'Nuckton TJ, et al. Pulmonary dead-space fraction as a risk factor for death in the acute respiratory distress syndrome. N Engl J Med. 2002;346:1281-1286.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '6.',
                        isVietnamese 
                            ? 'Serpa Neto A, et al. Association between use of lung-protective ventilation with lower tidal volumes and clinical outcomes among patients without acute respiratory distress syndrome. JAMA. 2012;308:1651-1659.'
                            : 'Serpa Neto A, et al. Association between use of lung-protective ventilation with lower tidal volumes and clinical outcomes among patients without acute respiratory distress syndrome. JAMA. 2012;308:1651-1659.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '7.',
                        isVietnamese 
                            ? 'Amato MB, et al. Driving pressure and survival in the acute respiratory distress syndrome. N Engl J Med. 2015;372:747-755.'
                            : 'Amato MB, et al. Driving pressure and survival in the acute respiratory distress syndrome. N Engl J Med. 2015;372:747-755.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '8.',
                        isVietnamese 
                            ? 'Fan E, et al. An official American Thoracic Society/European Society of Intensive Care Medicine/Society of Critical Care Medicine clinical practice guideline: mechanical ventilation in adult patients with acute respiratory distress syndrome. Am J Respir Crit Care Med. 2017;195:1253-1263.'
                            : 'Fan E, et al. An official American Thoracic Society/European Society of Intensive Care Medicine/Society of Critical Care Medicine clinical practice guideline: mechanical ventilation in adult patients with acute respiratory distress syndrome. Am J Respir Crit Care Med. 2017;195:1253-1263.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '9.',
                        isVietnamese 
                            ? 'Slutsky AS, Ranieri VM. Ventilator-induced lung injury. N Engl J Med. 2013;369:2126-2136.'
                            : 'Slutsky AS, Ranieri VM. Ventilator-induced lung injury. N Engl J Med. 2013;369:2126-2136.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '10.',
                        isVietnamese 
                            ? 'Brower RG, et al. Higher versus lower positive end-expiratory pressures in patients with the acute respiratory distress syndrome. N Engl J Med. 2004;351:327-336.'
                            : 'Brower RG, et al. Higher versus lower positive end-expiratory pressures in patients with the acute respiratory distress syndrome. N Engl J Med. 2004;351:327-336.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '11.',
                        isVietnamese 
                            ? 'Gattinoni L, et al. Prone positioning in severe acute respiratory failure. JAMA. 2001;286:2095-2100.'
                            : 'Gattinoni L, et al. Prone positioning in severe acute respiratory failure. JAMA. 2001;286:2095-2100.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '12.',
                        isVietnamese 
                            ? 'Petrucci N, De Feo C. Lung protective ventilation strategy for the acute respiratory distress syndrome. Cochrane Database Syst Rev. 2013;2:CD003844.'
                            : 'Petrucci N, De Feo C. Lung protective ventilation strategy for the acute respiratory distress syndrome. Cochrane Database Syst Rev. 2013;2:CD003844.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '13.',
                        isVietnamese 
                            ? 'Bellani G, et al. Epidemiology, patterns of care, and mortality for patients with acute respiratory distress syndrome in intensive care units in 50 countries. JAMA. 2016;315:788-800.'
                            : 'Bellani G, et al. Epidemiology, patterns of care, and mortality for patients with acute respiratory distress syndrome in intensive care units in 50 countries. JAMA. 2016;315:788-800.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '14.',
                        isVietnamese 
                            ? 'Brochard L, et al. Mechanical ventilation to minimize progression of lung injury in acute respiratory failure. Am J Respir Crit Care Med. 2017;195:438-442.'
                            : 'Brochard L, et al. Mechanical ventilation to minimize progression of lung injury in acute respiratory failure. Am J Respir Crit Care Med. 2017;195:438-442.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '15.',
                        isVietnamese 
                            ? 'Papazian L, et al. Neuromuscular blockers in early acute respiratory distress syndrome. N Engl J Med. 2010;363:1107-1116.'
                            : 'Papazian L, et al. Neuromuscular blockers in early acute respiratory distress syndrome. N Engl J Med. 2010;363:1107-1116.',
                      ),
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Text(
                          isVietnamese 
                              ? '💡 Lưu ý: Các tính toán này chỉ mang tính chất tham khảo. Luôn tham khảo ý kiến bác sĩ và tuân theo hướng dẫn lâm sàng cụ thể của từng cơ sở y tế.'
                              : '💡 Note: These calculations are for reference only. Always consult with physicians and follow specific clinical guidelines of your institution.',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey.shade600,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildResultRow(String label, String value, {bool isRecommended = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isRecommended ? FontWeight.bold : FontWeight.normal,
              color: isRecommended ? AppTheme.primaryBlue : AppTheme.darkGrey,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: isRecommended ? AppTheme.primaryBlue : AppTheme.darkGrey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReferenceItem(String number, String reference) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
          child: Text(
            number,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            reference,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade600,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
