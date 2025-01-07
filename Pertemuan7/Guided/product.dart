class Product {
  final int id;
  final String nama;
  final double harga;
  final String imageUrl;
  final String deskripsi;

  Product({
    required this.id,
    required this.nama,
    required this.harga,
    required this.imageUrl,
    required this.deskripsi,
  });

  //method untuk mengkonversi json ke object product
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      nama: json['nama'],
      harga: json['harga'].toDouble(),
      imageUrl: json['image_url'],
      deskripsi: json['deskripsi'],
    );
  }

  //method untuk mengkonversi object product ke json
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama': nama,
      'harga': harga,
      'image_url': imageUrl,
      'deskripsi': deskripsi,
    };
  }
}