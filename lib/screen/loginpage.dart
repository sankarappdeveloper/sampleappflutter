import 'package:flutter/material.dart';
import 'package:waiterapp/screen/dashboard.dart';
import 'package:waiterapp/utils/custom_color.dart';

class Loginpage extends StatefulWidget {
  Loginpage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _Loginpage createState() => _Loginpage();
}

class _Loginpage extends State<Loginpage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
          margin: const EdgeInsets.all(15),
          child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Let's Start with Login!",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 40),
                ),
                SizedBox(height: 30,),

                TextField(
                  //controller: _controller,
                  cursorColor: Colors.greenAccent,
                  decoration: InputDecoration(
                      hintText: "Waiter ID",
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10.0)
                      )
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  //controller: _controller,
                  cursorColor: Colors.greenAccent,
                  decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10.0)
                      )
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  constraints: BoxConstraints(maxWidth: 3000.0, minHeight: 50.0),
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dashboard()),
                      );

                    },
                    color: buttoncolor,
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}