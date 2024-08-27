import 'package:bloc/core/app_pallet.dart';
import 'package:bloc/features/auth/presentation/pages/sign_in.dart';
import 'package:bloc/features/auth/presentation/widgets/auth_button.dart';
import 'package:bloc/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  static route()=> MaterialPageRoute(builder: (context)=> Signup());
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sign Up", style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 30,),
              AuthField(hint: "Name",controller: nameController,),
              SizedBox(height: 15,),
              AuthField(hint: "Email", controller:  emailController,),
              SizedBox(height: 15,),
              AuthField(hint: "Password", controller:  passwordController,isPass: true,),
              SizedBox(height: 20,),
              AuthButton(title: "Sign Up.",),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, SignIn.route());
                },
                child: RichText(text: TextSpan(
                  text: 'Allergy have an account login ? ',
                  style:  Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                      text: "Login",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppPallete.gradient2
                      )
                    )
                  ]

                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
