import 'package:flutter/material.dart';


class HalAkun extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding (
        padding : EdgeInsets.fromLTRB(40.0, 120.0, 40.0, 20.0),
        child : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/Gambar.jpg'),
                  radius: 50.0,
                ),
              ],
            ),
            /*Divider(
                  height: 60.0,
                ), */
            SizedBox(height: 60.0,), 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 250.0,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text ('Akun'), Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0 , horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 250.0,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text ('Notifikasi'), Icon(Icons.arrow_forward_ios),
                        ],
                      ), 
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 250.0,
                  child: RaisedButton(
                    child : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text ('Beri Kami Nilai', ), Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                    color : Colors.white,             
                    onPressed: () {},
                  ),
                ), 
              ],
            ),
          ],
        ),

    ) ,
    );

  }
}