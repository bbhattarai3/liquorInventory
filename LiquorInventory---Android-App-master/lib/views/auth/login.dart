import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquor_inventory/utils/common.dart';
import 'package:liquor_inventory/utils/config/palette.dart';
import 'auth_widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final bool passwordVisible = false;

  TextEditingController emailFieldController = TextEditingController();
  TextEditingController passwordFieldController = TextEditingController();

  // handle login submission here
  bool formSubmission() {
    if (_formKey.currentState == null) {
      return false;
    }
    if (_formKey.currentState!.validate()) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(context, "Login Page"),
      body: Column(
        children: [
          Form(
            child: Column(
              children: [
                const Text(
                  "Email:",
                  style: TextStyle(fontSize: 14.0),
                ),
                emailFormField(emailFieldController),
                const Text(
                  "Password:",
                  style: TextStyle(fontSize: 14.0),
                ),
                passwordFormField(passwordFieldController),
                primaryButton(
                  context,
                  () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        '/', (Route<dynamic> route) => false);
                  },
                  "Log In",
                  MediaQuery.of(context).size.width / 2,
                ),
              ],
            ),
          ),
          forgotPassword(),
          signUpLink(),
        ],
      ),
    );
  }

  Widget forgotPassword() {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Forgot Password?",
        textAlign: TextAlign.center,
        style: GoogleFonts.raleway(
          color: Palette.primaryRed,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget signUpLink() {
    return Row(
      children: [
        const Text(
          "Do not have an account? ",
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
                '/signup', (Route<dynamic> route) => false);
          },
          child: Text(
            "Sign Up",
            textAlign: TextAlign.center,
            style: GoogleFonts.raleway(
              color: Palette.primaryRed,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
