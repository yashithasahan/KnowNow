import 'package:flutter/foundation.dart';
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
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _validateFirstName(String? value) {
    if (value!.isEmpty) {
      return "First name is required";
    }
    return null;
  }

  String? _validateLastName(String? value) {
    if (value!.isEmpty) {
      return "Last name is required";
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value!.isEmpty) {
      return "Email is required";
    } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
      return "Invalid email format";
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value!.isEmpty) {
      return "Password is required";
    } else if (value.length < 8) {
      return "Password must be at least 8 characters long";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
                width: MediaQuery.of(context).size.width,
              ),
              const Text(
                "Register",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              CustomTextField(
                controller: _firstNameController,
                hintText: "First Name",
                validator: _validateFirstName, obscureText: true,
              ),
              CustomTextField(
                controller: _lastNameController,
                hintText: "Last Name",
                validator: _validateLastName, obscureText: true,
              ),
              CustomTextField(
                controller: _emailController,
                hintText: "Email",
                validator: _validateEmail, obscureText: true,
              ),
              CustomTextField(
                controller: _passwordController,
                hintText: "Password",
                validator: _validatePassword,
                obscureText: true,
              ),
              CustomButton(
                name: "Register",
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Perform registration
                    String firstName = _firstNameController.text;
                    String lastName = _lastNameController.text;
                    String email = _emailController.text;
                    String password = _passwordController.text;
                    if (kDebugMode) {
                      print(
                        "Registration successful! First name: $firstName, last name: $lastName, email: $email, password: $password");
                    }
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
