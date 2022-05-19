import 'package:carpooling_app/Widget/textfiled.dart';
import 'package:flutter/material.dart';

import '../../Widget/Button.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

late TextEditingController _phoneEditingController;
late TextEditingController _passwordEditingController;
String? errorTextPhone;
String? errorTextPassword;
bool password = true;

class _SignInState extends State<SignIn> {
  void initState() {
    // TODO: implement initState
    super.initState();
    _phoneEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _phoneEditingController.dispose();
    _passwordEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'images/logored.png',
            height: 290,
            width: 290,
          ),
          TextFiledWidget(
              controller: _phoneEditingController,
              hintText: 'رقم الموبايل',
              icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.phone_android_outlined)),
              errorText: errorTextPhone,
              keyboardType: TextInputType.phone),
          const SizedBox(
            height: 6,
          ),
          TextFiledWidget(
              controller: _passwordEditingController,
              hintText: 'كلمة المرور',
              obscureText: password,
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    password = !password;
                    Future.delayed(const Duration(milliseconds: 700), () {
                      if (password == false) {
                        setState(() {
                          password = true;
                        });
                      }
                    });
                  });
                },
                icon: Icon(
                    password == true ? Icons.visibility_off : Icons.visibility),
              ),
              errorText: errorTextPassword,
              keyboardType: TextInputType.text),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ForgetPassword_Screen');
              },
              child: const Text(
                'نسيت كلمة المرور',
                style: TextStyle(color: Colors.black45, fontSize: 14),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Button(
            text: 'الدخول للتطبيق',
            onPressed: () {
              //signIn();
              checkTextFiledEmpty();
            },
          ),
        ],
      ),
    );
  }

  // void signIn() {
  //   if (checkTextFiledEmpty()) {
  //     Navigator.pushNamed(context, '/Signup_Screen');
  //   }
  // }

  bool checkTextFiledEmpty() {
    if (_phoneEditingController.text.isNotEmpty &&
        _passwordEditingController.text.isNotEmpty) {
      errorTextFiled();
      return true;
    } else {
      errorTextFiled();
      return false;
    }
  }

  void errorTextFiled() {
    setState(() {
      errorTextPhone =
          _phoneEditingController.text.isEmpty ? 'Phone field is empty' : null;
      errorTextPassword = _passwordEditingController.text.isEmpty
          ? 'Password field is empty'
          : null;
    });
  }
}
