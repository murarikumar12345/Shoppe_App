import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoppe/screen/password_recovery.dart';
class PasswordTypingScreen extends StatefulWidget {
  const PasswordTypingScreen({super.key});

  @override
  State<PasswordTypingScreen> createState() => _PasswordTypingScreenState();
}

class _PasswordTypingScreenState extends State<PasswordTypingScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                height: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/login.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(top: 150,left: 150),
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
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top:15),
                        child: Text(
                          'Hello, Romina!!',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top:40),
                        child: Text(
                          'Type  your password',
                          style:
                          TextStyle(color: Color(0xff000000), fontSize: 19),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:395, left:75),
                child: Container(
                  width: 220,
                  height: 17,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height:17,
                        width: 17,
                        decoration: BoxDecoration(
                          color: Color(0xff004BFE),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              )),
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height:17,
                        width: 17,
                        decoration: BoxDecoration(
                          color: Color(0xff004BFE),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              )),
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height:17,
                        width: 17,
                        decoration: BoxDecoration(
                          color: Color(0xff004BFE),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              )),
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height:17,
                        width: 17,
                        decoration: BoxDecoration(
                          color: Color(0xff004BFE),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              )),
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height:17,
                        width: 17,
                        decoration: BoxDecoration(
                          color: Color(0xff004BFE),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              )),
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height:17,
                        width: 17,
                        decoration: BoxDecoration(
                          color: Color(0xffE5EBFC),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              )),
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height:17,
                        width: 17,
                        decoration: BoxDecoration(
                          color: Color(0xffE5EBFC),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              )),
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height:17,
                        width: 17,
                        decoration: BoxDecoration(
                          color: Color(0xffE5EBFC),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              )),
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.text,
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
                        'Forgot  your password',
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
                          MaterialPageRoute(builder: (context)=>const PasswordRecoveryScreen()),
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
