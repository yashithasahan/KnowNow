import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:knownow/constant/custom_button.dart';
import 'package:knownow/constant/custom_textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
              width: MediaQuery.of(context).size.width,
            ),
            const Text(
              "Register",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const CustomTextField(
              hintText: "First Name",
            ),
            const CustomTextField(
              hintText: "Last Name",
            ),
            const CustomTextField(
              hintText: "Email",
            ),
            const CustomTextField(
              hintText: "Password",
            ),
            CustomButton(name: "Register", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
