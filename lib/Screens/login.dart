import 'package:flutter/material.dart';
import 'package:yemen_mobile/Screens/Layout.dart';
import 'package:yemen_mobile/Screens/components.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var PhoneController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/icons/ymLogo.png',
                        width: 100,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('تسجيل الدخول',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 180, 44, 76),
                            fontWeight: FontWeight.w600,
                          )),
                    ],
                  ),

                  const SizedBox(
                    height: 80,
                  ),

                  // Email Input

                  defaultForm(
                    validate: true,
                    validationMessage: 'The Phone is required',
                    controller: PhoneController,
                    label: 'Phone',
                    prefixIcon: Icons.phone,
                    type: TextInputType.phone,
                    suffixIconPressed: () {},
                  ),

                  SizedBox(height: 30),

                  // password Input
                  defaultForm(
                      controller: passwordController,
                      isPassword: true,
                      validationMessage: 'The password is required',
                      validate: true,
                      type: TextInputType.visiblePassword,
                      prefixIcon: Icons.lock,
                      sufixIcon: Icons.lock,
                      label: 'Password',
                      suffixIconPressed: () {}),
                  const SizedBox(
                    height: 50,
                  ),

                  //LOGIN Button

                  defaultButton(
                      label: 'Login',
                      width: double.infinity,
                      function: () {
                        if (formKey.currentState!.validate()) {
                          print(PhoneController.text == "777777777");
                          print(passwordController.text == "123456789");
                          if (PhoneController.text == "777777777" &&
                              passwordController.text == "123456789")
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => Layout()));
                        }
                      }),

                  SizedBox(height: 30),

                  //SIGN UP Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account ? ',
                      ),
                      TextButton(
                          onPressed: () {
                            // navigateTo(context, const SignUp());
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.red),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
