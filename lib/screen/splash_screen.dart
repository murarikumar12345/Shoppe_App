import 'package:flutter/material.dart';
import 'package:shoppe/screen/first_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),

      body: SafeArea(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             const Center(
               child: Padding(
                 padding: EdgeInsets.symmetric(horizontal:50),
                 child: CircleAvatar(
                   radius:60 ,
                  backgroundColor: Color(0xffFFFFFF),
                  child: Icon(Icons.shopping_bag_sharp,color: Color(0xff0051FF),
                  size:100,
                  ),
                 ),
               ),
             ),
             const Text('Shoppe',style: TextStyle(color: Color(0xff202020),fontSize:40,fontWeight: FontWeight.bold),),
             const SizedBox(
               height: 10,
             ),
             const Text('Beautiful eCommercw UI Kit',style: TextStyle(color:Color(0xff202020)),),
             SizedBox(
               height:5,
             ),
             const Text('for your online store',style: TextStyle(color: Color(0xff202020)),),
             const SizedBox(
               height: 80,
             ),
               GestureDetector(
                 onTap: (){
                   Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>FirstScreen()),
                   );
                 },
                 child: Container(
                   width: 300,
                   height:50,
                   decoration: BoxDecoration(
                     color: const Color(0xff004CFF),
                     borderRadius: BorderRadius.circular(20),
                   ),
                   child: const Center(child: Text('Let s get started',style: TextStyle(color:Color(0xffF3F3F3),fontSize:20 ),)),

                 ),
               ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Center(child: Text('i already have an account',style:TextStyle(color: Colors.blueGrey),)),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                        child: Icon(Icons.arrow_circle_right,color:Color(0xff004CFF),),
                      
                    ),
                  ],
                ),
 
           ],
         ),
       ),

    ) ;
  }


}
