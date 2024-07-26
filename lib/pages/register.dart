import 'package:app/pages/home.dart';
import 'package:app/pages/login.dart';
import 'package:app/shared/constants_textfield.dart';
import 'package:app/shared/constants_colors.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 247, 247, 245),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 64,
                  ),
                  TextField(
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      decoration: decorationTextfield.copyWith(
                        hintText: "Enter Your Username : ",
                      )),
                  const SizedBox(
                    height: 33,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    decoration: decorationTextfield.copyWith(
                      hintText: "Enter Your Email : ",
                    ),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: decorationTextfield.copyWith(
                      hintText: "Enter Your Password : ",
                    ),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  ElevatedButton(
                    onPressed: () {{
                        Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ),
                    );
                      }},
                    // ignore: sort_child_properties_last
                    child: const Text(
                      "Register",
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(BTNgreen),
                      padding:
                          WidgetStateProperty.all(const EdgeInsets.all(12)),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Do not have an account?",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                          );
                        },
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
