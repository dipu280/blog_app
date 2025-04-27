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
    return const Scaffold(
        
        body: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Signup.',
                style: TextStyle(
                  fontSize: 50,
                
                 fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
                 AuthField(hintText: 'Name', ),
                 SizedBox(height: 10,),
                 AuthField(hintText: 'Email',),
                 SizedBox(height: 10,),
                 AuthField(hintText: 'Passowrd',),
                 SizedBox(height: 20,),
                 AuthGradientButton()
            ],
          ),
        ),
        );
    
  }
}