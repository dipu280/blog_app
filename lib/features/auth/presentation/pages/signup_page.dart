import 'package:block_app/features/auth/presentation/widgets/auth_field.dart' show AuthField;
import 'package:block_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
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
                 const AuthField(hintText: 'Name', ),
                 const SizedBox(height: 10,),
                 const AuthField(hintText: 'Email',),
                 const SizedBox(height: 10,),
                 const AuthField(hintText: 'Passowrd',),
                 const SizedBox(height: 20,),
                 const AuthGradientButton(),
                 const SizedBox(height: 20,),
                 RichText(
                  text:  TextSpan(
                    text: 'Dont have an account?',
                    style:const TextStyle(
                      fontSize: 16,
                      color: Colors.pinkAccent,
                    ),
                    children: [
                      TextSpan(
                        text: ' Sign in',
                        
                        style:Theme.of(context).textTheme.titleMedium ?.copyWith(
                          fontSize: 18,
                          color: Colors.blueAccent                                                                                                                                                                                                                               ,
                          fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                 ),

            ],
          ),
        ),
        );
    
  }
}