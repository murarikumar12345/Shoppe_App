import 'package:flutter/material.dart';
class SetupNewpassword extends StatefulWidget {
  const SetupNewpassword({super.key});

  @override
  State<SetupNewpassword> createState() => _SetupNewpasswordState();
}

class _SetupNewpasswordState extends State<SetupNewpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
            const Padding(
              padding: EdgeInsets.only(top:150, left: 130),
              child: CircleAvatar(
                radius: 50,
                child: Image(
                  image: AssetImage('images/passwordimg.png'),
                  width: 100,
                  height: 90,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Setup New password',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: Text(
                      'Please,setup a new password for ',
                      style: TextStyle(color: Color(0xff000000), fontSize: 19),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Center(
                    child: Text(
                      'your account ',
                      style: TextStyle(color: Color(0xff000000), fontSize: 19),
                    ),
                  ),


                ],
              ),
            ),
            Container(
              width:
            ),

          ],
        ),
      ),
    );
  }
}
