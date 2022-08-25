import 'package:deepsbeercafe/Screens/signin_screen.dart';
import 'package:flutter/material.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 350,
            width: size.width,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/beercafe.png',
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    'deeps',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'B E E R C A F E',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 1),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xffFFB901),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit... ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Signinscreen()));
                        },
                        child: Container(
                           height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(25)
                          ),
                          child: Center(
                            child: Text('Sign in',style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 3,
                              offset: Offset(0,2),
                            )
                          ]
                        ),
                        child: Center(
                          child: Text('Sign up',style: TextStyle(color: Colors.black),),
                        ),
                      ),

                    ),
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
