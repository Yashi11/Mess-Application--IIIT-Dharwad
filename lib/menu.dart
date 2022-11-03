import 'package:flutter/material.dart';
import 'package:mess/widgets/BottomNavbar.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Testing Home Page"),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
