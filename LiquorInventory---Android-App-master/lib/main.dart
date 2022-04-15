import 'package:flutter/material.dart';
import 'package:liquor_inventory/utils/config/router.dart';
import 'package:liquor_inventory/utils/config/theme.dart';

void main() {
  runApp(LiquorInventoryApp());
}

class LiquorInventoryApp extends StatelessWidget {
  final theme = AppTheme.light();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liquor Inventory App',
      theme: theme,
      initialRoute: '/login',
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
