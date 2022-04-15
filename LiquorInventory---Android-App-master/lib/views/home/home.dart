import 'package:flutter/material.dart';
import 'package:liquor_inventory/utils/config/palette.dart';
import 'package:liquor_inventory/views/inventory/inventory.dart';
import 'package:liquor_inventory/views/sales/sales.dart';
import 'package:liquor_inventory/views/scan/scan_item.dart';

class AppHomePage extends StatefulWidget {
  const AppHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<AppHomePage> createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  int _currentPage = 0;

  final List<Widget> _pagesList = <Widget>[
    InventoryPage(),
    ScanItemPage(),
    HistoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pagesList[_currentPage],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Palette.primaryRed,
        onTap: (int index) {
          setState(() {
            _currentPage = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Inventory',
            icon: Icon(
              Icons.inventory_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Scan',
            icon: Icon(Icons.qr_code_scanner_outlined),
          ),
          BottomNavigationBarItem(
            label: 'History',
            icon: Icon(
              Icons.insights_outlined,
            ),
          ),
        ],
      ),
    );
  }
}
