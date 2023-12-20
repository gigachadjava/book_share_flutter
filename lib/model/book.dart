
import 'package:json_annotation/json_annotation.dart';
part 'book.g.dart';
@JsonSerializable()
class Book {
  int id;
  String nameBook;
  @JsonKey(name: "authorBook")
  String author;
  @JsonKey(name: "imageUrl")
  String imageBook;
  String description;

  Book(
      {required this.id,
      required this.nameBook,
      required this.author,
      required this.imageBook,
      required this.description});

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
  Map<String, dynamic> toJson() => _$BookToJson(this);
}
