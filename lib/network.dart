import 'package:flutter/material.dart';
import 'add_contact.dart';
import 'home.dart';

class SafetyNetwork extends StatefulWidget {
  final int contact;

  SafetyNetwork(
      this.contact,
      );

  @override
  _SafetyNetworkState createState() => _SafetyNetworkState();
}

class _SafetyNetworkState extends State<SafetyNetwork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            //padding: EdgeInsets.only(top: 45, bottom: 35),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                colors: [
                  const Color.fromRGBO(72,84,102, 1),
                  const Color.fromRGBO(22,29,40, 1),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight,
              ),
            ),
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("My Safety Network",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: "OpenSans"
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("Allow your trusted friends to find you, no matter what happens",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "OpenSans"
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          widget.contact==1 ? Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddContact(true)));
              },
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Kaushik Indukuri",
                      style: TextStyle(
                          color: Color.fromRGBO(72,84,102, 1),
                          fontSize: 24,
                          fontFamily: "OpenSans"
                      ),
                    ),
                    SizedBox(height: 1,),
                    Text("+1(925)-577-3393",
                      style: TextStyle(
                          color: Color.fromRGBO(72,84,102, 1),
                          fontSize: 16,
                          fontFamily: "OpenSans"
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 17, top: 8, bottom: 8),
                      height: 1,
                      width: double.infinity,
                      color: Color.fromRGBO(72,84,102, 1),
                    )
                  ],
                ),
              ),
            ),
          ) : Container(),
          Row(
            children: [
              SizedBox(width: 10,),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddContact(false)));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  children: [
                    Icon(Icons.add, color: Color.fromRGBO(72,84,102, 1)),
                    Text('Add a friend', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(72,84,102, 1),
                    ),),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
        },
        backgroundColor: Colors.white,
        child: Icon(Icons.arrow_forward, color: Color.fromRGBO(72,84,102, 1),),
      ),
    );
  }
}
