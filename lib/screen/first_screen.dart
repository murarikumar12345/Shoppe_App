import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:shoppe/screen/login_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/Bubbles.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20),
                child: Text(
                  'Create \n Account',
                  style: TextStyle(
                      color: Color(0xff202020),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 200, left: 20),
                    child: Image(
                      image: AssetImage('images/upload.png'),
                      height: 70,
                      width: 80,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 290, left: 20),
                child: Column(
                  children: [
                    Container(
                      width: 330,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffD2D2D2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: const TextField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Email',
                            labelStyle: TextStyle(color: Colors.black),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            prefixIcon: Icon(Icons.email),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 330,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xffD2D2D2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Password',
                            labelStyle: TextStyle(color: Colors.black),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            suffixIcon: Icon(Icons.remove_red_eye_rounded),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 330,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffD2D2D2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IntlPhoneField(
                        decoration: const InputDecoration(
                          labelText: 'Phone number',
                          hintText: 'Phone number',
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                        initialCountryCode: 'In',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 25),
                      child: GestureDetector(
                         onTap: (){
                           Navigator.push(context, 
                             MaterialPageRoute(builder: (context)=>const LoginScreen()),
                           
                           );
                         },
                        child: Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xff004CFF),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                              child: Text(
                            'Done',
                            style:
                                TextStyle(color: Color(0xffF3F3F3), fontSize: 22),
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: Colors.black, fontSize: 15),
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
