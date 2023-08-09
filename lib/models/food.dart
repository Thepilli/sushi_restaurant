// ignore_for_file: public_member_api_docs, sort_constructors_first
class Food {
  String name;
  String price;
  String image;
  String rating;
  String category;
  Food({
    required this.name,
    required this.price,
    required this.image,
    required this.rating,
    required this.category,
  });
  String get _name => name;
  String get _price => price;
  String get _image => image;
  String get _rating => rating;
  String get _category => category;
}
