import 'package:block_app/features/auth/presentation/widgets/auth_field.dart' show AuthField;
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
        
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Signup.',
              style: TextStyle(
                fontSize: 50,
              
               fontWeight: FontWeight.bold),
            ),
               AuthField(

            hintText: 'Email',
          ),
          ],
        )
        );
    
  }
}