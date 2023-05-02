import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'homescreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/loginimg.jpg'),
                fit: BoxFit.cover),
          ),
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 0.9,
              color: Color(0x80000000),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 20),
                  //   child: Text(
                  //     "Login",
                  //     style: TextStyle(color: Colors.white, fontSize: 40),
                  //   ),
                  // ),
                  Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white, width: 2.0)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white, width: 2.0)))),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white, width: 2.0)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white, width: 2.0)))),
                  ),
                  SizedBox(height: 40,),

                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),
                      color: Colors.white
                      ),
                      child: Center(child: const Text("Login", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
