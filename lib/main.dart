import 'package:flutter/material.dart';

void main() {
  runApp(Tes());
}

class Tes extends StatelessWidget {
  List<String> menu = ["Soto", "Rawon"];
  List<int> harga = [10000, 15000];

  List<String> gambar = ["assets/soto.jpg", "assets/rawon.jpg"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menu Makanan"),
          backgroundColor: Colors.blue,
        ),
        body: Table(
          border: TableBorder.all(width: 1),
          columnWidths: {
            0: FlexColumnWidth(0.5),
            1: FlexColumnWidth(1.5),
            2: FlexColumnWidth(1),
            3: FlexColumnWidth(1),
            4: FlexColumnWidth(1),
          },
          children: [
            // Header
            TableRow(
              children: [
                Text("No"),
                Text("Gambar"),
                Text("Menu"),
                Text("Harga"),
                Text("Porsi"),
              ],
            ),

            // Data menu
            for (int i = 0; i < menu.length; i++)
              TableRow(
                children: [
                  Text("${i + 1}"),

                  Image.asset(
                    gambar[i],
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),

                  Text(menu[i]),

                  Text("Rp ${harga[i]}"),

                  // Input jumlah porsi
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Porsi",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(5),
                      ),
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
