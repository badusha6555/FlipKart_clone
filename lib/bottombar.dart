import 'package:flutter/material.dart';
import 'package:kart_app/cart.dart';
import 'package:kart_app/categories.dart';
import 'package:kart_app/homescreen.dart';
import 'package:kart_app/notifications.dart';
import 'package:kart_app/profile.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _currentIndex = 0;
  final _pages = [
    const Homescreen(),
    const Categories(),
    const Notifications(),
    const Profile(),
    const Cart()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        fixedColor: const Color.fromARGB(255, 13, 50, 216),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        elevation: 0,
        onTap: (value) => {
          setState(() {
            _currentIndex = value;
          })
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
        ],
      ),
    );
  }
}
