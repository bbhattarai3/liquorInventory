import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquor_inventory/utils/common.dart';
import 'package:liquor_inventory/utils/config/palette.dart';
import 'auth_widgets.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final bool passwordVisible = false;

  TextEditingController emailFieldController = TextEditingController();
  TextEditingController passwordFieldController = TextEditingController();
  TextEditingController confirmPasswordFieldController =
      TextEditingController();

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
      appBar: mainAppBar(context, "SignUp Page"),
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
                const Text(
                  "Confirm Password:",
                  style: TextStyle(fontSize: 14.0),
                ),
                passwordFormField(confirmPasswordFieldController),
                primaryButton(
                  context,
                  () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        '/', (Route<dynamic> route) => false);
                  },
                  "Sign Up",
                  MediaQuery.of(context).size.width / 2,
                ),
              ],
            ),
          ),
          loginLink(),
        ],
      ),
    );
  }

  Widget loginLink() {
    return Row(
      children: [
        const Text(
          "Already have an account? ",
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
                '/login', (Route<dynamic> route) => false);
          },
          child: Text(
            "Log In",
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
