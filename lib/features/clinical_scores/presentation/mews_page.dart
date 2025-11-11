import 'package:flutter/material.dart';
import '../../../core/theme/app_theme.dart';
import '../../../l10n/app_localizations.dart';

class MEWSPage extends StatefulWidget {
  const MEWSPage({super.key});

  @override
  State<MEWSPage> createState() => _MEWSPageState();
}

class _MEWSPageState extends State<MEWSPage> {
  // MEWS component scores
  int systolicBPScore = 0;
  int heartRateScore = 0;
  int respiratoryRateScore = 0;
  int temperatureScore = 0;
  int avpuScore = 0;

  // Controllers for inputs
  final TextEditingController systolicBPController = TextEditingController();
  final TextEditingController heartRateController = TextEditingController();
  final TextEditingController respiratoryRateController = TextEditingController();
  final TextEditingController temperatureController = TextEditingController();

  @override
  void initState() {
    super.initState();
    
    // Add listeners to automatically calculate scores
    systolicBPController.addListener(_calculateSystolicBPScore);
    heartRateController.addListener(_calculateHeartRateScore);
    respiratoryRateController.addListener(_calculateRespiratoryRateScore);
    temperatureController.addListener(_calculateTemperatureScore);
  }

  void _calculateSystolicBPScore() {
    int sbp = int.tryParse(systolicBPController.text) ?? 0;
    setState(() {
      if (sbp == 0) {
        systolicBPScore = 0;
      } else if (sbp <= 70) {
        systolicBPScore = 3;
      } else if (sbp <= 80) {
        systolicBPScore = 2;
      } else if (sbp <= 100) {
        systolicBPScore = 1;
      } else if (sbp <= 199) {
        systolicBPScore = 0;
      } else {
        systolicBPScore = 2;
      }
    });
  }

  void _calculateHeartRateScore() {
    int hr = int.tryParse(heartRateController.text) ?? 0;
    setState(() {
      if (hr == 0) {
        heartRateScore = 0;
      } else if (hr < 40) {
        heartRateScore = 2;
      } else if (hr <= 50) {
        heartRateScore = 1;
      } else if (hr <= 100) {
        heartRateScore = 0;
      } else if (hr <= 110) {
        heartRateScore = 1;
      } else if (hr <= 129) {
        heartRateScore = 2;
      } else {
        heartRateScore = 3;
      }
    });
  }

  void _calculateRespiratoryRateScore() {
    int rr = int.tryParse(respiratoryRateController.text) ?? 0;
    setState(() {
      if (rr == 0) {
        respiratoryRateScore = 0;
      } else if (rr < 9) {
        respiratoryRateScore = 2;
      } else if (rr <= 14) {
        respiratoryRateScore = 0;
      } else if (rr <= 20) {
        respiratoryRateScore = 1;
      } else if (rr <= 29) {
        respiratoryRateScore = 2;
      } else {
        respiratoryRateScore = 3;
      }
    });
  }

  void _calculateTemperatureScore() {
    double temp = double.tryParse(temperatureController.text) ?? 0;
    setState(() {
      if (temp == 0) {
        temperatureScore = 0;
      } else if (temp < 35.0) {
        temperatureScore = 2;
      } else if (temp <= 38.4) {
        temperatureScore = 0;
      } else {
        temperatureScore = 2;
      }
    });
  }

  int get totalScore => systolicBPScore + heartRateScore + respiratoryRateScore + 
                       temperatureScore + avpuScore;

  String getInterpretation(AppLocalizations localizations) {
    if (totalScore == 0) {
      return localizations.mews_interpretation_enter_data;
    }
    if (totalScore <= 2) {
      return localizations.mews_interpretation_stable;
    }
    if (totalScore <= 3) {
      return localizations.mews_interpretation_increased;
    }
    if (totalScore <= 5) {
      return localizations.mews_interpretation_warning;
    }
    return localizations.mews_interpretation_critical;
  }

  Color get scoreColor {
    if (totalScore == 0) {
      return Colors.grey;
    }
    if (totalScore <= 2) {
      return Colors.green;
    }
    if (totalScore <= 3) {
      return Colors.yellow.shade700;
    }
    if (totalScore <= 5) {
      return Colors.orange;
    }
    return Colors.red;
  }

  String getActionRequired(AppLocalizations localizations) {
    if (totalScore <= 2) {
      return localizations.mews_action_routine;
    }
    if (totalScore <= 3) {
      return localizations.mews_action_increased;
    }
    if (totalScore <= 5) {
      return localizations.mews_action_urgent;
    }
    return localizations.mews_action_critical;
  }

  @override
  void dispose() {
    systolicBPController.removeListener(_calculateSystolicBPScore);
    heartRateController.removeListener(_calculateHeartRateScore);
    respiratoryRateController.removeListener(_calculateRespiratoryRateScore);
    temperatureController.removeListener(_calculateTemperatureScore);
    
    systolicBPController.dispose();
    heartRateController.dispose();
    respiratoryRateController.dispose();
    temperatureController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.mews_title),
        backgroundColor: AppTheme.primaryBlue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _resetAll,
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          // Sticky Score Header
          SliverPersistentHeader(
            pinned: true,
            delegate: _MEWSScoreHeaderDelegate(
              minHeight: 45,
              maxHeight: 75,
              scoreColor: scoreColor,
              totalScore: totalScore,
              systolicBPScore: systolicBPScore,
              heartRateScore: heartRateScore,
              respiratoryRateScore: respiratoryRateScore,
              temperatureScore: temperatureScore,
              avpuScore: avpuScore,
              interpretation: getInterpretation(localizations),
              actionRequired: getActionRequired(localizations),
              localizations: localizations,
            ),
          ),

          // Compact Disclaimer Banner
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.red.shade200),
              ),
              child: Row(
                children: [
                  Icon(Icons.warning, color: Colors.red.shade700, size: 16),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      Localizations.localeOf(context).languageCode == 'vi'
                          ? 'CÔNG CỤ GIÁO DỤC: Chỉ dùng để học tập, không thay thế đánh giá lâm sàng'
                          : 'EDUCATIONAL TOOL: For learning only, not for clinical decisions',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.red.shade700,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Parameters as Sliver List
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: 8),
              const SizedBox(height: 8),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: _buildVitalSignSection(
                  localizations.mews_systolic_bp,
                  systolicBPController,
                  Icons.favorite,
                  Colors.red.shade600,
                  systolicBPScore,
                  localizations,
                ),
              ),
              const SizedBox(height: 12),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: _buildVitalSignSection(
                  localizations.mews_heart_rate,
                  heartRateController,
                  Icons.monitor_heart,
                  Colors.blue.shade600,
                  heartRateScore,
                  localizations,
                ),
              ),
              const SizedBox(height: 12),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: _buildVitalSignSection(
                  localizations.mews_respiratory_rate,
                  respiratoryRateController,
                  Icons.air,
                  Colors.teal.shade600,
                  respiratoryRateScore,
                  localizations,
                ),
              ),
              const SizedBox(height: 12),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: _buildVitalSignSection(
                  localizations.mews_temperature,
                  temperatureController,
                  Icons.device_thermostat,
                  Colors.orange.shade600,
                  temperatureScore,
                  localizations,
                ),
              ),
              const SizedBox(height: 12),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: _buildAVPUSection(localizations),
              ),
              
              // Medical Citation
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: _buildCitationWidget(localizations),
              ),
              
              const SizedBox(height: 20),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _buildVitalSignSection(
    String title,
    TextEditingController controller,
    IconData icon,
    Color color,
    int score,
    AppLocalizations localizations,
  ) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withValues(alpha: 0.3)),
        color: color.withValues(alpha: 0.05),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: color, size: 20),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: score == 0 ? Colors.green : 
                         score <= 2 ? Colors.orange : Colors.red,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  localizations.mews_score_label(score),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 40,
            child: TextField(
              controller: controller,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                isDense: true,
                hintText: localizations.mews_enter_value,
                hintStyle: const TextStyle(fontSize: 14),
              ),
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAVPUSection(AppLocalizations localizations) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.purple.shade300),
        color: Colors.purple.withValues(alpha: 0.05),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.psychology, color: Colors.purple.shade600, size: 20),
              const SizedBox(width: 6),
              Text(
                localizations.mews_consciousness_level,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple.shade600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Column(
            children: [
              _buildCompactRadioTile(localizations.mews_avpu_alert, 0),
              _buildCompactRadioTile(localizations.mews_avpu_voice, 1),
              _buildCompactRadioTile(localizations.mews_avpu_pain, 2),
              _buildCompactRadioTile(localizations.mews_avpu_unresponsive, 3),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCompactRadioTile(String title, int value) {
    final isSelected = avpuScore == value;
    return InkWell(
      onTap: () => setState(() => avpuScore = value),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
        child: Row(
          children: [
            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected 
                    ? Theme.of(context).primaryColor 
                    : Colors.grey,
                  width: 2,
                ),
                color: isSelected 
                  ? Theme.of(context).primaryColor 
                  : Colors.transparent,
              ),
              child: isSelected
                ? const Icon(
                    Icons.circle,
                    size: 10,
                    color: Colors.white,
                  )
                : null,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _resetAll() {
    setState(() {
      systolicBPScore = heartRateScore = respiratoryRateScore = 0;
      temperatureScore = avpuScore = 0;
    });
    
    systolicBPController.clear();
    heartRateController.clear();
    respiratoryRateController.clear();
    temperatureController.clear();
  }

  Widget _buildCitationWidget(AppLocalizations localizations) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.blue.shade200),
      ),
      child: ExpansionTile(
        title: Row(
          children: [
            Icon(Icons.article, color: Colors.blue.shade700, size: 14),
            const SizedBox(width: 4),
            Text(
              localizations.mews_references_title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade700,
              ),
            ),
          ],
        ),
        childrenPadding: const EdgeInsets.only(top: 4, bottom: 8),
        children: [
          Text(
            'Subbe CP, et al. Validation of a modified Early Warning Score in medical admissions. QJM. 2001;94(10):521-6.\n\nGoldhill DR, et al. A physiologically-based early warning score for ward patients: the association between score and outcome. Anaesthesia. 2005;60(6):547-53.',
            style: TextStyle(
              fontSize: 10,
              color: Colors.blue.shade600,
            ),
          ),
        ],
      ),
    );
  }
}

// Sticky Header Delegate for Score Display
class _MEWSScoreHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Color scoreColor;
  final int totalScore;
  final int systolicBPScore;
  final int heartRateScore;
  final int respiratoryRateScore;
  final int temperatureScore;
  final int avpuScore;
  final String interpretation;
  final String actionRequired;
  final AppLocalizations localizations;

  _MEWSScoreHeaderDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.scoreColor,
    required this.totalScore,
    required this.systolicBPScore,
    required this.heartRateScore,
    required this.respiratoryRateScore,
    required this.temperatureScore,
    required this.avpuScore,
    required this.interpretation,
    required this.actionRequired,
    required this.localizations,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    final progress = (shrinkOffset / maxExtent).clamp(0.0, 1.0);
    final isVietnamese = Localizations.localeOf(context).languageCode == 'vi';
    
    return Material(
      elevation: progress * 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              color: scoreColor.withValues(alpha: 0.2 + (progress * 0.3)),
              width: 1 + progress,
            ),
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10, 
              vertical: 4 + (2 * (1 - progress)),
            ),
            decoration: BoxDecoration(
              color: scoreColor.withValues(alpha: 0.05 + (progress * 0.05)),
            ),
            child: progress > 0.7
                ? _buildCompactHeader(isVietnamese)
                : _buildFullHeader(context, isVietnamese, progress),
          ),
        ),
      ),
    );
  }

  Widget _buildCompactHeader(bool isVietnamese) {
    return Container(
      width: double.infinity,
      height: minHeight,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Score section
          Text(
            '$totalScore MEWS',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: scoreColor,
            ),
          ),
          // Interpretation
          Flexible(
            child: Text(
              interpretation,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: scoreColor,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFullHeader(BuildContext context, bool isVietnamese, double progress) {
    final opacity = (1 - progress).clamp(0.0, 1.0);
    
    return Opacity(
      opacity: opacity,
      child: Container(
        width: double.infinity,
        height: maxHeight * (1 - progress) + minHeight * progress,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Score section
            Text(
              '$totalScore MEWS',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: scoreColor,
              ),
            ),
            // Interpretation section
            Flexible(
              child: Text(
                interpretation,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: scoreColor,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
