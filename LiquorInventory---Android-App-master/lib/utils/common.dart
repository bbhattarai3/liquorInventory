import 'package:flutter/material.dart';
import 'package:liquor_inventory/utils/config/palette.dart';

const hrDividerRed = Divider(
  color: Palette.primaryRed,
  indent: 10.0,
  endIndent: 10.0,
  thickness: 1.0,
);

const hrDividerWhite = Divider(
  color: Colors.white,
  indent: 10.0,
  endIndent: 10.0,
  thickness: 1.0,
);

Widget imageContainer(String imageURL, double imgWidth, double imgHeight) {
  return Container(
    constraints: BoxConstraints.expand(width: imgWidth, height: imgHeight),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imageURL),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget primaryButton(
  BuildContext context,
  Function onPress,
  String buttonName,
  double width,
) {
  return Container(
    margin: const EdgeInsets.all(10),
    width: width,
    decoration: BoxDecoration(
      color: Palette.accentedRed,
      borderRadius: BorderRadius.circular(5),
    ),
    child: TextButton(
      onPressed: () {
        onPress();
      },
      child: Text(
        buttonName,
        style: const TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

AppBar mainAppBar(BuildContext context, String navbarText) {
  return AppBar(
    title: Text(
      navbarText,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
    ),
    elevation: 1,
    backgroundColor: Palette.primaryRed,
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/settings');
          },
          child: const Icon(
            Icons.settings,
            size: 20.0,
            color: Colors.white,
          ),
        ),
      )
    ],
  );
}
