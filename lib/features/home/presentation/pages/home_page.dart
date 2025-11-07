import 'package:flutter/material.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../main.dart';
import '../../../../shared/widgets/medical_disclaimer_widget.dart';
import '../../../clinical_scores/presentation/clinical_scores_page.dart';
import '../../../clinical_scores/presentation/bookmarks_page.dart';
import '../../../unit_converter/presentation/pages/unit_converter_page.dart';
import '../../../lab_analysis/presentation/lab_analysis_home_page.dart';
import '../../../notifications/presentation/notifications_page.dart';
import '../../../settings/presentation/language_selection_page.dart';
import '../../../references/presentation/medical_references_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List<Widget> get _pages => [
    _buildHomeContent(),
    const ClinicalScoresPage(),
    const UnitConverterPage(),
    const LabAnalysisHomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/icons/app_icon.png',
          height: 36,
          width: 36,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BookmarksPage(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.library_books),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MedicalReferencesPage(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.language),
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LanguageSelectionPage(),
                ),
              );
              // Restart app if language changed
              if (result == true && mounted) {
                // Force rebuild the entire app with new locale
                DrIcuApp.restartApp();
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationsPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: Builder(
        builder: (context) {
          final isVietnamese = Localizations.localeOf(context).languageCode == 'vi';
          return BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.orangeAccent,
            unselectedItemColor: Colors.blueGrey[300],
            backgroundColor: Colors.white,
            elevation: 8,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: isVietnamese ? 'Trang chủ' : 'Home',
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.school),
                label: isVietnamese ? 'Học tập' : 'Learning',
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.swap_horiz),
                label: isVietnamese ? 'Chuyển đổi' : 'Converter',
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.science),
                label: isVietnamese ? 'Xét nghiệm' : 'Lab',
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildHomeContent() {
    final l10n = AppLocalizations.of(context)!;
    
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Medical Disclaimer Widget - CRITICAL for App Store compliance
          // Use compact version on home page to save space
          const MedicalDisclaimerWidget(isCompact: true),
          
          const SizedBox(height: 20),
          
          Text(
            l10n.welcomeMessage,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppTheme.primaryBlue,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            l10n.welcomeSubtitle,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppTheme.darkGrey,
              fontWeight: FontWeight.w500,
            ),
          ),
          
          const SizedBox(height: 24),
          
          // Quick access cards for main features
          _buildQuickAccessSection(l10n),
          
          // Add some bottom padding to ensure content is accessible above bottom navigation
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _buildQuickAccessSection(AppLocalizations l10n) {
    final isVietnamese = Localizations.localeOf(context).languageCode == 'vi';
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          isVietnamese ? 'Truy cập nhanh' : 'Quick Access',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppTheme.primaryBlue,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _buildQuickAccessCard(
                icon: Icons.school,
                title: isVietnamese ? 'Học tập' : 'Learning',
                subtitle: isVietnamese ? 'Điểm lâm sàng' : 'Clinical Scores',
                onTap: () => setState(() => _currentIndex = 1),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildQuickAccessCard(
                icon: Icons.swap_horiz,
                title: isVietnamese ? 'Chuyển đổi' : 'Converter',
                subtitle: isVietnamese ? 'Đơn vị' : 'Unit Tools',
                onTap: () => setState(() => _currentIndex = 2),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: _buildQuickAccessCard(
                icon: Icons.science,
                title: isVietnamese ? 'Xét nghiệm' : 'Lab Analysis',
                subtitle: isVietnamese ? 'Công cụ học' : 'Study Tools',
                onTap: () => setState(() => _currentIndex = 3),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildQuickAccessCard(
                icon: Icons.bookmark_outline,
                title: isVietnamese ? 'Đánh dấu' : 'Bookmarks',
                subtitle: isVietnamese ? 'Đã lưu' : 'Saved Items',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BookmarksPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildQuickAccessCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 32,
              color: AppTheme.primaryBlue,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppTheme.primaryBlue,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppTheme.darkGrey,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
