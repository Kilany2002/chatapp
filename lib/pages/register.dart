import 'package:flutter/material.dart';
import '../services/auth/auth_service.dart';
import '../widget/my_button.dart';
import '../widget/text_field.dart';
import 'login.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final authService = AuthService();

  void register(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
              child: CircularProgressIndicator(
                color: Colors.teal,
              ));
        });

    authService.register(context, emailController.text, passwordController.text,
        confirmPasswordController.text);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Icon(
                  Icons.lock,
                  color: Colors.teal,
                  size: 100,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Welcome back you\'ve been missed',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                const SizedBox(
                  height: 24,
                ),
                MyTextfield(
                  text: 'Email',
                  controller: emailController,
                  obsecureText: false,
                ),
                MyTextfield(
                    controller: passwordController,
                    text: 'Password',
                    obsecureText: true),
                MyTextfield(
                    controller: confirmPasswordController,
                    text: 'Confirm Password',
                    obsecureText: true),
                MyButton(
                  text: 'Register',
                    onTap: () => register(context)                ),

                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Had an account?'),
                    SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )

              ],
            ),
          )),
    );
  }
}