class BookEntity {
  final String bookId;
  final String title;
  final String? author;
  final String? coverImageUrl;
  final num? price;
  final num? rating;

  BookEntity({
    required this.title,
    required this.author,
    required this.coverImageUrl,
    required this.price,
    required this.rating,
    required this.bookId,
  });
}
