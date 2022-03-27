// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'network.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
          const Color.fromRGBO(72,84,102, 1),
          const Color.fromRGBO(22,29,40, 1),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                Stack(
                  children: [
                    Positioned(
                      left: 10,
                      child: SizedBox(
                        child: Image.asset('assets/cloud1.png', height: 150, width: 150,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 30),
                      child: SizedBox(
                        width: double.infinity,
                        child: Image.asset('assets/moon.png', height: 250, width: 250,),
                      ),
                    ),
                    Positioned(
                        bottom: -30,
                        right: 20,
                        child: Image.asset('assets/cloud2.png', height: 190, width: 190,)
                    ),
                  ],
                ),
                Text("Welcome to",
                  style: TextStyle(
                    fontFamily: "OpenSans",
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                ),
                Text("MOONLIGHT",
                  style: TextStyle(
                    fontFamily: "OpenSansEB",
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 50,
                    letterSpacing: 4,
                  ),
                ),
                SizedBox(height: 22,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                  child: TextFormField(
                    //style: TextStyle(color: Colors.white),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Username",
                      hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                      prefixIcon: Icon(Icons.person_outline, color: Colors.black,),
                      contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.white)
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.white)
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                  child: TextFormField(
                    //style: TextStyle(color: Colors.white),
                    cursorColor: Colors.black,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                      prefixIcon: Icon(Icons.lock_outline, color: Colors.black,),
                      contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.white)
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.white)
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SafetyNetwork(0)));
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.white, width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                      ),
                      padding: EdgeInsets.all(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Continue', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),),
                        SizedBox(width: 3,),
                        Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
