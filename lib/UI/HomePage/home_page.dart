import 'package:flutter/material.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:loginpage/Api_Request/post_result_login.dart';
import 'package:loginpage/Icon/motor_icons.dart';
import 'package:loginpage/Icon/car_icons.dart';
import 'package:loginpage/UI/ZyRide/zy_ride.dart';
import 'package:page_transition/page_transition.dart';
import 'package:loginpage/Api_Request/hive_userData.dart';

class MyApp extends StatefulWidget {
  @override
  HomeScreen createState() {
    //debugShowCheckedModeBanner: false;
    return HomeScreen();
  }
}

final List<String> imgList = [
  'assets/Gambar',
  'assets/surat.jpg',
  'assets/borobudur',
  'assets/borobudur2',
];

class HomeScreen extends State<MyApp> {
  PostResult loginPost;
  //OjekMotor ojekMotor ;
  UserData userdata;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Container(
                width: double.infinity,
                color: Color(0xFFFFF7B81E),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(userdata.fullname),
                    Text(userdata.phoneNumber.toString()),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: Row(
                children: <Widget>[
                  Flexible(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ButtonTheme(
                                    minWidth: 60,
                                    height: 60,
                                    child: Center(
                                      child: RaisedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            PageTransition(
                                                child: ZyRide(),
                                                type: PageTransitionType
                                                    .rightToLeft),
                                          );
                                        },
                                        child: Icon(
                                          Motor.motorcycle_fix,
                                          size: 30,
                                        ),
                                        color: Color(0xFFFFF7B81E),
                                        shape: new CircleBorder(
                                            side: BorderSide(
                                                color: Color(0xFFFFF7B81E))),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text("Zy Ride"),
                                ]),
                          ),
                          Flexible(
                            flex: 1,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ButtonTheme(
                                    minWidth: 60,
                                    height: 60,
                                    child: Center(
                                      child: RaisedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            PageTransition(
                                                child: ZyRide(),
                                                type: PageTransitionType
                                                    .rightToLeft),
                                          );
                                        },
                                        child: Icon(
                                          Car.car_solid,
                                          size: 30,
                                        ),
                                        color: Color(0xFFFFF7B81E),
                                        shape: new CircleBorder(
                                            side: BorderSide(
                                                color: Color(0xFFFFF7B81E))),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text("Zy Ride"),
                                ]),
                          ),
                        ],
                      )),
                  Flexible(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: ButtonTheme(
                              minWidth: 60,
                              height: 60,
                              child: Center(
                                child: RaisedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Motor.motorcycle_fix,
                                    size: 30,
                                  ),
                                  color: Color(0xFFFFF7B81E),
                                  shape: new CircleBorder(
                                      side: BorderSide(
                                          color: Color(0xFFFFF7B81E))),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: ButtonTheme(
                              minWidth: 60,
                              height: 60,
                              child: Center(
                                child: RaisedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Car.car_solid,
                                    size: 40,
                                  ),
                                  color: Color(0xFFFFF7B81E),
                                  shape: new CircleBorder(
                                    side:
                                        BorderSide(color: Color(0xFFFFF7B81E)),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                  Flexible(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: ButtonTheme(
                              minWidth: 60,
                              height: 60,
                              child: Center(
                                child: RaisedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Motor.motorcycle_fix,
                                    size: 30,
                                  ),
                                  color: Color(0xFFFFF7B81E),
                                  shape: new CircleBorder(
                                      side: BorderSide(
                                          color: Color(0xFFFFF7B81E))),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: ButtonTheme(
                              minWidth: 60,
                              height: 60,
                              child: Center(
                                child: RaisedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Car.car_solid,
                                    size: 40,
                                  ),
                                  color: Color(0xFFFFF7B81E),
                                  shape: new CircleBorder(
                                      side: BorderSide(
                                          color: Color(0xFFFFF7B81E))),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Flexible(flex: 3, child: Container(color: Colors.cyan))
          ],
        ),
      ),
    );
  }
}
/*ButtonTheme(
                      minWidth: 70,
                      height: 70,
                      child: Center(
                        child: RaisedButton(
                          onPressed: () {},
                          child: Icon(
                            Motor.motorcycle_solid__1_,
                            size: 45,
                          ),
                          shape: new CircleBorder(
                              side: BorderSide(color: Colors.red)),
                        ),
                      ),
                    ), */

/* Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height:270.0,
            color: Colors.white10,
          ),
          Container(
            width: double.infinity,
            height: 180.0,
            decoration: new BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.only(
              bottomRight: const Radius.circular(30.0),
              bottomLeft: const Radius.circular(30.0),
              ),
            ),
          ),
          Positioned(
            top: 150,
           right: 50 ,
          child : Container(
                width: 288.0,
                height: 150,
                child: CarouselSlider(
                  autoPlay: true,
                   viewportFraction: 0.7,
                  items:  imgList.map(
        (i) {
          return Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Image.asset(
                i,
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ).toList(),
                ),

            ),
          ),

        ],
      ), */

/*decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.only(
                  bottomRight: const Radius.circular(15.0),
                  bottomLeft: const Radius.circular(15.0),
                  topLeft: const Radius.circular(15.0),
                  topRight: const Radius.circular(15.0)
                ),
                image: DecorationImage(
                image: AssetImage('assets/Gambar.jpg'),
                fit : BoxFit.fill,
                ),
              ),     */

/*CarouselSlider(
                  autoPlay: true,
                  items:  imgList.map(
        (i) {
          return Container(
            //margin: EdgeInsets.all(5.0),
            //width: 288.0,
            //height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Image.asset(
                i,
                fit: BoxFit.cover,
                //width: 288.0,
              ),
            ),
          );
        },
      ).toList(),
                ), */
