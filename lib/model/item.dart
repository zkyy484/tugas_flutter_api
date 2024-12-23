class Crypto {
  final String nama;
  final String foto;
  final double hargaTerbaru;
  final double capMarket;

  Crypto({
    required this.nama,
    required this.foto,
    required this.hargaTerbaru,
    required this.capMarket,
  });

  factory Crypto.fromJson(Map<String, dynamic> json) {
    return Crypto(
      nama: json['name'],
      foto: json['image'],
      hargaTerbaru: json['current_price'].toDouble(),
      capMarket: json['market_cap'].toDouble(),
    );
  }
}
