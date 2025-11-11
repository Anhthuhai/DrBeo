import 'dart:math';

class SearchHelper {
  /// Calculate similarity between two strings using Levenshtein distance
  static double calculateSimilarity(String str1, String str2) {
    if (str1 == str2) return 1.0;
    
    final len1 = str1.length;
    final len2 = str2.length;
    
    if (len1 == 0) return len2 == 0 ? 1.0 : 0.0;
    if (len2 == 0) return 0.0;
    
    final distance = _levenshteinDistance(str1.toLowerCase(), str2.toLowerCase());
    final maxLength = max(len1, len2);
    
    return 1.0 - (distance / maxLength);
  }
  
  /// Calculate Levenshtein distance between two strings
  static int _levenshteinDistance(String str1, String str2) {
    final len1 = str1.length;
    final len2 = str2.length;
    
    List<List<int>> matrix = List.generate(
      len1 + 1, 
      (i) => List.filled(len2 + 1, 0)
    );
    
    for (int i = 0; i <= len1; i++) {
      matrix[i][0] = i;
    }
    
    for (int j = 0; j <= len2; j++) {
      matrix[0][j] = j;
    }
    
    for (int i = 1; i <= len1; i++) {
      for (int j = 1; j <= len2; j++) {
        int cost = (str1[i - 1] == str2[j - 1]) ? 0 : 1;
        
        matrix[i][j] = min(
          min(matrix[i - 1][j] + 1, matrix[i][j - 1] + 1),
          matrix[i - 1][j - 1] + cost
        );
      }
    }
    
    return matrix[len1][len2];
  }
  
  /// Enhanced search with scoring system
  static List<SearchResult> searchClinicalScores(
    List<Map<String, dynamic>> scores,
    String query,
  ) {
    if (query.trim().isEmpty) return [];
    
    final results = <SearchResult>[];
    final queryLower = query.toLowerCase().trim();
    final queryWords = queryLower.split(RegExp(r'\s+'));
    
    for (final score in scores) {
      final searchResult = _calculateScoreForItem(score, queryLower, queryWords);
      if (searchResult.score > 0) {
        results.add(searchResult);
      }
    }
    
    // Sort by relevance score (highest first)
    results.sort((a, b) => b.score.compareTo(a.score));
    
    return results;
  }
  
  static SearchResult _calculateScoreForItem(
    Map<String, dynamic> item,
    String query,
    List<String> queryWords,
  ) {
    int score = 0;
    final matches = <SearchMatch>[];
    
    final title = (item['title'] as String? ?? '').toLowerCase();
    final subtitle = (item['subtitle'] as String? ?? '').toLowerCase(); 
    final description = (item['description'] as String? ?? '').toLowerCase();
    final searchKeywords = (item['searchKeywords'] as String? ?? '').toLowerCase();
    final id = (item['id'] as String? ?? '').toLowerCase();
    
    // Exact matches get highest priority
    if (title == query) {
      score += 1000;
      matches.add(SearchMatch(field: 'title', type: 'exact', text: title));
    } else if (subtitle == query) {
      score += 800;
      matches.add(SearchMatch(field: 'subtitle', type: 'exact', text: subtitle));
    } else if (id == query) {
      score += 900;
      matches.add(SearchMatch(field: 'id', type: 'exact', text: id));
    }
    
    // Title matches
    if (title.contains(query)) {
      score += 500;
      matches.add(SearchMatch(field: 'title', type: 'contains', text: title));
    }
    
    // Check if title starts with query
    if (title.startsWith(query)) {
      score += 300;
      matches.add(SearchMatch(field: 'title', type: 'starts_with', text: title));
    }
    
    // Subtitle matches
    if (subtitle.contains(query)) {
      score += 250;
      matches.add(SearchMatch(field: 'subtitle', type: 'contains', text: subtitle));
    }
    
    // ID matches (acronyms)
    if (id.contains(query)) {
      score += 400;
      matches.add(SearchMatch(field: 'id', type: 'contains', text: id));
    }
    
    // Individual word matches
    for (final word in queryWords) {
      if (word.length < 2) continue; // Skip very short words
      
      // Title word matches
      if (title.contains(word)) {
        score += 100;
        matches.add(SearchMatch(field: 'title', type: 'word', text: word));
      }
      
      // Subtitle word matches  
      if (subtitle.contains(word)) {
        score += 50;
        matches.add(SearchMatch(field: 'subtitle', type: 'word', text: word));
      }
      
      // Description word matches
      if (description.contains(word)) {
        score += 25;
        matches.add(SearchMatch(field: 'description', type: 'word', text: word));
      }
      
      // Search keywords matches
      if (searchKeywords.contains(word)) {
        score += 75;
        matches.add(SearchMatch(field: 'keywords', type: 'word', text: word));
      }
    }
    
    // Fuzzy matching for single words (typo tolerance)
    if (queryWords.length == 1 && queryWords[0].length >= 3) {
      final queryWord = queryWords[0];
      
      // Check title words
      final titleWords = title.split(RegExp(r'[\s\-_]+'));
      for (final titleWord in titleWords) {
        if (titleWord.length >= 3) {
          final similarity = calculateSimilarity(queryWord, titleWord);
          if (similarity >= 0.7) {
            score += (similarity * 150).round();
            matches.add(SearchMatch(
              field: 'title',
              type: 'fuzzy',
              text: titleWord,
              similarity: similarity,
            ));
          }
        }
      }
      
      // Check subtitle words  
      final subtitleWords = subtitle.split(RegExp(r'[\s\-_]+'));
      for (final subtitleWord in subtitleWords) {
        if (subtitleWord.length >= 3) {
          final similarity = calculateSimilarity(queryWord, subtitleWord);
          if (similarity >= 0.7) {
            score += (similarity * 75).round();
            matches.add(SearchMatch(
              field: 'subtitle',
              type: 'fuzzy', 
              text: subtitleWord,
              similarity: similarity,
            ));
          }
        }
      }
    }
    
    // Acronym matching
    final titleInitials = _extractInitials(title);
    final subtitleInitials = _extractInitials(subtitle);
    
    if (titleInitials.toLowerCase() == query) {
      score += 600;
      matches.add(SearchMatch(field: 'title', type: 'acronym', text: titleInitials));
    } else if (subtitleInitials.toLowerCase() == query) {
      score += 400;
      matches.add(SearchMatch(field: 'subtitle', type: 'acronym', text: subtitleInitials));
    }
    
    return SearchResult(
      item: item,
      score: score,
      matches: matches,
    );
  }
  
  /// Extract initials from a string (for acronym matching)
  static String _extractInitials(String text) {
    final words = text.split(RegExp(r'[\s\-_]+'));
    return words
        .where((word) => word.isNotEmpty)
        .map((word) => word[0])
        .join('')
        .toLowerCase();
  }
  
  /// Remove Vietnamese accents for better matching
  static String removeVietnameseAccents(String text) {
    const accents = {
      'à': 'a', 'á': 'a', 'ạ': 'a', 'ả': 'a', 'ã': 'a', 'â': 'a', 'ầ': 'a', 'ấ': 'a', 'ậ': 'a', 'ẩ': 'a', 'ẫ': 'a',
      'ă': 'a', 'ằ': 'a', 'ắ': 'a', 'ặ': 'a', 'ẳ': 'a', 'ẵ': 'a',
      'è': 'e', 'é': 'e', 'ẹ': 'e', 'ẻ': 'e', 'ẽ': 'e', 'ê': 'e', 'ề': 'e', 'ế': 'e', 'ệ': 'e', 'ể': 'e', 'ễ': 'e',
      'ì': 'i', 'í': 'i', 'ị': 'i', 'ỉ': 'i', 'ĩ': 'i',
      'ò': 'o', 'ó': 'o', 'ọ': 'o', 'ỏ': 'o', 'õ': 'o', 'ô': 'o', 'ồ': 'o', 'ố': 'o', 'ộ': 'o', 'ổ': 'o', 'ỗ': 'o',
      'ơ': 'o', 'ờ': 'o', 'ớ': 'o', 'ợ': 'o', 'ở': 'o', 'ỡ': 'o',
      'ù': 'u', 'ú': 'u', 'ụ': 'u', 'ủ': 'u', 'ũ': 'u', 'ư': 'u', 'ừ': 'u', 'ứ': 'u', 'ự': 'u', 'ử': 'u', 'ữ': 'u',
      'ỳ': 'y', 'ý': 'y', 'ỵ': 'y', 'ỷ': 'y', 'ỹ': 'y',
      'đ': 'd',
    };
    
    String result = text.toLowerCase();
    accents.forEach((accent, replacement) {
      result = result.replaceAll(accent, replacement);
    });
    
    return result;
  }
}

class SearchResult {
  final Map<String, dynamic> item;
  final int score;
  final List<SearchMatch> matches;
  
  SearchResult({
    required this.item,
    required this.score,
    required this.matches,
  });
}

class SearchMatch {
  final String field;
  final String type;
  final String text;
  final double? similarity;
  
  SearchMatch({
    required this.field,
    required this.type, 
    required this.text,
    this.similarity,
  });
}
