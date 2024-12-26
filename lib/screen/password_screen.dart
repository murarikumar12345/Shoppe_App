import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoppe/screen/password_typing_screen.dart';

import '../main.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/login.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 150, left: 150),
                child: CircleAvatar(
                  radius: 50,
                  child: Image(
                    image: AssetImage('images/passwordimg.png'),
                    width: 100,
                    height: 90,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Hello, Romina!!',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: Text(
                        'Type  your password',
                        style:
                            TextStyle(color: Color(0xff000000), fontSize: 19),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 350),
                child: Form(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 68,
                        width: 64,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          )),
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 68,
                        width: 64,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          )),
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 68,
                        width: 64,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          )),
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 68,
                        width: 64,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          )),
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 600),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Not you?',
                        style:
                            TextStyle(color: Color(0xff202020), fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                         MaterialPageRoute(builder: (context)=>PasswordTypingScreen()),
                        );
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color(0xff004CFF),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(Icons.forward,
                            color: Colors.white,
                          ),
                      ),
                    ),
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
