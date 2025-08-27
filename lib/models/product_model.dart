class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  //String category;
  final String image;
  final RatingModel rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData["id"],
        title: jsonData["title"],
        price: (jsonData["price"] as num).toDouble(),
        description: jsonData["description"],
        image: jsonData["image"],
        rating: RatingModel.fromjson(jsonData["rating"]));
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromjson(jsondata) {
    return RatingModel(rate: jsondata["rate"], count: jsondata["count"]);
  }
}
