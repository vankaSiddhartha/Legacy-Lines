import 'package:bloc/core/app_pallet.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String title;
  const AuthButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
          AppPallete.gradient1,
          AppPallete.gradient2
        ],
          begin: Alignment.bottomLeft,
          end:  Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton(

        onPressed: () {},
        child: Text(title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 17,

          ), ),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(355,55),
          backgroundColor: AppPallete.transparentColor,
          shadowColor: AppPallete.transparentColor,
        ),
      ),
    );
  }
}
