import 'package:flutter/material.dart';
import '../../../core/theme/app_theme.dart';
import '../../../l10n/app_localizations.dart';

class TimiUaNstemiPage extends StatefulWidget {
  const TimiUaNstemiPage({super.key});

  @override
  State<TimiUaNstemiPage> createState() => _TimiUaNstemiPageState();
}

class _TimiUaNstemiPageState extends State<TimiUaNstemiPage> {
  final TextEditingController _ageController = TextEditingController();

  bool _cad = false; // ≥3 CAD risk factors
  bool _knownCad = false; // Known CAD (stenosis ≥50%)
  bool _aspirinUse = false; // Aspirin use in prior 7 days
  bool _severeAngina = false; // ≥2 anginal events in 24h
  bool _stChanges = false; // ST changes ≥0.5mm
  bool _elevatedMarkers = false; // Elevated cardiac markers

  int _totalScore = 0;

  @override
  void initState() {
    super.initState();
    _ageController.addListener(_calculateScore);
  }

  void _calculateScore() {
    int score = 0;
    
    // Age ≥65
    final age = int.tryParse(_ageController.text) ?? 0;
    if (age >= 65) {
      score += 1;
    }
    
    // ≥3 CAD risk factors
    if (_cad) {
      score += 1;
    }
    
    // Known CAD (stenosis ≥50%)
    if (_knownCad) {
      score += 1;
    }
    
    // Aspirin use in prior 7 days
    if (_aspirinUse) {
      score += 1;
    }
    
    // ≥2 anginal events in 24h
    if (_severeAngina) {
      score += 1;
    }
    
    // ST changes ≥0.5mm
    if (_stChanges) {
      score += 1;
    }
    
    // Elevated cardiac markers
    if (_elevatedMarkers) {
      score += 1;
    }
    
    setState(() {
      _totalScore = score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Sticky AppBar
          SliverAppBar(
            title: Text(AppLocalizations.of(context)!.timi_ua_nstemi_title),
            backgroundColor: Colors.orange.shade700,
            foregroundColor: Colors.white,
            pinned: true,
            floating: false,
            snap: false,
            elevation: 4,
          ),
          
          // Sticky Score Header
          SliverPersistentHeader(
            pinned: true,
            delegate: _StickyScoreHeaderDelegate(
              minHeight: 60,
              maxHeight: 60,
              child: Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: riskColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: riskColor.withValues(alpha: 0.3)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '$_totalScore/7 - $riskLevel',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: riskColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Medical Disclaimer Banner
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.red.shade300),
              ),
              child: Row(
                children: [
                  Icon(Icons.warning, color: Colors.red.shade600, size: 24),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Localizations.localeOf(context).languageCode == 'vi' 
                            ? 'DÀNH CHO CÁN BỘ Y TẾ'
                            : 'FOR HEALTHCARE PROFESSIONALS ONLY',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.red.shade700,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          Localizations.localeOf(context).languageCode == 'vi'
                            ? 'Công cụ đánh giá nguy cơ hội chứng tim mạch. Cần kết hợp với đánh giá lâm sàng và xét nghiệm.'
                            : 'Cardiovascular risk assessment tool. Requires clinical evaluation and laboratory tests.',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.red.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Content
          SliverToBoxAdapter(
            child: Column(
              children: [
            // Score Display
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: riskColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: riskColor.withValues(alpha: 0.3)),
              ),
              child: Column(
                children: [
                  Text(
                    Localizations.localeOf(context).languageCode == 'vi' 
                      ? 'Thang điểm TIMI - UA/NSTEMI'
                      : 'TIMI Score - UA/NSTEMI',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: riskColor,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '$_totalScore/7',
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: riskColor,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    riskLevel,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppTheme.darkGrey,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildRiskInfo(),
                ],
              ),
            ),

            // Input Section
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.1),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.timi_ua_nstemi_patient_parameters,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade700,
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  TextFormField(
                    controller: _ageController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)!.timi_ua_nstemi_age_label,
                      suffixText: AppLocalizations.of(context)!.timi_ua_nstemi_age_unit,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Risk Factors
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.1),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.timi_ua_nstemi_risk_factors_title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade700,
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  CheckboxListTile(
                    title: Text(AppLocalizations.of(context)!.timi_ua_nstemi_cad_risk_factors),
                    subtitle: Text(AppLocalizations.of(context)!.timi_ua_nstemi_cad_risk_factors_subtitle),
                    value: _cad,
                    onChanged: (value) {
                      setState(() {
                        _cad = value!;
                      });
                      _calculateScore();
                    },
                    contentPadding: EdgeInsets.zero,
                  ),
                  
                  CheckboxListTile(
                    title: Text(AppLocalizations.of(context)!.timi_ua_nstemi_known_cad),
                    subtitle: Text(AppLocalizations.of(context)!.timi_ua_nstemi_known_cad_subtitle),
                    value: _knownCad,
                    onChanged: (value) {
                      setState(() {
                        _knownCad = value!;
                      });
                      _calculateScore();
                    },
                    contentPadding: EdgeInsets.zero,
                  ),
                  
                  CheckboxListTile(
                    title: Text(AppLocalizations.of(context)!.timi_ua_nstemi_aspirin_use),
                    subtitle: Text(AppLocalizations.of(context)!.timi_ua_nstemi_aspirin_use_subtitle),
                    value: _aspirinUse,
                    onChanged: (value) {
                      setState(() {
                        _aspirinUse = value!;
                      });
                      _calculateScore();
                    },
                    contentPadding: EdgeInsets.zero,
                  ),
                  
                  CheckboxListTile(
                    title: Text(AppLocalizations.of(context)!.timi_ua_nstemi_severe_angina),
                    subtitle: Text(AppLocalizations.of(context)!.timi_ua_nstemi_severe_angina_subtitle),
                    value: _severeAngina,
                    onChanged: (value) {
                      setState(() {
                        _severeAngina = value!;
                      });
                      _calculateScore();
                    },
                    contentPadding: EdgeInsets.zero,
                  ),
                  
                  CheckboxListTile(
                    title: Text(AppLocalizations.of(context)!.timi_ua_nstemi_st_changes),
                    subtitle: Text(AppLocalizations.of(context)!.timi_ua_nstemi_st_changes_subtitle),
                    value: _stChanges,
                    onChanged: (value) {
                      setState(() {
                        _stChanges = value!;
                      });
                      _calculateScore();
                    },
                    contentPadding: EdgeInsets.zero,
                  ),
                  
                  CheckboxListTile(
                    title: Text(AppLocalizations.of(context)!.timi_ua_nstemi_elevated_markers),
                    subtitle: Text(AppLocalizations.of(context)!.timi_ua_nstemi_elevated_markers_subtitle),
                    value: _elevatedMarkers,
                    onChanged: (value) {
                      setState(() {
                        _elevatedMarkers = value!;
                      });
                      _calculateScore();
                    },
                    contentPadding: EdgeInsets.zero,
                  ),
                ],
              ),
            ),

            // Active Risk Factors
            _buildActiveFactors(),

            // Risk Stratification
            _buildRiskStratification(),

            // Clinical Information
            _buildClinicalInfo(),

            // Medical Citation
            Container(
              margin: const EdgeInsets.all(16),
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
                        AppLocalizations.of(context)!.timi_ua_nstemi_references,
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
                    'Antman EM, Cohen M, Bernink PJ, et al. The TIMI risk score for unstable angina/non-ST elevation MI: A method for prognostication and therapeutic decision making. JAMA. 2000;284(7):835-42.',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.blue.shade600,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    ],
  ),
);
  }

  Color get riskColor {
    if (_totalScore <= 2) {
      return Colors.green;
    } else if (_totalScore <= 4) {
      return Colors.orange;
    }
    return Colors.red;
  }

  String get riskLevel {
    final isVietnamese = Localizations.localeOf(context).languageCode == 'vi';
    if (_totalScore <= 2) {
      return isVietnamese ? 'Nguy cơ thấp' : 'Low Risk';
    } else if (_totalScore <= 4) {
      return isVietnamese ? 'Nguy cơ trung bình' : 'Moderate Risk';
    }
    return isVietnamese ? 'Nguy cơ cao' : 'High Risk';
  }

  Widget _buildRiskInfo() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    AppLocalizations.of(context)!.timi_ua_nstemi_14_day_events,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    eventRisk14Days,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: riskColor,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    AppLocalizations.of(context)!.timi_ua_nstemi_mortality,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mortalityRisk,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: riskColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: riskColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: riskColor.withValues(alpha: 0.2)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.timi_ua_nstemi_treatment_strategy,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: riskColor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  managementStrategy,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  AppLocalizations.of(context)!.timi_ua_nstemi_recommendation,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: riskColor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  recommendations,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String get eventRisk14Days {
    switch (_totalScore) {
      case 0:
        return '4.7%';
      case 1:
        return '8.3%';
      case 2:
        return '13.2%';
      case 3:
        return '19.9%';
      case 4:
        return '26.2%';
      case 5:
        return '40.9%';
      case 6:
        return '40.9%';
      case 7:
        return '40.9%';
      default:
        return '4.7%';
    }
  }

  String get mortalityRisk {
    switch (_totalScore) {
      case 0:
        return '0.4%';
      case 1:
        return '1.0%';
      case 2:
        return '1.9%';
      case 3:
        return '4.9%';
      case 4:
        return '9.5%';
      case 5:
        return '15.6%';
      case 6:
        return '19.9%';
      case 7:
        return '19.9%';
      default:
        return '0.4%';
    }
  }

  String get recommendations {
    if (_totalScore <= 2) {
      return AppLocalizations.of(context)!.timi_ua_nstemi_recommendation_low;
    }
    if (_totalScore <= 4) {
      return AppLocalizations.of(context)!.timi_ua_nstemi_recommendation_moderate;
    }
    return AppLocalizations.of(context)!.timi_ua_nstemi_recommendation_high;
  }

  String get managementStrategy {
    if (_totalScore <= 2) {
      return AppLocalizations.of(context)!.timi_ua_nstemi_strategy_conservative;
    }
    if (_totalScore <= 4) {
      return AppLocalizations.of(context)!.timi_ua_nstemi_strategy_selective;
    }
    return AppLocalizations.of(context)!.timi_ua_nstemi_strategy_early;
  }

  List<Map<String, dynamic>> get riskFactors {
    final isVietnamese = Localizations.localeOf(context).languageCode == 'vi';
    return [
      {
        'factor': isVietnamese ? 'Tuổi ≥65' : 'Age ≥65',
        'description': isVietnamese ? 'Yếu tố nguy cơ tuổi tác' : 'Age risk factor',
        'active': (int.tryParse(_ageController.text) ?? 0) >= 65,
      },
      {
        'factor': isVietnamese ? '≥3 yếu tố nguy cơ mạch vành' : '≥3 CAD risk factors',
        'description': isVietnamese ? 'Tiền sử gia đình, THA, ĐTĐ, hút thuốc, cholesterol cao' : 'Family history, HTN, DM, smoking, high cholesterol',
        'active': _cad,
      },
      {
        'factor': isVietnamese ? 'Bệnh mạch vành đã biết (hẹp ≥50%)' : 'Known CAD (stenosis ≥50%)',
        'description': isVietnamese ? 'Can thiệp trước đó hoặc bằng chứng hình ảnh' : 'Prior intervention or imaging evidence',
        'active': _knownCad,
      },
      {
        'factor': isVietnamese ? 'Dùng aspirin trong 7 ngày qua' : 'Aspirin use in prior 7 days',
        'description': isVietnamese ? 'Sử dụng aspirin trước nhập viện' : 'Aspirin use before admission',
        'active': _aspirinUse,
      },
      {
        'factor': isVietnamese ? '≥2 cơn đau thắt ngực nặng/24h' : '≥2 severe anginal events/24h',
        'description': isVietnamese ? 'Đau thắt ngực tiến triển hoặc tái phát' : 'Progressive or recurrent angina',
        'active': _severeAngina,
      },
      {
        'factor': isVietnamese ? 'Thay đổi ST ≥0.5mm' : 'ST changes ≥0.5mm',
        'description': isVietnamese ? 'Thay đổi đoạn ST trên điện tim' : 'ST segment changes on ECG',
        'active': _stChanges,
      },
      {
        'factor': isVietnamese ? 'Marker tim tăng' : 'Elevated cardiac markers',
        'description': isVietnamese ? 'Troponin hoặc CK-MB tăng' : 'Elevated troponin or CK-MB',
        'active': _elevatedMarkers,
      },
    ];
  }

  Widget _buildActiveFactors() {
    List<Map<String, dynamic>> activeFactors = riskFactors.where((factor) => factor['active']).toList();
    
    if (activeFactors.isEmpty) {
      return const SizedBox.shrink();
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.orange.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Localizations.localeOf(context).languageCode == 'vi' 
              ? 'Yếu tố nguy cơ hiện tại'
              : 'Active Risk Factors',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.orange.shade700,
            ),
          ),
          const SizedBox(height: 12),
          ...activeFactors.map((factor) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: riskColor,
                  size: 16,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    factor['factor'],
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }

  Widget _buildRiskStratification() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Localizations.localeOf(context).languageCode == 'vi' 
                ? 'Phân tầng nguy cơ' 
                : 'Risk Stratification',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade700,
            ),
          ),
          const SizedBox(height: 16),
          
          Table(
            border: TableBorder.all(color: Colors.grey.shade300),
            children: [
              TableRow(
                decoration: BoxDecoration(color: Colors.grey.shade100),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      Localizations.localeOf(context).languageCode == 'vi' 
                          ? 'Điểm' 
                          : 'Score', 
                      style: const TextStyle(fontWeight: FontWeight.bold)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      AppLocalizations.of(context)!.timi_ua_nstemi_14_day_events,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      AppLocalizations.of(context)!.timi_ua_nstemi_mortality,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              ...List.generate(8, (index) => TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text('$index'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(_getEventRisk(index)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(_getMortalityRisk(index)),
                  ),
                ],
              )),
            ],
          ),
        ],
      ),
    );
  }

  String _getEventRisk(int score) {
    switch (score) {
      case 0: return '4.7%';
      case 1: return '8.3%';
      case 2: return '13.2%';
      case 3: return '19.9%';
      case 4: return '26.2%';
      case 5: return '40.9%';
      case 6: return '40.9%';
      case 7: return '40.9%';
      default: return '4.7%';
    }
  }

  String _getMortalityRisk(int score) {
    switch (score) {
      case 0: return '0.4%';
      case 1: return '1.0%';
      case 2: return '1.9%';
      case 3: return '4.9%';
      case 4: return '9.5%';
      case 5: return '15.6%';
      case 6: return '19.9%';
      case 7: return '19.9%';
      default: return '0.4%';
    }
  }

  Widget _buildClinicalInfo() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.indigo.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.indigo.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.info, color: Colors.indigo.shade600),
              const SizedBox(width: 8),
              Text(
                AppLocalizations.of(context)!.timi_ua_nstemi_clinical_info,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.indigo.shade600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            Localizations.localeOf(context).languageCode == 'vi'
                ? 'Thang điểm TIMI cho UA/NSTEMI đánh giá nguy cơ biến cố tim mạch trong 14 ngày\n\n'
                  'Các biến cố bao gồm:\n'
                  '• Tử vong do tim mạch\n'
                  '• Nhồi máu cơ tim mới\n'
                  '• Cần can thiệp mạch vành khẩn cấp\n\n'
                  'Ứng dụng lâm sàng:\n'
                  '• Phân tầng nguy cơ và lựa chọn chiến lược\n'
                  '• Quyết định thời điểm can thiệp\n'
                  '• Tư vấn tiên lượng\n'
                  '• Đánh giá xuất viện sớm\n\n'
                  'Lưu ý quan trọng:\n'
                  '• Áp dụng cho UA/NSTEMI, không phải STEMI\n'
                  '• Kết hợp với troponin để tăng độ chính xác\n'
                  '• Can thiệp sớm có lợi cho bệnh nhân nguy cơ cao'
                : 'TIMI Score for UA/NSTEMI assesses 14-day cardiovascular event risk\n\n'
                  'Events include:\n'
                  '• Cardiovascular death\n'
                  '• New myocardial infarction\n'
                  '• Need for urgent coronary intervention\n\n'
                  'Clinical applications:\n'
                  '• Risk stratification and strategy selection\n'
                  '• Intervention timing decisions\n'
                  '• Prognosis counseling\n'
                  '• Early discharge assessment\n\n'
                  'Important notes:\n'
                  '• Applies to UA/NSTEMI, not STEMI\n'
                  '• Combine with troponin for better accuracy\n'
                  '• Early intervention benefits high-risk patients',
            style: const TextStyle(height: 1.4),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _ageController.dispose();
    super.dispose();
  }
}

// Sticky Header Delegate for Score Display
class _StickyScoreHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _StickyScoreHeaderDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(_StickyScoreHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
           minHeight != oldDelegate.minHeight ||
           child != oldDelegate.child;
  }
}
