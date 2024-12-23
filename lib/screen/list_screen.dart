import 'package:flutter/material.dart';
import 'package:tugas_api_flutter/service/api_service.dart';
import 'package:tugas_api_flutter/widget/widget_data.dart';

class DaftarList extends StatefulWidget {
  @override
  _DaftarListState createState() => _DaftarListState();
}

class _DaftarListState extends State<DaftarList> {
  List<dynamic> _datacrypto = [];
  String _pencarian = "";
  bool _sortingdata = true;

  @override
  void initState() {
    super.initState();
    fetchCryptoData();
  }

  Future<void> fetchCryptoData() async {
    final data = await ApiService.fetchCryptoData();
    setState(() {
      _datacrypto = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<dynamic> filteredData = _datacrypto
        .where((coin) => coin['name']
            .toString()
            .toLowerCase()
            .contains(_pencarian.toLowerCase()))
        .toList();

    if (!_sortingdata) {
      filteredData.sort((a, b) =>
          b['current_price'].compareTo(a['current_price']));
    } else {
      filteredData.sort((a, b) =>
          a['current_price'].compareTo(b['current_price']));
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        centerTitle: true,
        title: Text('DAFTAR CRYPTO', style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
        actions: [
          IconButton(
            icon: Icon(_sortingdata ? Icons.arrow_downward : Icons.arrow_upward),
            onPressed: () {
              setState(() {
                _sortingdata = !_sortingdata;
              });
            },
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              cursorColor: Colors.yellowAccent,
              style: TextStyle(color: Colors.yellowAccent),
              decoration: const InputDecoration(
                labelText: 'Cari',
                labelStyle: TextStyle(color: Colors.yellowAccent),
                prefixIcon: Icon(Icons.search, color: Colors.yellowAccent,),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.yellowAccent,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.yellowAccent,
                    width: 2.0
                  )
                )
              ),
              onChanged: (value) {
                setState(() {
                  _pencarian = value;
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredData.length,
              itemBuilder: (context, index) {
                return WidgetCrypto(coin: filteredData[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}