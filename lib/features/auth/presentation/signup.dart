import 'package:bloc/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sign Up", style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 30,),
            AuthField(hint: "Name"),
            SizedBox(height: 15,),
            AuthField(hint: "Email"),
            SizedBox(height: 15,),
            AuthField(hint: "Password")
          ],
        ),
      ),
    );
  }
}
