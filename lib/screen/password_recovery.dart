import 'package:flutter/material.dart';
import 'package:shoppe/screen/mobileno_password.dart';

class PasswordRecoveryScreen extends StatefulWidget {
  const PasswordRecoveryScreen({super.key});

  @override
  State<PasswordRecoveryScreen> createState() => _PasswordRecoveryScreenState();
}

class _PasswordRecoveryScreenState extends State<PasswordRecoveryScreen> {
  bool? isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 210,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/login.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 200, left: 130),
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
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: Text(
                      'Password Recovery',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Center(
                    child: Text(
                      'How  you would like to restore',
                      style: TextStyle(color: Color(0xff000000), fontSize: 19),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Center(
                    child: Text(
                      'your password?',
                      style: TextStyle(color: Color(0xff000000), fontSize: 19),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 415),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 199,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffE5EBFC),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Text(
                            'Mobile no',
                            style: TextStyle(
                                color: Color(0xff000000), fontSize: 18),
                          )),
                          SizedBox(
                            width: 50,
                          ),
                          Checkbox(
                            side: BorderSide(width: 30, color: Colors.green),
                            // activeColor:Color(),
                            value: isChecked,
                            hoverColor: Colors.red,
                            shape: CircleBorder(),
                            fillColor: WidgetStateProperty.resolveWith<Color>(
                                (Set<WidgetState> states) {
                              if (states.contains(WidgetState.disabled)) {
                                return Color(0xff004CFF).withOpacity(.32);
                              }
                              return Color(0xff004CFF);

                            }),
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked=value;
                              });
                            },

                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Container(
                      width: 199,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF8CECE),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Text(
                            'Email',
                            style: TextStyle(
                                color: Color(0xff000000), fontSize: 18),
                          )),
                          SizedBox(
                            width: 50,
                          ),
                          Checkbox(
                            side: BorderSide(width: 30, color: Colors.green),
                            // activeColor:Color(),
                            value: isChecked,
                            hoverColor: Colors.red,
                            shape: CircleBorder(),
                            fillColor: WidgetStateProperty.resolveWith<Color>(
                                (Set<WidgetState> states) {
                              if (states.contains(WidgetState.disabled)) {
                                return Color(0xff004CFF).withOpacity(.32);
                              }
                              return Color(0xff004CFF);
                            }),
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked=value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 540, left: 20, right: 20),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>const PassworRecovery())

                  );
                },
                child: Container(
                  width: 335,
                  height: 61,
                  decoration: BoxDecoration(
                    color: Color(0xff004CFF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w400),
                  )),
                ),
              ),
            ),
            SizedBox(
              height:10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 600),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Cancel',
                        style: TextStyle(color: Color(0xff202020), fontSize: 15)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
