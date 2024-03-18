import 'package:alihjenjang_udaskincare/screen_pages/page_login.dart';
import 'package:alihjenjang_udaskincare/screen_pages/page_register.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.jpeg'),
                fit: BoxFit.cover
              )
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2)
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: 280,),
                    Image(image: AssetImage('images/logo_udaskin.png',
                    ),
                    height: 55,)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)
                          => PageLogin()
                        ));
                      },
                      child: Container(
                        width: 320,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: Text('Sign In',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)
                        => PageRegister()
                        ));
                      },
                      child: Container(
                        width: 320,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff333333),
                          // color: Color(0xffF2F2F2),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                                color: Color(0xffF2F2F2),
                              // color: Color(0xff333333),
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 80,)
              ],
            ),

          )
        ],
      ),
    );
  }
}
