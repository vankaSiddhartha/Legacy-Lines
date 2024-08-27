import "package:bloc/core/app_pallet.dart";
import "package:bloc/features/auth/presentation/pages/signup.dart";
import "package:bloc/features/auth/presentation/widgets/auth_button.dart";
import "package:bloc/features/auth/presentation/widgets/auth_field.dart";
import "package:flutter/material.dart";
class SignIn extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context)=> SignIn());
  const SignIn({super.key});


  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      body: Form(

        key: formKey,

          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sign In.",
                  style:  TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color:  Colors.white,
                  ),

                ),
                SizedBox(height: 20,),
                AuthField(hint: "Email", controller: emailController),
                SizedBox(height: 15,),
                AuthField(hint: "Password", controller: passwordController, isPass: true,),
                SizedBox(height: 20,),
                AuthButton(title: "Sign In."),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                   Navigator.push(context, Signup.route());
                  },
                  child: RichText(text: TextSpan(text: "Don't have an account ? ", style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: "Sign Up",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppPallete.gradient2
                        )
                      )
                    ]


                  ),


                  ),
                )


              ],
            ),
          ) )
    );
  }
}
