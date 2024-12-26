import 'package:flutter/material.dart';
import 'package:shoppe/screen/password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                height: 450,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('images/login.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 380),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Login ',
                        style: TextStyle(
                            color: Color(0xff202020),
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                            child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Good to see you back!'),
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.heart_broken_rounded,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(color: Colors.black),
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child:GestureDetector(
                        onTap:(){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>const PasswordScreen()),
                          );
                        } ,
                        child: Container(
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xff004CFF),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Center(
                              child: Text(
                            'Next',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          )),
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Center(
                            child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
