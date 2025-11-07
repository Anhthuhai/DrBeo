class BookmarkItem {
  final String id;
  final String title;
  final String subtitle;
  final String description;
  final String iconName;
  final String colorValue;
  final String pageType;

  const BookmarkItem({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.iconName,
    required this.colorValue,
    required this.pageType,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'description': description,
      'iconName': iconName,
      'colorValue': colorValue,
      'pageType': pageType,
    };
  }

  factory BookmarkItem.fromJson(Map<String, dynamic> json) {
    return BookmarkItem(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      description: json['description'] as String,
      iconName: json['iconName'] as String,
      colorValue: json['colorValue'] as String,
      pageType: json['pageType'] as String,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookmarkItem &&
          runtimeType == other.runtimeType &&
          id == other.id;

  @override
  int get hashCode => id.hashCode;
}
