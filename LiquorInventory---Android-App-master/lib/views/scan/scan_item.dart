import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:liquor_inventory/utils/common.dart';
import 'package:liquor_inventory/utils/config/palette.dart';
import 'package:liquor_inventory/utils/config/theme.dart';

class ScanItemPage extends StatefulWidget {
  @override
  _ScanItemPageState createState() => _ScanItemPageState();
}

class _ScanItemPageState extends State<ScanItemPage> {
  String? scanResult;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        mainAppBar(context, "Scan Item Page"),
        Text(
          scanResult == null ? 'Scan a bar code!' : 'Scan result: $scanResult',
          style: AppTheme.lightThemeText.bodyText1,
        ),
        scanButton(),
        Text(
          "No barcode? Add item manually!",
          style: AppTheme.lightThemeText.bodyText1,
        ),
        manualAddButton(),
      ],
    );
  }

  Widget manualAddButton() {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Palette.accentedRed,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          "Add Item",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget scanButton() {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Palette.accentedRed,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: scanBarCode,
        child: const Text(
          "Scan Item",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Future scanBarCode() async {
    String scanResult;

    try {
      scanResult = await FlutterBarcodeScanner.scanBarcode(
        "#ff1a00",
        "Cancel Scan",
        true,
        ScanMode.BARCODE,
      );
    } on PlatformException {
      scanResult = "Failed to get platform version";
    }

    if (!mounted) return;

    setState(() {
      this.scanResult = scanResult;
    });
  }
}
