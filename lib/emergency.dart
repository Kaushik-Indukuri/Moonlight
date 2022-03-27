import 'package:flutter/material.dart';
import 'home.dart';

class EmergencyMessage extends StatefulWidget {
  @override
  _EmergencyMessageState createState() => _EmergencyMessageState();
}

class _EmergencyMessageState extends State<EmergencyMessage> {
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
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 33,),
          ),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Text('Your security network has been contacted, sit tight and wait for help', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
