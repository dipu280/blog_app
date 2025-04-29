import 'package:block_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:block_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
   // _formKey.currentState!.validate();
    return Scaffold(
        
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Signup.',
                  style: TextStyle(
                    fontSize: 50,
                  
                   fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                    AuthField(
                    hintText: 'Name',
                    controller: nameController,
                     ),
                   const SizedBox(height: 10,),

                   AuthField(
                    hintText: 'Email',
                    controller: emailController,
                    ),
                   const SizedBox(height: 10,),

                   AuthField(
                    hintText: 'Passowrd',
                    controller: passwordController,
                    ),
                   const SizedBox(height: 20,),

                   const AuthGradientButton(),
                   const SizedBox(height: 20,),

                   RichText(
                    text:  TextSpan(
                      text: 'Don\'t have an account?',
                      style:const TextStyle(
                        fontSize: 16,
                        color: Colors.pinkAccent,
                      ),
                      children: [
                        TextSpan(
                          text: ' Sign in',
                          
                          style:Theme.of(context).textTheme.titleMedium ?.copyWith(
                            fontSize: 16,
                            color: Colors.blueAccent                                                                                                                                                                                                                               ,
                            fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                   ),
            
              ],
            ),
          ),
        ),
        ));
    
  }
}