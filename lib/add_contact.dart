import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'network.dart';

class AddContact extends StatefulWidget {
  final bool filled;

  AddContact(
      this.filled,
      );

  @override
  _AddContactState createState() => _AddContactState();
}

String _username = '';

class _AddContactState extends State<AddContact> {
  TextEditingController firstname = new TextEditingController();
  TextEditingController lastname = new TextEditingController();
  TextEditingController number = new TextEditingController();

  updateContact(){
    setState(() {});
    firstname = TextEditingController(text: "Kaushik");
    lastname = TextEditingController(text: "Indukuri");
    number = TextEditingController(text: "9255773393");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.filled ? updateContact() : null;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        leading: Container(
          margin: EdgeInsets.only(left: 15),
          child: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Color.fromRGBO(72,84,102, 1), size: 20,),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: size.width*0.5,
                child: Icon(Icons.person_outline, color: Color.fromRGBO(72,84,102, 1), size: 100,)
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: firstname,
                  obscureText: false,
                  decoration: InputDecoration(
                      labelText: "First Name"
                  ),
                ),
              ),
              SizedBox(height: size.height*0.03,),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: lastname,
                  obscureText: false,
                  decoration: InputDecoration(
                      labelText: "Last Name"
                  ),
                ),
              ),
              SizedBox(height: size.height*0.035,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    CountryCodePicker(
                      initialSelection: 'US',
                      showCountryOnly: false,
                      showOnlyCountryWhenClosed: false,
                      favorite: ['+91', 'IN'],
                    ),
                    Text('|', style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                    ),),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right:8),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          controller: number,
                          obscureText: false,
                          decoration: InputDecoration(
                              labelText: "Phone number"
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height*0.055,),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SafetyNetwork(1)));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: size.width * 0.5,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(80.0),
                        gradient: new LinearGradient(
                            colors: [
                              const Color.fromRGBO(72,84,102, 1),
                              const Color.fromRGBO(22,29,40, 1),
                            ]
                        )
                    ),
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "SAVE",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}