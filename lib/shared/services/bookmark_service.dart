import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/bookmark_item.dart';

class BookmarkService {
  static const String _bookmarksKey = 'clinical_scores_bookmarks';
  
  static BookmarkService? _instance;
  static BookmarkService get instance => _instance ??= BookmarkService._();
  BookmarkService._();

  List<BookmarkItem> _bookmarks = [];
  List<BookmarkItem> get bookmarks => List.unmodifiable(_bookmarks);

  Future<void> initialize() async {
    await _loadBookmarks();
  }

  Future<void> _loadBookmarks() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final bookmarksJson = prefs.getStringList(_bookmarksKey);
      
      if (bookmarksJson != null) {
        _bookmarks = bookmarksJson
            .map((json) => BookmarkItem.fromJson(jsonDecode(json)))
            .toList();
      }
    } catch (e) {
      // Error loading bookmarks - silently handle
      _bookmarks = [];
    }
  }

  Future<void> _saveBookmarks() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final bookmarksJson = _bookmarks
          .map((bookmark) => jsonEncode(bookmark.toJson()))
          .toList();
      await prefs.setStringList(_bookmarksKey, bookmarksJson);
    } catch (e) {
      // Error saving bookmarks - silently handle
    }
  }

  bool isBookmarked(String itemId) {
    return _bookmarks.any((bookmark) => bookmark.id == itemId);
  }

  Future<void> addBookmark(BookmarkItem item) async {
    if (!isBookmarked(item.id)) {
      _bookmarks.add(item);
      await _saveBookmarks();
    }
  }

  Future<void> removeBookmark(String itemId) async {
    _bookmarks.removeWhere((bookmark) => bookmark.id == itemId);
    await _saveBookmarks();
  }

  Future<void> toggleBookmark(BookmarkItem item) async {
    if (isBookmarked(item.id)) {
      await removeBookmark(item.id);
    } else {
      await addBookmark(item);
    }
  }

  Future<void> clearAllBookmarks() async {
    _bookmarks.clear();
    await _saveBookmarks();
  }
}
