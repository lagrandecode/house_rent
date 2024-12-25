class GridModel {
  late final int id;
  final String? name;
  final String? image;
  final String? address;
  late double price;

  GridModel({required this.id,this.name,this.image,this.address,required this.price});

  factory GridModel.fromJson

  (Map<String, dynamic> json) => GridModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      address: json['address'],
      price: double.tryParse(json['price'].toString()) ?? 0.0,
  );
}