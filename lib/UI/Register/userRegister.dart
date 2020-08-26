import 'package:flutter/material.dart';
import 'package:loginpage/UI/HomePage/home_widget.dart';
import 'package:loginpage/Api_Request/post_result_login.dart';
import 'package:loginpage/UI/Login/dialogBoxLogin.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';


class UserRegister extends StatefulWidget {
  @override
  _UserRegisterState createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  PostResult login;
  DialogBox dialogBox;
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: getSmallDiameter(context) / 7,
            top: getSmallDiameter(context) / 3,
            child: Container(
              child: Center(
                child: Text("CowzasZy",
                    style:
                        TextStyle(fontSize: 20.0, color: Colors.amberAccent)),
              ),
              width: getSmallDiameter(context) / 1.4,
              height: getSmallDiameter(context) / 1.4,
              decoration: new BoxDecoration(
                borderRadius:
                    new BorderRadius.circular(getSmallDiameter(context) / 2),
                border: new Border.all(
                  width: 5.0,
                  color: Colors.amberAccent,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        onChanged: (phone) {
                          setState(() {});
                        },
                        controller: phoneNumber,
                        decoration: InputDecoration(
                          icon: Icon(Icons.email, color: Colors.green),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                          labelText: "Email/No. Telepon : ",
                          labelStyle: TextStyle(color: Colors.green),
                        ),
                      ),
                      TextField(
                        onChanged: (passw) {
                          setState(() {});
                        },
                        controller: password,
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(Icons.email, color: Colors.green),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                          labelText: "Password: ",
                          labelStyle: TextStyle(color: Colors.green),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.65,
                    height: 45,
                    child: RaisedButton(
                      color: Colors.amberAccent,
                      onPressed: () {
                        PostResult.connectToApI(phoneNumber.text, password.text)
                            .then((value) {
                          login = value;
                          setState(() async {
                            (login.message == null)
                                ? Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                    return Home();
                                  }))
                                : await DialogBox.showCustomAlertBox(
                                    context: context,
                                    firstButton: MaterialButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      color: Colors.white,
                                      child: Text('Ok'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    yourWidget: Container(
                                      child: Text(login.message),
                                    ));
                          });
                        });
                      },
                      child:
                          Text("Login", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}