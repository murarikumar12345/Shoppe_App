import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoppe/screen/setup_newpassword.dart';
class PassworRecovery extends StatefulWidget {
  const PassworRecovery({super.key});

  @override
  State<PassworRecovery> createState() => _PassworRecoveryState();
}

class _PassworRecoveryState extends State<PassworRecovery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                height: 250,
                decoration: const BoxDecoration(
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
                padding: const EdgeInsets.only(top: 300),
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
                        'Enter 4-digits code we sent you',
                        style: TextStyle(color: Color(0xff000000), fontSize: 19),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Center(
                      child: Text(
                        'on your phone number',
                        style: TextStyle(color: Color(0xff000000), fontSize: 19),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        '+91**********',
                        style: TextStyle(color: Color(0xff000000), fontSize: 19),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:450, left:75),
                child: Container(
                  width: 220,
                  height:30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height:30,
                        width: 30,
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
                          keyboardType: TextInputType.number,
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
                        height:30,
                        width: 30,
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
                        width: 12,
                      ),
                      Container(
                        height:30,
                        width: 30,
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
                          keyboardType: TextInputType.number,
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
                        height:50,
                        width: 30,
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
            padding: const EdgeInsets.only(top:500,left: 55),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>const SetupNewpassword()),

                );
              },
              child: Container(
                width: 250,
                height: 51,
                decoration: BoxDecoration(
                  color: Color(0xffFF5790),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                      'Send Again',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w400),
                    )
                ),
              ),
            ),
          ),
              Padding(
                padding: const EdgeInsets.only(top:550),
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
      ),
    );
  }
}
