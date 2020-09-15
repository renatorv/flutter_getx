import 'package:meta/meta.dart' show required;

class Product {
  final int id;
  final String nome, description;
  final double price, rate;

  Product({
    @required this.id,
    @required this.nome,
    @required this.description,
    @required this.price,
    @required this.rate,
  });

  static Product fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['Product ID'],
      nome: json['Name'],
      description: json['Description'],
      price: json['Price'].toDouble(),
      rate: json['Rating Avg'].toDouble(),
    );
  }
}
