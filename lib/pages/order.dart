// Import halaman AddProductPage
import 'package:flutter/material.dart';
import 'add.dart';
import 'homepage.dart';

class ProductListPage extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'image': 'assets/burger.jpg',
      'name': 'Burger King Medium',
      'price': 'Rp.50.000,00',
    },
    {
      'image': 'assets/teh.jpg',
      'name': 'Teh Botol',
      'price': 'Rp.4.000,00',
    },
    {
      'image': 'assets/burger.jpg',
      'name': 'Burger King Small',
      'price': 'Rp.35.000,00',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage(),
            ),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigasi ke halaman AddProductPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => add(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: Text("Add Data +"),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: Image.asset(
                        product['image'],
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      title: Text(product['name']),
                      subtitle: Text(product['price']),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          // Add delete functionality here
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
