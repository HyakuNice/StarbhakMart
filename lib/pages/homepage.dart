import 'package:flutter/material.dart';
import '../Widgets/appbarwidget.dart';
import '../widgets/CategoriesWidget.dart';
import '../Widgets/AllFoodWidget.dart';
import 'cart.dart';
import 'order.dart'; // Import the order screen

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  // List of screens to display based on the selected index
  final List<Widget> _children = [
    HomeContent(), // Homepage content
    CartPage(),    // Cart screen
    ProductListPage(),   // Order screen (from order.dart)
  ];

  // Method to change screen based on tapped tab
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex], // Display widget based on selected index
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

// Separate widget for the main homepage content
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Custom app bar widget
        AppBarWidget(),

        // Category Widget
        Categorieswidget(),

        // All Food section
        Padding(
          padding: EdgeInsets.only(top: 20, left: 10),
          child: Text(
            'All Food',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),

        // All Food Widget
        AllFoodWidget(),
      ],
    );
  }
}
