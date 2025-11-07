import 'package:flutter/material.dart';
import '../../../shared/widgets/medical_disclaimer_widget.dart';

class FluidBalancePage extends StatefulWidget {
  const FluidBalancePage({super.key});

  @override
  State<FluidBalancePage> createState() => _FluidBalancePageState();
}

class _FluidBalancePageState extends State<FluidBalancePage> {
  // Input controllers
  final List<TextEditingController> _intakeControllers = [];
  final List<TextEditingController> _outputControllers = [];
  final List<String> _intakeLabels = [];
  final List<String> _outputLabels = [];

  // Insensible loss calculation controllers
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _temperatureController = TextEditingController();
  bool _isOnVentilator = false;

  double _totalIntake = 0.0;
  double _totalOutput = 0.0;
  double _fluidBalance = 0.0;
  double _calculatedInsensibleLoss = 0.0;

  @override
  void initState() {
    super.initState();
    _weightController.addListener(_calculateInsensibleLoss);
    _temperatureController.addListener(_calculateInsensibleLoss);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_intakeControllers.isEmpty && _outputControllers.isEmpty) {
      _initializeDefaultItems();
    }
  }

  void _initializeDefaultItems() {
    // Default intake items
    final defaultIntakeItems = Localizations.localeOf(context).languageCode == 'vi'
        ? [
            'Dịch truyền TM',
            'Uống qua miệng', 
            'Dinh dưỡng ống',
            'Chế phẩm máu',
            'Thuốc',
          ]
        : [
            'IV Fluids',
            'Oral Intake',
            'Tube Feeding', 
            'Blood Products',
            'Medications',
          ];

    // Default output items
    final defaultOutputItems = Localizations.localeOf(context).languageCode == 'vi'
        ? [
            'Nước tiểu',
            'Dẫn lưu',
            'Nôn/Thông dạ dày',
            'Tiêu chảy',
            'Mất nước không cảm nhận',
          ]
        : [
            'Urine Output',
            'Drainage',
            'Vomit/NG',
            'Diarrhea', 
            'Insensible Loss',
          ];

    for (final item in defaultIntakeItems) {
      _addIntakeItem(item);
    }

    for (final item in defaultOutputItems) {
      _addOutputItem(item);
    }
  }

  void _addIntakeItem(String label) {
    final controller = TextEditingController();
    controller.addListener(_calculateBalance);
    setState(() {
      _intakeControllers.add(controller);
      _intakeLabels.add(label);
    });
  }

  void _addOutputItem(String label) {
    final controller = TextEditingController();
    controller.addListener(_calculateBalance);
    setState(() {
      _outputControllers.add(controller);
      _outputLabels.add(label);
    });
  }

  void _calculateInsensibleLoss() {
    final weight = double.tryParse(_weightController.text) ?? 0;
    final temperature = double.tryParse(_temperatureController.text) ?? 37.0;
    
    if (weight > 0) {
      // Base insensible loss: 15 ml/kg/day for adults
      double insensibleLoss = weight * 15;
      
      // Adjust for fever: +10% per degree above 37°C
      if (temperature > 37.0) {
        double feverAdjustment = (temperature - 37.0) * 0.10;
        insensibleLoss *= (1 + feverAdjustment);
      }
      
      // Reduce by 50% if on mechanical ventilation (humidified air)
      if (_isOnVentilator) {
        insensibleLoss *= 0.5;
      }
      
      setState(() {
        _calculatedInsensibleLoss = insensibleLoss;
      });
      
      // Auto-update insensible loss field if it exists
      int insensibleIndex = _outputLabels.indexWhere((label) => 
        label.toLowerCase().contains('insensible') || 
        label.toLowerCase().contains('mất nước không'));
      
      if (insensibleIndex >= 0) {
        _outputControllers[insensibleIndex].text = insensibleLoss.toStringAsFixed(0);
      }
    } else {
      setState(() {
        _calculatedInsensibleLoss = 0.0;
      });
    }
  }

  void _removeIntakeItem(int index) {
    setState(() {
      _intakeControllers[index].dispose();
      _intakeControllers.removeAt(index);
      _intakeLabels.removeAt(index);
    });
    _calculateBalance();
  }

  void _removeOutputItem(int index) {
    setState(() {
      _outputControllers[index].dispose();
      _outputControllers.removeAt(index);
      _outputLabels.removeAt(index);
    });
    _calculateBalance();
  }

  void _calculateBalance() {
    double intake = 0.0;
    double output = 0.0;

    for (final controller in _intakeControllers) {
      intake += double.tryParse(controller.text) ?? 0.0;
    }

    for (final controller in _outputControllers) {
      output += double.tryParse(controller.text) ?? 0.0;
    }

    setState(() {
      _totalIntake = intake;
      _totalOutput = output;
      _fluidBalance = intake - output;
    });
  }

  Color get balanceColor {
    if (_fluidBalance > 1000) {
      return Colors.red.shade700; // Positive balance > 1L
    } else if (_fluidBalance > 500) {
      return Colors.orange.shade600; // Positive balance > 500ml
    } else if (_fluidBalance >= -500) {
      return Colors.green.shade600; // Balanced
    } else if (_fluidBalance >= -1000) {
      return Colors.orange.shade600; // Negative balance > 500ml
    } else {
      return Colors.red.shade700; // Negative balance > 1L
    }
  }

  String get balanceInterpretation {
    if (_fluidBalance > 1000) {
      return Localizations.localeOf(context).languageCode == 'vi'
          ? 'Dương tính cao (>1L) - Cần theo dõi chặt chẽ'
          : 'High Positive (>1L) - Close monitoring required';
    } else if (_fluidBalance > 500) {
      return Localizations.localeOf(context).languageCode == 'vi'
          ? 'Dương tính vừa (>500ml) - Theo dõi'
          : 'Moderate Positive (>500ml) - Monitor';
    } else if (_fluidBalance >= -500) {
      return Localizations.localeOf(context).languageCode == 'vi'
          ? 'Cân bằng tốt (±500ml)'
          : 'Good Balance (±500ml)';
    } else if (_fluidBalance >= -1000) {
      return Localizations.localeOf(context).languageCode == 'vi'
          ? 'Âm tính vừa (>500ml) - Theo dõi'
          : 'Moderate Negative (>500ml) - Monitor';
    } else {
      return Localizations.localeOf(context).languageCode == 'vi'
          ? 'Âm tính cao (>1L) - Cần can thiệp'
          : 'High Negative (>1L) - Intervention needed';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Sticky AppBar
          SliverAppBar(
            title: Text(
              Localizations.localeOf(context).languageCode == 'vi'
                  ? 'Công Cụ Học Tập: Cân Bằng Dịch'
                  : 'Educational Tool: Fluid Balance'
            ),
            backgroundColor: Colors.blue.shade700,
            foregroundColor: Colors.white,
            floating: true,
            pinned: true,
            snap: false,
            elevation: 4,
          ),
          
          // Sticky Result Header
          SliverPersistentHeader(
            pinned: true,
            delegate: _StickyHeaderDelegate(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      offset: const Offset(0, 2),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Container(
                  height: 80,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: balanceColor),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Localizations.localeOf(context).languageCode == 'vi'
                            ? 'Cân Bằng Dịch'
                            : 'Fluid Balance',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: balanceColor,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${_fluidBalance >= 0 ? '+' : ''}${_fluidBalance.toStringAsFixed(0)} ml',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: balanceColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Content
          SliverToBoxAdapter(
            child: Column(
              children: [
                // Medical Disclaimer
                const MedicalDisclaimerWidget(),
                
                // Educational Context
                EducationalContextWidget(
                  title: Localizations.localeOf(context).languageCode == 'vi'
                      ? 'Công cụ học tập theo dõi cân bằng dịch'
                      : 'Educational fluid balance monitoring tool',
                  description: Localizations.localeOf(context).languageCode == 'vi'
                      ? 'Công cụ giáo dục cho sinh viên y khoa và bác sĩ thực tập để học cách theo dõi cân bằng dịch xuất nhập. Bao gồm công thức tính mất nước không cảm nhận và hướng dẫn đánh giá. Chỉ dùng để học tập, không thay thế theo dõi lâm sàng thực tế.'
                      : 'Educational tool for medical students and residents to learn fluid balance monitoring. Includes insensible loss calculation formulas and assessment guidelines. For learning purposes only, not for actual clinical monitoring.',
                ),
                
                // Medical Disclaimer (compact version for emphasis)
                const MedicalDisclaimerWidget(isCompact: true),
                
                // Fluid Balance Form
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade50,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.orange.shade200),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.info, color: Colors.orange.shade700, size: 20),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          Localizations.localeOf(context).languageCode == 'vi'
                              ? 'DÀNH CHO CÁN BỘ Y TẾ: Công cụ hỗ trợ theo dõi cân bằng dịch. Luôn kết hợp đánh giá lâm sàng.'
                              : 'FOR HEALTHCARE PROFESSIONALS: Tool for fluid balance monitoring. Always combine with clinical assessment.',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.orange.shade700,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Summary Card
                if (_totalIntake > 0 || _totalOutput > 0) ...[
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: balanceColor.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: balanceColor.withValues(alpha: 0.3)),
                    ),
                    child: Column(
                      children: [
                        Text(
                          balanceInterpretation,
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: balanceColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    Localizations.localeOf(context).languageCode == 'vi'
                                        ? 'Tổng Vào'
                                        : 'Total Intake',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.green,
                                    ),
                                  ),
                                  Text(
                                    '${_totalIntake.toStringAsFixed(0)} ml',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1,
                              height: 40,
                              color: Colors.grey.shade300,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    Localizations.localeOf(context).languageCode == 'vi'
                                        ? 'Tổng Ra'
                                        : 'Total Output',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Text(
                                    '${_totalOutput.toStringAsFixed(0)} ml',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],

                // Insensible Loss Calculator
                _buildInsensibleLossCalculator(),

                // Intake Section
                _buildSection(
                  title: Localizations.localeOf(context).languageCode == 'vi'
                      ? 'Dịch Vào (ml)'
                      : 'Fluid Intake (ml)',
                  color: Colors.green,
                  controllers: _intakeControllers,
                  labels: _intakeLabels,
                  onAdd: () => _showAddItemDialog(true),
                  onRemove: _removeIntakeItem,
                ),

                // Output Section
                _buildSection(
                  title: Localizations.localeOf(context).languageCode == 'vi'
                      ? 'Dịch Ra (ml)'
                      : 'Fluid Output (ml)',
                  color: Colors.red,
                  controllers: _outputControllers,
                  labels: _outputLabels,
                  onAdd: () => _showAddItemDialog(false),
                  onRemove: _removeOutputItem,
                ),

                // Clinical Guidelines
                Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blue.shade50,
                    border: Border.all(color: Colors.blue.shade200),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.info, color: Colors.blue.shade600),
                          const SizedBox(width: 8),
                          Text(
                            Localizations.localeOf(context).languageCode == 'vi'
                                ? 'Hướng Dẫn Lâm Sàng'
                                : 'Clinical Guidelines',
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.blue.shade600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Text(
                        Localizations.localeOf(context).languageCode == 'vi'
                            ? '• Cân bằng bình thường: ±500ml/24h\n• Theo dõi nếu: >±500ml\n• Can thiệp nếu: >±1000ml\n• Đánh giá kèm: dấu hiệu lâm sàng, cân nặng, điện giải'
                            : '• Normal balance: ±500ml/24h\n• Monitor if: >±500ml\n• Intervene if: >±1000ml\n• Assess with: clinical signs, weight, electrolytes',
                        style: const TextStyle(height: 1.4),
                      ),
                    ],
                  ),
                ),

                // References
                Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade50,
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.library_books, color: Colors.grey.shade700, size: 20),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              Localizations.localeOf(context).languageCode == 'vi'
                                  ? 'Tài liệu tham khảo và trích dẫn y khoa'
                                  : 'References & Medical Citations',
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
                        Localizations.localeOf(context).languageCode == 'vi'
                            ? 'Vincent JL, et al. Fluid management in critically ill patients: ESICM consensus and clinical practice guideline. Intensive Care Med. 2019;45:913-926.'
                            : 'Vincent JL, et al. Fluid management in critically ill patients: ESICM consensus and clinical practice guideline. Intensive Care Med. 2019;45:913-926.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '2.',
                        Localizations.localeOf(context).languageCode == 'vi'
                            ? 'Holliday MA, Segar WE. The maintenance need for water in parenteral fluid therapy. Pediatrics. 1957;19:823-832.'
                            : 'Holliday MA, Segar WE. The maintenance need for water in parenteral fluid therapy. Pediatrics. 1957;19:823-832.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '3.',
                        Localizations.localeOf(context).languageCode == 'vi'
                            ? 'Malbrain ML, et al. Fluid overload, de-resuscitation, and outcomes in critically ill or injured patients. Anesthesiology. 2014;120:266-273.'
                            : 'Malbrain ML, et al. Fluid overload, de-resuscitation, and outcomes in critically ill or injured patients. Anesthesiology. 2014;120:266-273.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '4.',
                        Localizations.localeOf(context).languageCode == 'vi'
                            ? 'Boyd JH, et al. Fluid resuscitation in septic shock: a positive fluid balance and elevated central venous pressure are associated with increased mortality. Crit Care Med. 2011;39:259-265.'
                            : 'Boyd JH, et al. Fluid resuscitation in septic shock: a positive fluid balance and elevated central venous pressure are associated with increased mortality. Crit Care Med. 2011;39:259-265.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '5.',
                        Localizations.localeOf(context).languageCode == 'vi'
                            ? 'Bellomo R, et al. A comparison of albumin and saline for fluid resuscitation in the intensive care unit. N Engl J Med. 2004;350:2247-2256.'
                            : 'Bellomo R, et al. A comparison of albumin and saline for fluid resuscitation in the intensive care unit. N Engl J Med. 2004;350:2247-2256.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '6.',
                        Localizations.localeOf(context).languageCode == 'vi'
                            ? 'Silversides JA, et al. Fluid balance, intradialytic hypotension, and outcomes in critically ill patients undergoing renal replacement therapy. Crit Care. 2014;18:624.'
                            : 'Silversides JA, et al. Fluid balance, intradialytic hypotension, and outcomes in critically ill patients undergoing renal replacement therapy. Crit Care. 2014;18:624.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '7.',
                        Localizations.localeOf(context).languageCode == 'vi'
                            ? 'National Heart, Lung, and Blood Institute ARDS Clinical Trials Network. Comparison of two fluid-management strategies in acute lung injury. N Engl J Med. 2006;354:2564-2575.'
                            : 'National Heart, Lung, and Blood Institute ARDS Clinical Trials Network. Comparison of two fluid-management strategies in acute lung injury. N Engl J Med. 2006;354:2564-2575.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '8.',
                        Localizations.localeOf(context).languageCode == 'vi'
                            ? 'Acheampong A, Vincent JL. A positive fluid balance is an independent prognostic factor in patients with sepsis. Crit Care. 2015;19:251.'
                            : 'Acheampong A, Vincent JL. A positive fluid balance is an independent prognostic factor in patients with sepsis. Crit Care. 2015;19:251.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '9.',
                        Localizations.localeOf(context).languageCode == 'vi'
                            ? 'Rosner MH, Okusa MD. Acute kidney injury associated with cardiac surgery. Clin J Am Soc Nephrol. 2006;1:19-32.'
                            : 'Rosner MH, Okusa MD. Acute kidney injury associated with cardiac surgery. Clin J Am Soc Nephrol. 2006;1:19-32.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '10.',
                        Localizations.localeOf(context).languageCode == 'vi'
                            ? 'Vaara ST, et al. Fluid overload is associated with an increased risk for 90-day mortality in critically ill patients with renal replacement therapy. Crit Care Med. 2012;40:1580-1589.'
                            : 'Vaara ST, et al. Fluid overload is associated with an increased risk for 90-day mortality in critically ill patients with renal replacement therapy. Crit Care Med. 2012;40:1580-1589.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '11.',
                        Localizations.localeOf(context).languageCode == 'vi'
                            ? 'Payen D, et al. A positive fluid balance is associated with a worse outcome in patients with acute renal failure. Crit Care. 2008;12:R74.'
                            : 'Payen D, et al. A positive fluid balance is associated with a worse outcome in patients with acute renal failure. Crit Care. 2008;12:R74.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '12.',
                        Localizations.localeOf(context).languageCode == 'vi'
                            ? 'Finfer S, et al. A comparison of albumin and saline for fluid resuscitation in the intensive care unit. N Engl J Med. 2004;350:2247-2256.'
                            : 'Finfer S, et al. A comparison of albumin and saline for fluid resuscitation in the intensive care unit. N Engl J Med. 2004;350:2247-2256.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '13.',
                        Localizations.localeOf(context).languageCode == 'vi'
                            ? 'Myburgh JA, et al. Hydroxyethyl starch or saline for fluid resuscitation in intensive care. N Engl J Med. 2012;367:1901-1911.'
                            : 'Myburgh JA, et al. Hydroxyethyl starch or saline for fluid resuscitation in intensive care. N Engl J Med. 2012;367:1901-1911.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '14.',
                        Localizations.localeOf(context).languageCode == 'vi'
                            ? 'Caironi P, et al. Albumin replacement in patients with severe sepsis or septic shock. N Engl J Med. 2014;370:1412-1421.'
                            : 'Caironi P, et al. Albumin replacement in patients with severe sepsis or septic shock. N Engl J Med. 2014;370:1412-1421.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '15.',
                        Localizations.localeOf(context).languageCode == 'vi'
                            ? 'Prowle JR, et al. Fluid balance and acute kidney injury. Nat Rev Nephrol. 2010;6:107-115.'
                            : 'Prowle JR, et al. Fluid balance and acute kidney injury. Nat Rev Nephrol. 2010;6:107-115.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '16.',
                        Localizations.localeOf(context).languageCode == 'vi'
                            ? 'Bouchard J, et al. Fluid accumulation, survival and recovery of kidney function in critically ill patients with acute kidney injury. Kidney Int. 2009;76:422-427.'
                            : 'Bouchard J, et al. Fluid accumulation, survival and recovery of kidney function in critically ill patients with acute kidney injury. Kidney Int. 2009;76:422-427.',
                      ),
                      const SizedBox(height: 8),
                      _buildReferenceItem(
                        '17.',
                        Localizations.localeOf(context).languageCode == 'vi'
                            ? 'Kelm DJ, et al. Fluid overload in patients with severe sepsis and septic shock treated with early goal-directed therapy is associated with increased acute need for fluid-related medical interventions and hospital death. Shock. 2015;43:68-73.'
                            : 'Kelm DJ, et al. Fluid overload in patients with severe sepsis and septic shock treated with early goal-directed therapy is associated with increased acute need for fluid-related medical interventions and hospital death. Shock. 2015;43:68-73.',
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
                          Localizations.localeOf(context).languageCode == 'vi'
                              ? '💡 Lưu ý: Công cụ này chỉ mang tính chất tham khảo và hỗ trợ theo dõi. Luôn kết hợp với đánh giá lâm sàng toàn diện và tuân theo hướng dẫn của cơ sở y tế.'
                              : '💡 Note: This tool is for reference and monitoring support only. Always combine with comprehensive clinical assessment and follow institutional guidelines.',
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

                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInsensibleLossCalculator() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.purple.shade300),
        color: Colors.purple.shade50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.calculate, color: Colors.purple.shade700),
              const SizedBox(width: 8),
              Text(
                Localizations.localeOf(context).languageCode == 'vi'
                    ? 'Tính Mất Nước Không Cảm Nhận'
                    : 'Insensible Loss Calculator',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.purple.shade700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          
          // Weight and Temperature inputs
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _weightController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: Localizations.localeOf(context).languageCode == 'vi'
                        ? 'Cân nặng'
                        : 'Weight',
                    suffixText: 'kg',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: TextField(
                  controller: _temperatureController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: Localizations.localeOf(context).languageCode == 'vi'
                        ? 'Thân nhiệt'
                        : 'Temperature',
                    suffixText: '°C',
                    hintText: '37.0',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 12),
          
          // Ventilator checkbox
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: CheckboxListTile(
              title: Text(
                Localizations.localeOf(context).languageCode == 'vi'
                    ? 'Thở máy (ẩm độ cao)'
                    : 'Mechanical Ventilation (Humidified)',
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                Localizations.localeOf(context).languageCode == 'vi'
                    ? 'Giảm 50% mất nước qua đường hô hấp'
                    : 'Reduces respiratory water loss by 50%',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade600,
                ),
              ),
              value: _isOnVentilator,
              onChanged: (value) {
                setState(() {
                  _isOnVentilator = value!;
                });
                _calculateInsensibleLoss();
              },
              contentPadding: EdgeInsets.zero,
            ),
          ),
          
          if (_calculatedInsensibleLoss > 0) ...[
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.purple.shade100,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.purple.shade300),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Localizations.localeOf(context).languageCode == 'vi'
                        ? 'Mất nước tính toán:'
                        : 'Calculated Loss:',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.purple.shade700,
                    ),
                  ),
                  Text(
                    '${_calculatedInsensibleLoss.toStringAsFixed(0)} ml/24h',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.purple.shade700,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              Localizations.localeOf(context).languageCode == 'vi'
                  ? 'Công thức: 15ml/kg/ngày + 10%/độ sốt ${_isOnVentilator ? '(giảm 50% do thở máy)' : ''}'
                  : 'Formula: 15ml/kg/day + 10%/degree fever ${_isOnVentilator ? '(50% reduction for ventilator)' : ''}',
              style: TextStyle(
                fontSize: 11,
                color: Colors.grey.shade600,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required MaterialColor color,
    required List<TextEditingController> controllers,
    required List<String> labels,
    required VoidCallback onAdd,
    required Function(int) onRemove,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.shade300),
        color: color.shade50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: color.shade700,
                ),
              ),
              IconButton(
                onPressed: onAdd,
                icon: Icon(Icons.add, color: color.shade700),
                style: IconButton.styleFrom(
                  backgroundColor: color.shade100,
                  padding: const EdgeInsets.all(8),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: controllers.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        labels[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        controller: controllers[index],
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: '0',
                          suffixText: 'ml',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                        ),
                      ),
                    ),
                    if (controllers.length > 1) ...[
                      const SizedBox(width: 8),
                      IconButton(
                        onPressed: () => onRemove(index),
                        icon: const Icon(Icons.remove_circle, color: Colors.red),
                        iconSize: 20,
                      ),
                    ],
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  void _showAddItemDialog(bool isIntake) {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          isIntake
              ? (Localizations.localeOf(context).languageCode == 'vi'
                  ? 'Thêm Mục Dịch Vào'
                  : 'Add Intake Item')
              : (Localizations.localeOf(context).languageCode == 'vi'
                  ? 'Thêm Mục Dịch Ra'
                  : 'Add Output Item'),
        ),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: Localizations.localeOf(context).languageCode == 'vi'
                ? 'Tên mục...'
                : 'Item name...',
            border: const OutlineInputBorder(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              Localizations.localeOf(context).languageCode == 'vi'
                  ? 'Hủy'
                  : 'Cancel',
            ),
          ),
          TextButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                if (isIntake) {
                  _addIntakeItem(controller.text);
                } else {
                  _addOutputItem(controller.text);
                }
                Navigator.of(context).pop();
              }
            },
            child: Text(
              Localizations.localeOf(context).languageCode == 'vi'
                  ? 'Thêm'
                  : 'Add',
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

  @override
  void dispose() {
    for (final controller in _intakeControllers) {
      controller.dispose();
    }
    for (final controller in _outputControllers) {
      controller.dispose();
    }
    _weightController.dispose();
    _temperatureController.dispose();
    super.dispose();
  }
}

class _StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _StickyHeaderDelegate({required this.child});

  @override
  double get minExtent => 92.0;

  @override
  double get maxExtent => 92.0;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(_StickyHeaderDelegate oldDelegate) {
    return child != oldDelegate.child;
  }
}
