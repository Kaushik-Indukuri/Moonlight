import 'package:flutter/material.dart';
import 'dart:async';
import 'login.dart';
import 'emergency.dart';

class TimerScreen extends StatefulWidget {
  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  static const maxSeconds = 10;
  int seconds = maxSeconds;
  Timer? timer;

  void startTimer(){
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() {
        seconds--;
      });
      if (seconds == 0) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => EmergencyMessage()));
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: buildTimer()),
            SizedBox(height: 80,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
              child: TextFormField(
                //style: TextStyle(color: Colors.white),
                cursorColor: Colors.black,
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Re-type password to cancel",
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
            SizedBox(height:10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.white, width: 2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                ),
                child:Text('Done', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTimer() => SizedBox(
    height: 200,
    width: 200,
    child: Stack(
      fit: StackFit.expand,
      children: [
        CircularProgressIndicator(
          value: seconds/maxSeconds,
          strokeWidth: 12,
          valueColor: AlwaysStoppedAnimation(Colors.white),
        ),
        Center(child: buildTime(),),
      ],
    ),

  );

  Widget buildTime(){
    return Text('$seconds',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 80,
        fontFamily: 'OpenSansLight',
      ),
    );
  }
}
