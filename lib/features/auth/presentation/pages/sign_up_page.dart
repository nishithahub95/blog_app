

import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/features/auth/presentation/pages/login_page.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradiant_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  static route()=> MaterialPageRoute(builder: (context)=>const LoginPage());
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey=GlobalKey<FormState>();
  final emailController=TextEditingController();
  final nameController=TextEditingController();
  final passwordController=TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    nameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Sign up.',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
              const SizedBox(height: 30,),
              AuthField(hintText: 'Name',controller: nameController,),
              const SizedBox(height: 15,),
              AuthField(hintText: 'Email',controller: emailController,),
              const SizedBox(height: 15,),
              AuthField(hintText: 'Password',controller: passwordController,isObscureText: true,),
              const SizedBox(height: 20,),
              const AuthGradiantButton(buttonText: 'Sign Up',),
              const SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,SignUpPage.route());
                },
                child: RichText(text: TextSpan(
                  text: 'Already an account? ',
                  style:Theme.of(context).textTheme.titleMedium,
                  children:  [
                    TextSpan(
                      text: 'Sign In',
                      style:Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppPallete.gradient2,
                        fontWeight: FontWeight.bold
                      ),
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
