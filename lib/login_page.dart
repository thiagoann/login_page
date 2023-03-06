// ignore_for_file: avoid_print, unnecessary_string_interpolations


import 'package:flutter/material.dart';
import 'welcome_page.dart';
//import 'path_provider.dart';

class LoginPage extends StatefulWidget{
  final String? title;
  @override
  LoginPageState createState() => LoginPageState();
  const LoginPage({super.key, required this.title});
}

class LoginPageState extends State<LoginPage> {
  bool hidden = true;
  
  
  @override
  Widget build(BuildContext context) {

    final logo = Padding(
        padding: const EdgeInsets.all(10),
        child: Hero(
            tag: 'UERJ',
            child: SizedBox(
                height: 200,
                child:
                    Image.asset('images/cropped-logomarca-uerj-250x250.png'))));

    final inputMatricula = Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            hintText: 'Matricula',
            contentPadding:
                 const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            border: 
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
      ),

    );

    final inputPassword = Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: hidden,
        decoration: InputDecoration(
          hintText: 'Password',
          suffix: InkWell(
            onTap: togglePasswordView,
            child:  Icon(hidden ? Icons.visibility: Icons.visibility_off),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
        ),
      ),
    );

     final buttonLogin = Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: ElevatedButton(
          child: Container(decoration: ShapeDecoration (shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
            )
            ),
          child: const Text('Login', style: TextStyle(color: Colors.white, fontSize: 20)),
          ), 
          onPressed: () { 
          Navigator.push(context, MaterialPageRoute(builder: (context)=> WelcomePage()));
          
          },
          )
        ),
      );
      
      final buttonForgotPassword = TextButton(
        child: const Text('Forgot password?', style: TextStyle(color: Colors.grey, fontSize: 15),),
        onPressed: () {},
      );

    return Scaffold(
        body: Center(
            child: ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: <Widget>[
        logo,
        inputMatricula,
        inputPassword,
        buttonLogin,
        buttonForgotPassword
      ],
    )));
  }

  void togglePasswordView(){
    setState(() {
      hidden = !hidden;
    });
  }
}