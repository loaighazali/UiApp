import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../weidght/app_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late TextEditingController _emailTextControllar ;
  late TextEditingController _passwordTextControllar ;
  String? _errorEmail ;
  String? _errorPassword ;

  @override
  void initState() {
    // TODO: implement initState
    _emailTextControllar = TextEditingController();
    _passwordTextControllar = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextControllar.dispose();
    _passwordTextControllar.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Login',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 30),
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcom back...',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Enter email & password',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                AppTextField(
                    hintText: 'Email' ,
                    perfIcon: Icons.email ,
                    textInputType: TextInputType.emailAddress,
                  textEditingController: _emailTextControllar,
                  textError: _errorEmail,
                ),

                const SizedBox(
                  height: 30,
                ),

                AppTextField(
                  hintText: 'Password' ,
                  perfIcon: Icons.lock ,
                  textInputType: TextInputType.text,
                  textEditingController: _passwordTextControllar,
                  textError: _errorPassword,
                  obckuor: true,
                ),

                const SizedBox(
                  height: 30,
                ),

                ElevatedButton(
                    onPressed: () => performLogin(),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(350, 20),
                    backgroundColor: Colors.blue,
                  ),
                    child:const  Text(
                        'Login',
                    style: TextStyle(
                    color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void performLogin(){
    if(checkData()){
      login();
    }
  }

  bool checkData (){
    if(_emailTextControllar.text.isNotEmpty &&
        _passwordTextControllar.text.isNotEmpty){
      checkError();
      return true ;
    }
    checkError();
    masseage(messag: 'Enter email & password');
    return false ;
  }

  void checkError (){
    setState(() {
     _errorEmail =  _emailTextControllar.text.isEmpty ? 'Enter Email Adress' : null ;
     _errorPassword =  _passwordTextControllar.text.isEmpty ? 'Enter Password' : null ;
    });
  }



  void login(){
    masseage(messag: 'Successfully' , error:true );
    Future.delayed(const Duration(seconds: 2),() {
      Navigator.pushReplacementNamed(context, '/main_screen' ,);
    },);
  }

  void masseage ({required String messag , bool error = false}){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(messag, ),
        backgroundColor: error ? Colors.green: Colors.red,
        duration:const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}


