import 'package:flutter/material.dart';
import 'package:liquor_inventory/utils/config/palette.dart';

TextFormField emailFormField(TextEditingController emailFieldController) {
  return TextFormField(
    style: const TextStyle(color: Palette.lightRed),
    decoration: const InputDecoration(
      errorStyle: TextStyle(color: Palette.primaryRed),
    ),
    keyboardType: TextInputType.emailAddress,
    controller: emailFieldController,
    validator: (String? value) {
      if (value != null) {
        return 'Email is required';
      }
      return '';
    },
  );
}

TextFormField passwordFormField(TextEditingController passwordFieldController) {
  return TextFormField(
    style: const TextStyle(color: Palette.lightRed),
    decoration: const InputDecoration(
      errorStyle: TextStyle(color: Palette.primaryRed),
    ),
    obscureText: true,
    enableSuggestions: false,
    autocorrect: false,
    keyboardType: TextInputType.emailAddress,
    controller: passwordFieldController,
    validator: (String? value) {
      if (value != null) {
        return 'Password is required';
      }
      return '';
    },
  );
}
