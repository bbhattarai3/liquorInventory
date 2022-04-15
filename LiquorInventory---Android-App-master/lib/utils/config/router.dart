import 'package:flutter/material.dart';
import 'package:liquor_inventory/views/auth/login.dart';
import 'package:liquor_inventory/views/auth/signup.dart';
import 'package:liquor_inventory/views/home/home.dart';
import 'package:liquor_inventory/views/item/item.dart';
import 'package:liquor_inventory/views/item/item_detail.dart';
import 'package:liquor_inventory/views/settings/setttings.dart';

class AppRouter {
  static const String SETTINGS = '/settings';
  static const String ROOT = '/';
  static const String ITEM = '/item';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case ROOT:
        return MaterialPageRoute(
          builder: (_) => const AppHomePage(title: 'Liquor Inventory App'),
        );
      case SETTINGS:
        return MaterialPageRoute(
          builder: (_) => SettingsPage(),
        );
      case '/signup':
        return MaterialPageRoute(
          builder: (_) => SignUpPage(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (_) => LoginPage(),
        );
      case '/item':
        if (args is LiquorItem) {
          return MaterialPageRoute(
              builder: (_) => ItemDetailPage(liquorItem: args));
        }
        return _invalidRoute();
      default:
        return _invalidRoute();
    }
  }

  static Route<dynamic> _invalidRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
