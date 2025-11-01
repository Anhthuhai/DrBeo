import 'package:flutter/material.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../main.dart';
import '../../../clinical_scores/presentation/clinical_scores_page.dart';
import '../../../unit_converter/presentation/pages/unit_converter_page.dart';
import '../../../lab_analysis/presentation/lab_analysis_home_page.dart';
import '../../../bookmarks/presentation/bookmarks_page.dart';
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
      bottomNavigationBar: BottomNavigationBar(
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
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Scores',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz),
            label: 'Converter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.science),
            label: 'Lab',
          ),
        ],
      ),
    );
  }

  Widget _buildHomeContent() {
    final l10n = AppLocalizations.of(context)!;
    
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Medical Disclaimer Banner - CRITICAL for App Store compliance
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.red.shade50,
              border: Border.all(color: Colors.red.shade300, width: 2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Icon(Icons.medical_services, color: Colors.red.shade600, size: 32),
                const SizedBox(height: 8),
                Text(
                  l10n.medical_disclaimer_professional_only,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.red.shade700,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  l10n.medical_disclaimer_home_text,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.red.shade600,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          
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
        ],
      ),
    );
  }
}
