import 'package:flutter/material.dart';
import '../../../core/theme/app_theme.dart';
import '../../../shared/services/bookmark_service.dart';
import '../../../shared/models/bookmark_item.dart';

// Import all the pages
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

class BookmarksPage extends StatefulWidget {
  const BookmarksPage({super.key});

  @override
  State<BookmarksPage> createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  late BookmarkService _bookmarkService;
  List<BookmarkItem> _bookmarks = [];

  @override
  void initState() {
    super.initState();
    _bookmarkService = BookmarkService.instance;
    _loadBookmarks();
  }

  Future<void> _loadBookmarks() async {
    await _bookmarkService.initialize();
    if (mounted) {
      setState(() {
        _bookmarks = _bookmarkService.bookmarks;
      });
    }
  }

  Widget? _getPageFromId(String id) {
    switch (id) {
      case 'glasgow_coma_scale':
        return const GlasgowComaScalePage();
      case 'apache_ii':
        return const ApacheIIPage();
      case 'sofa_score':
        return const SOFAScorePage();
      case 'ranson_score':
        return const RansonPage();
      case 'grace_score':
        return const GraceScorePage();
      case 'crusade_score':
        return const CrusadeBleedingRiskPage();
      case 'qsofa_score':
        return const QsofaScorePage();
      case 'timi_stemi':
        return const TimiStemiPage();
      case 'timi_ua_nstemi':
        return const TimiUaNstemiPage();
      case 'saps_ii':
        return const SAPSII();
      case 'mews':
        return const MEWSPage();
      case 'pews':
        return const PewsScorePage();
      case 'has_bled_score':
        return const HasBledScorePage();
      case 'improve_bleeding_risk':
        return const ImproveBleedingRiskPage();
      case 'cha2ds2_vasc':
        return const Cha2ds2VascPage();
      case 'wells_dvt_score':
        return const WellsDvtScorePage();
      case 'padua_prediction_score':
        return const PaduaPredictionScorePage();
      case 'abcd2_score':
        return const Abcd2Page();
      case 'nihss':
        return const NihssPage();
      case 'race_scale':
        return const RaceScalePage();
      case 'aspect_score':
        return const AspectScorePage();
      case 'modified_sgarbossa_criteria':
        return const ModifiedSgarbossaCriteriaPage();
      case 'child_pugh_score':
        return const ChildPughPage();
      case 'meld_score':
        return const MeldScorePage();
      case 'curb_65':
        return const Curb65Page();
      case 'psi':
        return const PsiPage();
      case 'asa_physical_status':
        return const AsaPhysicalStatusPage();
      case 'revised_cardiac_risk_index':
        return const RevisedCardiacRiskIndexPage();
      case 'surgical_apgar_score':
        return const SurgicalApgarScorePage();
      case 'preoperative_mortality_prediction':
        return const PreoperativeMortalityPredictionPage();
      case 'dapt_score':
        return const DaptScorePage();
      case 'creatinine_clearance':
        return const CreatinineClearancePage();
      case 'mdrd_gfr':
        return const MdrdGfrPage();
      case 'cam_icu':
        return const CamIcuPage();
      case 'rass':
        return const RassScorePage();
      case 'fluid_balance':
        return const FluidBalancePage();
      default:
        return null;
    }
  }

  Future<void> _removeBookmark(BookmarkItem bookmark) async {
    await _bookmarkService.removeBookmark(bookmark.id);
    await _loadBookmarks();
  }

  Future<void> _clearAllBookmarks() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          Localizations.localeOf(context).languageCode == 'vi'
              ? 'Xóa tất cả đánh dấu'
              : 'Clear All Bookmarks',
        ),
        content: Text(
          Localizations.localeOf(context).languageCode == 'vi'
              ? 'Bạn có chắc chắn muốn xóa tất cả các đánh dấu?'
              : 'Are you sure you want to remove all bookmarks?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(
              Localizations.localeOf(context).languageCode == 'vi'
                  ? 'Hủy'
                  : 'Cancel',
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: Text(
              Localizations.localeOf(context).languageCode == 'vi'
                  ? 'Xóa'
                  : 'Clear',
            ),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      await _bookmarkService.clearAllBookmarks();
      await _loadBookmarks();
    }
  }

  @override
  Widget build(BuildContext context) {
    final isVietnamese = Localizations.localeOf(context).languageCode == 'vi';

    return Scaffold(
      appBar: AppBar(
        title: Text(isVietnamese ? 'Đánh Dấu' : 'Bookmarks'),
        backgroundColor: AppTheme.primaryBlue,
        foregroundColor: Colors.white,
        actions: [
          if (_bookmarks.isNotEmpty)
            IconButton(
              onPressed: _clearAllBookmarks,
              icon: const Icon(Icons.clear_all),
              tooltip: isVietnamese ? 'Xóa tất cả' : 'Clear all',
            ),
        ],
      ),
      body: _bookmarks.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.bookmark_border,
                    size: 64,
                    color: Colors.grey.shade400,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    isVietnamese
                        ? 'Chưa có đánh dấu nào'
                        : 'No bookmarks yet',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    isVietnamese
                        ? 'Nhấn vào biểu tượng đánh dấu trên các thang điểm để thêm vào danh sách này'
                        : 'Tap the bookmark icon on clinical scores to add them here',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _bookmarks.length,
              itemBuilder: (context, index) {
                final bookmark = _bookmarks[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: AppTheme.primaryBlue.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.bookmark,
                        color: AppTheme.primaryBlue,
                        size: 24,
                      ),
                    ),
                    title: Text(
                      bookmark.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppTheme.darkGrey,
                      ),
                    ),
                    subtitle: Text(
                      bookmark.subtitle,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () => _removeBookmark(bookmark),
                          icon: const Icon(Icons.bookmark_remove),
                          color: Colors.red.shade400,
                          tooltip: isVietnamese ? 'Bỏ đánh dấu' : 'Remove bookmark',
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey.shade400,
                          size: 16,
                        ),
                      ],
                    ),
                    onTap: () {
                      final page = _getPageFromId(bookmark.id);
                      if (page != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => page),
                        );
                      }
                    },
                  ),
                );
              },
            ),
    );
  }
}
