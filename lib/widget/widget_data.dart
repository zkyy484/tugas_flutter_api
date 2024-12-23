import 'package:flutter/material.dart';
import 'package:tugas_api_flutter/screen/detail_screen.dart';

class WidgetCrypto extends StatelessWidget {
  final dynamic coin;

  const WidgetCrypto({Key? key, required this.coin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailHalaman(coin: coin),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.yellowAccent,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
        ),
        child: Row(
          children: [
            // Gambar koin
            Image.network(
              coin['image'],
              width: 50,
              height: 50,
            ),
            const SizedBox(width: 15),
            // Informasi koin
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coin['name'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Harga: \$${coin['current_price']}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            // Market cap
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'Market Cap:',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  '\$${coin['market_cap']}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white, 
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}