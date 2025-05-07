import 'package:block_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final String buttonText ;
  const AuthGradientButton
  ({Key? key,required this.buttonText}); 
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
       gradient:  LinearGradient(
          colors: [
             AppPallete.gradient3,
             AppPallete.gradient2,
             AppPallete.gradient1,
             AppPallete.gradient2,
             AppPallete.gradient3,  
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: AppPallete.transparentColor,
          shadowColor: AppPallete.transparentColor,
        ),
        onPressed: () {},
        child:  Text(
          buttonText,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
          color: Colors.white),),
      ),
    );
  }
}