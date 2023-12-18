
import 'dart:convert';


List<Product> productlistFromJson(String str) => List<Product>.from(json.decode(str).map((i) => Product.fromJson(i)));
String productlisttToMap(List<Product> data) => json.encode(List<dynamic>.from(data.map((i) => i.toMap())));

class Product {
   int? id;
   String? title;
   double? price;
   String? description;
   String? category;
   String? image;
   Rating rating;

    Product({
      this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating
      });


  factory Product.fromJson( Map<String , dynamic> json) => Product(
      id: json["id"],
      title: json["title"],
      price: json["price"].toDouble(),
      description: json["description"],
      category: json["category"],
      image: json["image"],
      rating: Rating.fromJson(json["rating"]),

  );

  Map<String , dynamic> toMap() => {
    "id":id,
    "title":title,
    "price":price,
    "description":description,
    "category":category,
    "image":image,
    "rating":rating.toMap(),
  };
    
}


class Rating {
  double? rate;
  int? count;
  
  Rating({
    required this.rate,
     required this.count
     }
     );

     
  factory Rating.fromJson( Map<String , dynamic> json) => Rating(
    rate: json["rate"].toDouble(),
    count: json["count"],


  );

  Map<String , dynamic> toMap() => {
    "rate":rate,
    "count":count,

  };


}
