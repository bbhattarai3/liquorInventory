import 'package:flutter/material.dart';
import 'package:liquor_inventory/utils/common.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(context, "Settings Page"),
      body: Column(
        children: const [
          Text("Settings Page"),
        ],
      ),
    );
  }
}
