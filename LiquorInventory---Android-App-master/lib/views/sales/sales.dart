import 'package:flutter/cupertino.dart';
import 'package:liquor_inventory/utils/common.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        mainAppBar(context, "History Page"),
      ],
    );
  }
}
