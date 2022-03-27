import 'package:flutter/material.dart';
import 'login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(25),
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.library_add, color: Colors.white, size: 33,),
                        ),
                        //SizedBox(height: 1,),
                        Text('Friends', style: TextStyle(
                          color: Colors.white,
                          fontFamily: "OpenSans",
                          fontSize: 17,
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(25),
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                          },
                          icon: Icon(Icons.logout, color: Colors.white, size: 33,),
                        ),
                        //SizedBox(height: 1,),
                        Text('Logout', style: TextStyle(
                          color: Colors.white,
                          fontFamily: "OpenSans",
                          fontSize: 17,
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100,),
              Stack(
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      height: 300,
                      width: 300,
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 21),
                      child: MaterialButton(
                        height: 258,
                        minWidth: 258,
                        color: Color.fromRGBO(245, 240, 240, 1),
                        onPressed: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => AddContact()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(200)
                        ),
                        child: Text('Press if Unsafe', style: TextStyle(
                          color: Color.fromRGBO(72,84,102, 1),
                          fontFamily: "OpenSans",
                          fontSize: 22,
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
