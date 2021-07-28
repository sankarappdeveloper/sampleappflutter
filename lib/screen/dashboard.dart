import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waiterapp/data/dummy_data.dart';
import 'package:waiterapp/widgets/simplelistrow.dart';


//Class must be in Uppercase
//Landing page after signin

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {

  // Variable declaration must be lowerCamelCase
   String? status;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        body: SafeArea(child:Container(
          margin: const EdgeInsets.all(12),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dummydata.length,
                physics:
                const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  return Simplelistrow(
                   dummydata[index].title,
                   dummydata[index].content,
                  );
                },
              )
       )));
  }
}








