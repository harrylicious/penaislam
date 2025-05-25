class Story {
  final String id;
  final String title;
  final String content;
  final String category;
  final String imageUrl;
  final String summary;
  final bool isFavorite;

  Story({
    required this.id,
    required this.title,
    required this.content,
    required this.category,
    required this.imageUrl,
    required this.summary,
    this.isFavorite = false,
  });

  Story copyWith({
    String? id,
    String? title,
    String? content,
    String? category,
    String? imageUrl,
    String? summary,
    bool? isFavorite,
  }) {
    return Story(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      category: category ?? this.category,
      imageUrl: imageUrl ?? this.imageUrl,
      summary: summary ?? this.summary,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
