import 'package:flutter/material.dart';

class DetailHalaman extends StatelessWidget {
  final dynamic coin;

  const DetailHalaman({Key? key, required this.coin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(coin['name'], style: TextStyle(fontWeight: FontWeight.w600),),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Card(
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(
              color: Colors.yellow,
              width: 2.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.network(
                    coin['image'],
                    width: 100,
                    height: 100,
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                  coin['name'],
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                ),
                
                const SizedBox(height: 8),
                Center(
                  child: Text(
                  'Harga Terbaru: \$${coin['current_price']}',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                ),
                
                const SizedBox(height: 8),
                Center(
                  child: Text(
                  'Kapitalisasi Pasar: \$${coin['market_cap']}',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                ),
                
                const SizedBox(height: 25),
                Center(
                  child: Text(
                  'Informasi Lainnya:',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                ),
                
                const SizedBox(height: 8),
                Center(
                  child: Text(
                  'Peringkat: ${coin['market_cap_rank'] ?? 'N/A'}',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                ),
                
                const SizedBox(height: 5),
                Center(
                  child: Text(
                  'Perubahan: ${coin['price_change_percentage_24h']?.toStringAsFixed(2) ?? 'N/A'}%',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                )
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
