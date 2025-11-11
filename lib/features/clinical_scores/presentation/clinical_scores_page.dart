import 'package:flutter/material.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/search_helper.dart';
import '../../../l10n/app_localizations.dart';
import '../../../shared/services/bookmark_service.dart';
import '../../../shared/models/bookmark_item.dart';
import 'glasgow_coma_scale_page.dart';
import 'apache_ii_page.dart';
import 'sofa_score_page.dart';
import 'ranson_page.dart';
import 'grace_score_page.dart';
import 'crusade_bleeding_risk_page.dart';
import 'qsofa_score_page.dart';
import 'timi_stemi_page.dart';
import 'timi_ua_nstemi_page.dart';
import 'saps_ii_page.dart';
import 'mews_page.dart';
import 'pews_score_page.dart';
import 'has_bled_score_page.dart';
import 'improve_bleeding_risk_page.dart';
import 'cha2ds2_vasc_page.dart';
import 'wells_dvt_score_page.dart';
import 'padua_prediction_score_page.dart';
import 'abcd2_page.dart';
import 'nihss_page.dart';
import 'race_scale_page.dart';
import 'aspect_score_page.dart';
import 'modified_sgarbossa_criteria_page.dart';
import 'child_pugh_page.dart';
import 'meld_score_page.dart';
import 'curb65_page.dart';
import 'psi_page.dart';
import 'asa_physical_status_page.dart';
import 'revised_cardiac_risk_index_page.dart';
import 'surgical_apgar_score_page.dart';
import 'preoperative_mortality_prediction_page.dart';
import 'dapt_score_page.dart';
import 'creatinine_clearance_page.dart';
import 'mdrd_gfr_page.dart';
import 'cam_icu_page.dart';
import 'rass_score_page.dart';
import 'fluid_balance_page.dart';
import 'ideal_body_weight_page.dart';

class ClinicalScoresPage extends StatefulWidget {
  const ClinicalScoresPage({super.key});

  @override
  State<ClinicalScoresPage> createState() => _ClinicalScoresPageState();
}

class _ClinicalScoresPageState extends State<ClinicalScoresPage> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  late BookmarkService _bookmarkService;

  @override
  void initState() {
    super.initState();
    _bookmarkService = BookmarkService.instance;
    _initializeBookmarks();
  }

  Future<void> _initializeBookmarks() async {
    await _bookmarkService.initialize();
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<Map<String, dynamic>> get _scoresList => [
    // Core ICU Scores
    {
      'id': 'glasgow_coma_scale',
      'title': 'Glasgow Coma Scale (GCS)',
      'subtitle': 'Eye, Verbal, Motor Response Assessment',
      'description': AppLocalizations.of(context)!.gcs_list_description,
      'searchKeywords': 'glasgow coma scale gcs eye verbal motor response consciousness ý thức mắt nói vận động hôn mê',
      'icon': Icons.visibility,
      'color': Colors.blue.shade600,
      'page': const GlasgowComaScalePage(),
    },
    {
      'id': 'apache_ii',
      'title': 'APACHE II',
      'subtitle': 'Acute Physiology and Chronic Health Evaluation',
      'description': AppLocalizations.of(context)!.apache_list_description,
      'searchKeywords': 'apache icu mortality prediction dự đoán tử vong hồi sức cấp cứu intensive care',
      'icon': Icons.monitor_heart,
      'color': Colors.red.shade600,
      'page': const ApacheIIPage(),
    },
    {
      'id': 'sofa_score',
      'title': 'SOFA Score',
      'subtitle': 'Sequential Organ Failure Assessment',
      'description': AppLocalizations.of(context)!.sofa_list_description,
      'searchKeywords': 'sofa sequential organ failure assessment suy đa cơ quan',
      'icon': Icons.favorite,
      'color': Colors.orange.shade600,
      'page': const SOFAScorePage(),
    },
    {
      'id': 'saps_ii',
      'title': 'SAPS II',
      'subtitle': 'Simplified Acute Physiology Score',
      'description': AppLocalizations.of(context)!.saps_list_description,
      'searchKeywords': 'saps simplified acute physiology score icu mortality dự đoán tử vong',
      'icon': Icons.analytics,
      'color': Colors.purple.shade600,
      'page': const SAPSII(),
    },
    {
      'id': 'qsofa_score',
      'title': 'qSOFA Score',
      'subtitle': 'Quick Sequential Organ Failure Assessment',
      'description': AppLocalizations.of(context)!.qsofa_list_description,
      'icon': Icons.speed,
      'color': Colors.teal.shade600,
      'page': const QsofaScorePage(),
    },
    {
      'id': 'cam_icu',
      'title': 'CAM-ICU',
      'subtitle': 'Confusion Assessment Method for ICU',
      'description': AppLocalizations.of(context)!.cam_icu_list_description,
      'icon': Icons.psychology,
      'color': Colors.purple.shade700,
      'page': const CamIcuPage(),
    },
    {
      'id': 'rass',
      'title': 'RASS',
      'subtitle': 'Richmond Agitation-Sedation Scale',
      'description': AppLocalizations.of(context)!.rass_list_description,
      'icon': Icons.tune,
      'color': Colors.indigo.shade700,
      'page': const RassScorePage(),
    },
    
    // Early Warning Systems
    {
      'id': 'mews',
      'title': 'MEWS',
      'subtitle': 'Modified Early Warning Score',
      'description': AppLocalizations.of(context)!.mews_list_description,
      'searchKeywords': 'mews modified early warning score cảnh báo sớm vital signs dấu hiệu sinh tồn',
      'icon': Icons.warning_amber,
      'color': Colors.amber.shade600,
      'page': const MEWSPage(),
    },
    {
      'id': 'pews',
      'title': 'PEWS',
      'subtitle': 'Pediatric Early Warning Score',
      'description': AppLocalizations.of(context)!.pews_list_description,
      'icon': Icons.child_care,
      'color': Colors.pink.shade600,
      'page': const PewsScorePage(),
    },
    
    // Cardiovascular Scores
    {
      'id': 'grace_score',
      'title': 'GRACE Score',
      'subtitle': 'Global Registry of Acute Coronary Events',
      'description': AppLocalizations.of(context)!.grace_list_description,
      'searchKeywords': 'grace score acute coronary events acs stemi nstemi tim mạch đau ngực',
      'icon': Icons.monitor_heart_outlined,
      'color': Colors.red.shade700,
      'page': const GraceScorePage(),
    },
    {
      'id': 'timi_stemi',
      'title': 'TIMI STEMI',
      'subtitle': 'TIMI Risk Score for STEMI',
      'description': AppLocalizations.of(context)!.timi_stemi_list_description,
      'searchKeywords': 'timi stemi st elevation myocardial infarction nhồi máu cơ tim',
      'icon': Icons.favorite_border,
      'color': Colors.red.shade500,
      'page': const TimiStemiPage(),
    },
    {
      'id': 'timi_ua_nstemi',
      'title': 'TIMI UA/NSTEMI',
      'subtitle': 'TIMI Risk Score for UA/NSTEMI',
      'description': AppLocalizations.of(context)!.timi_ua_nstemi_list_description,
      'icon': Icons.monitor_heart,
      'color': Colors.red.shade400,
      'page': const TimiUaNstemiPage(),
    },
    
    // Bleeding Risk Scores
    {
      'id': 'crusade_score',
      'title': 'CRUSADE Score',
      'subtitle': 'Bleeding Risk in ACS',
      'description': AppLocalizations.of(context)!.crusade_list_description,
      'icon': Icons.bloodtype,
      'color': Colors.red.shade800,
      'page': const CrusadeBleedingRiskPage(),
    },
    {
      'id': 'has_bled_score',
      'title': 'HAS-BLED Score',
      'subtitle': 'Bleeding Risk Assessment',
      'description': AppLocalizations.of(context)!.has_bled_list_description,
      'icon': Icons.water_drop,
      'color': Colors.red.shade600,
      'page': const HasBledScorePage(),
    },
    {
      'id': 'improve_bleeding_risk',
      'title': 'IMPROVE Bleeding Risk',
      'subtitle': 'Bleeding Risk in Medical Patients',
      'description': AppLocalizations.of(context)!.improve_list_description,
      'icon': Icons.healing,
      'color': Colors.red.shade300,
      'page': const ImproveBleedingRiskPage(),
    },
    
    // Stroke & Thrombosis Scores
    {
      'id': 'cha2ds2_vasc',
      'title': 'CHA2DS2-VASc',
      'subtitle': 'Stroke Risk in Atrial Fibrillation',
      'description': AppLocalizations.of(context)!.cha2ds2_vasc_list_description,
      'icon': Icons.graphic_eq,
      'color': Colors.indigo.shade600,
      'page': const Cha2ds2VascPage(),
    },
    {
      'id': 'wells_dvt_score',
      'title': 'Wells DVT Score',
      'subtitle': 'Deep Vein Thrombosis Probability',
      'description': AppLocalizations.of(context)!.wells_dvt_list_description,
      'icon': Icons.waves,
      'color': Colors.blue.shade700,
      'page': const WellsDvtScorePage(),
    },
    {
      'id': 'padua_prediction_score',
      'title': 'Padua Prediction Score',
      'subtitle': 'VTE Risk in Medical Patients',
      'description': AppLocalizations.of(context)!.padua_list_description,
      'icon': Icons.timeline,
      'color': Colors.blue.shade800,
      'page': const PaduaPredictionScorePage(),
    },
    {
      'id': 'abcd2_score',
      'title': 'ABCD2 Score',
      'subtitle': 'Stroke Risk after TIA',
      'description': AppLocalizations.of(context)!.abcd2_list_description,
      'icon': Icons.psychology,
      'color': Colors.green.shade600,
      'page': const Abcd2Page(),
    },
    {
      'id': 'nihss',
      'title': 'NIHSS',
      'subtitle': 'National Institutes of Health Stroke Scale',
      'description': AppLocalizations.of(context)!.nihss_list_description,
      'icon': Icons.psychology_alt,
      'color': Colors.green.shade700,
      'page': const NihssPage(),
    },
    {
      'id': 'race_scale',
      'title': 'RACE Scale',
      'subtitle': 'Rapid Arterial Occlusion Evaluation',
      'description': AppLocalizations.of(context)!.race_list_description,
      'icon': Icons.directions_run,
      'color': Colors.green.shade800,
      'page': const RaceScalePage(),
    },
    {
      'id': 'aspect_score',
      'title': 'ASPECT Score',
      'subtitle': 'Alberta Stroke Program Early CT Score',
      'description': AppLocalizations.of(context)!.aspect_list_description,
      'icon': Icons.medical_information,
      'color': Colors.green.shade500,
      'page': const AspectScorePage(),
    },
    
    // Cardiology Diagnostics
    {
      'id': 'modified_sgarbossa_criteria',
      'title': 'Modified Sgarbossa Criteria',
      'subtitle': 'STEMI in LBBB',
      'description': AppLocalizations.of(context)!.sgarbossa_list_description,
      'icon': Icons.timeline,
      'color': Colors.orange.shade700,
      'page': const ModifiedSgarbossaCriteriaPage(),
    },
    
    // Gastrointestinal & Liver Scores
    {
      'id': 'ranson_criteria',
      'title': 'Ranson Criteria',
      'subtitle': 'Acute Pancreatitis Severity',
      'description': AppLocalizations.of(context)!.ranson_list_description,
      'icon': Icons.medical_information,
      'color': Colors.brown.shade600,
      'page': const RansonPage(),
    },
    {
      'id': 'child_pugh_score',
      'title': 'Child-Pugh Score',
      'subtitle': 'Liver Disease Severity',
      'description': AppLocalizations.of(context)!.child_pugh_list_description,
      'icon': Icons.local_hospital,
      'color': Colors.brown.shade700,
      'page': const ChildPughPage(),
    },
    {
      'id': 'meld_score',
      'title': 'MELD Score',
      'subtitle': 'Model for End-Stage Liver Disease',
      'description': AppLocalizations.of(context)!.meld_list_description,
      'icon': Icons.biotech,
      'color': Colors.brown.shade800,
      'page': const MeldScorePage(),
    },
    
    // Respiratory Scores
    {
      'id': 'curb_65',
      'title': 'CURB-65',
      'subtitle': 'Community-Acquired Pneumonia Severity',
      'description': AppLocalizations.of(context)!.curb65_list_description,
      'icon': Icons.air,
      'color': Colors.cyan.shade600,
      'page': const Curb65Page(),
    },
    {
      'id': 'psi',
      'title': 'PSI',
      'subtitle': 'Pneumonia Severity Index',
      'description': AppLocalizations.of(context)!.psi_list_description,
      'icon': Icons.coronavirus,
      'color': Colors.cyan.shade700,
      'page': const PsiPage(),
    },
    
    // Perioperative Scores
    {
      'id': 'asa_physical_status',
      'title': 'ASA Physical Status',
      'subtitle': 'American Society of Anesthesiologists',
      'description': AppLocalizations.of(context)!.asa_list_description,
      'icon': Icons.person_outline,
      'color': Colors.grey.shade600,
      'page': const AsaPhysicalStatusPage(),
    },
    {
      'id': 'revised_cardiac_risk_index',
      'title': 'Revised Cardiac Risk Index',
      'subtitle': 'Perioperative Cardiac Risk',
      'description': AppLocalizations.of(context)!.cardiac_risk_list_description,
      'icon': Icons.favorite_outline,
      'color': Colors.purple.shade700,
      'page': const RevisedCardiacRiskIndexPage(),
    },
    {
      'id': 'surgical_apgar_score',
      'title': 'Surgical Apgar Score',
      'subtitle': 'Postoperative Outcome Prediction',
      'description': AppLocalizations.of(context)!.apgar_list_description,
      'icon': Icons.content_cut,
      'color': Colors.purple.shade800,
      'page': const SurgicalApgarScorePage(),
    },
    {
      'id': 'preoperative_mortality_prediction',
      'title': 'Preoperative Mortality Prediction',
      'subtitle': 'Surgical Risk Assessment',
      'description': AppLocalizations.of(context)!.preop_mortality_list_description,
      'icon': Icons.calculate,
      'color': Colors.deepPurple.shade600,
      'page': const PreoperativeMortalityPredictionPage(),
    },
    
    // Medication & Treatment Scores
    {
      'id': 'dapt_score',
      'title': 'DAPT Score',
      'subtitle': 'Dual Antiplatelet Therapy',
      'description': AppLocalizations.of(context)!.dapt_list_description,
      'icon': Icons.medication,
      'color': Colors.teal.shade700,
      'page': const DaptScorePage(),
    },
    
    // Renal Function Scores
    {
      'id': 'creatinine_clearance',
      'title': 'Creatinine Clearance',
      'subtitle': 'Kidney Function Assessment',
      'description': AppLocalizations.of(context)!.creatinine_clearance_list_description,
      'icon': Icons.opacity,
      'color': Colors.lightBlue.shade600,
      'page': const CreatinineClearancePage(),
    },
    {
      'id': 'mdrd_gfr',
      'title': 'MDRD GFR',
      'subtitle': 'Modification of Diet in Renal Disease',
      'description': AppLocalizations.of(context)!.mdrd_list_description,
      'icon': Icons.water,
      'color': Colors.lightBlue.shade700,
      'page': const MdrdGfrPage(),
    },
    
    // Fluid Management
    {
      'id': 'fluid_balance',
      'title': Localizations.localeOf(context).languageCode == 'vi' 
          ? 'Tính Cân Bằng Dịch' 
          : 'Fluid Balance Calculator',
      'subtitle': Localizations.localeOf(context).languageCode == 'vi'
          ? 'Theo dõi cân bằng dịch xuất nhập'
          : 'Intake and Output Balance Monitoring',
      'description': Localizations.localeOf(context).languageCode == 'vi'
          ? 'Công cụ tính toán và theo dõi cân bằng dịch hàng ngày cho bệnh nhân'
          : 'Tool for calculating and monitoring daily fluid balance in patients',
      'searchKeywords': Localizations.localeOf(context).languageCode == 'vi'
          ? 'tính cân bằng dịch xuất nhập fluid balance dịch truyền nước tiểu diuresis'
          : 'fluid balance intake output urine diuresis water insensible loss',
      'icon': Icons.water_drop,
      'color': Colors.blue.shade600,
      'page': const FluidBalancePage(),
    },

    {
      'id': 'ideal_body_weight',
      'title': Localizations.localeOf(context).languageCode == 'vi' 
          ? 'Cân Nặng Lý Tưởng' 
          : 'Ideal Body Weight',
      'subtitle': Localizations.localeOf(context).languageCode == 'vi'
          ? 'Tính IBW và thông số thở máy'
          : 'IBW and Ventilator Settings',
      'description': Localizations.localeOf(context).languageCode == 'vi'
          ? 'Tính cân nặng lý tưởng và tidal volume cho thở máy dựa trên chiều cao và giới tính'
          : 'Calculate ideal body weight and tidal volume for ventilator based on height and gender',
      'searchKeywords': Localizations.localeOf(context).languageCode == 'vi'
          ? 'cân nặng lý tưởng ideal body weight ibw thở máy ventilator tidal volume devine hamwi robinson'
          : 'ideal body weight ibw ventilator tidal volume devine hamwi robinson mechanical ventilation',
      'icon': Icons.monitor_weight,
      'color': Colors.purple.shade600,
      'page': const IdealBodyWeightPage(),
    },
  ];

  List<Map<String, dynamic>> get _filteredScores {
    if (_searchQuery.isEmpty) {
      return _scoresList;
    }
    
    // Use enhanced search helper
    final searchResults = SearchHelper.searchClinicalScores(_scoresList, _searchQuery);
    return searchResults.map((result) => result.item).toList();
  }

  Future<void> _toggleBookmark(Map<String, dynamic> scoreData) async {
    final scoreId = scoreData['id'] as String? ?? 
        (scoreData['title'] as String).toLowerCase().replaceAll(' ', '_');
    
    final bookmarkItem = BookmarkItem(
      id: scoreId,
      title: scoreData['title'] as String,
      subtitle: scoreData['subtitle'] as String,
      description: scoreData['description'] as String,
      iconName: scoreData['icon'].toString(),
      colorValue: (scoreData['color'] as Color).toARGB32().toString(),
      pageType: scoreData['page'].runtimeType.toString(),
    );

    await _bookmarkService.toggleBookmark(bookmarkItem);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.clinical_scores_title),
        backgroundColor: AppTheme.primaryBlue,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              localizations.clinical_scores_subtitle,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
                color: AppTheme.darkGrey,
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _searchController,
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
              decoration: InputDecoration(
                hintText: localizations.search_scores_hint,
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchQuery.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          setState(() {
                            _searchController.clear();
                            _searchQuery = '';
                          });
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.grey.shade50,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: _filteredScores.isEmpty && _searchQuery.isNotEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search_off,
                            size: 64,
                            color: Colors.grey.shade400,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Không tìm thấy thang điểm nào',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Thử tìm kiếm với từ khóa khác',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      itemCount: _filteredScores.length,
                      itemBuilder: (context, index) {
                        final score = _filteredScores[index];
                        return Column(
                          children: [
                            _buildScoreCard(context, score),
                            if (index < _filteredScores.length - 1)
                              const SizedBox(height: 12),
                          ],
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScoreCard(
    BuildContext context,
    Map<String, dynamic> scoreData,
  ) {
    final title = scoreData['title'] as String;
    final subtitle = scoreData['subtitle'] as String;
    final description = scoreData['description'] as String;
    final icon = scoreData['icon'] as IconData;
    final color = scoreData['color'] as Color;
    final scoreId = scoreData['id'] as String? ?? title.toLowerCase().replaceAll(' ', '_');
    
    void onTap() => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => scoreData['page']),
    );
    final isBookmarked = _bookmarkService.isBookmarked(scoreId);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade200),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.1),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                color: color,
                size: 30,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.darkGrey,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ),
            // Bookmark button
            IconButton(
              onPressed: () => _toggleBookmark(scoreData),
              icon: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: Icon(
                  isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                  key: ValueKey(isBookmarked),
                  color: isBookmarked ? Colors.amber.shade600 : Colors.grey.shade400,
                  size: 24,
                ),
              ),
              tooltip: isBookmarked 
                ? (Localizations.localeOf(context).languageCode == 'vi' 
                   ? 'Bỏ đánh dấu' 
                   : 'Remove bookmark')
                : (Localizations.localeOf(context).languageCode == 'vi' 
                   ? 'Đánh dấu' 
                   : 'Add bookmark'),
            ),
            const SizedBox(width: 8),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey.shade400,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
