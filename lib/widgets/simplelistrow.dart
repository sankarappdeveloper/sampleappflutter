import 'package:flutter/material.dart';

class Simplelistrow extends StatefulWidget {

  String? title;

  String? content;
  Simplelistrow(this.title, this.content);

  @override
  _Simplelistrow createState() => _Simplelistrow();
}

class _Simplelistrow extends State<Simplelistrow> {

  @override
  Widget build(BuildContext context) {
    return ListTile(title:Text(widget.title??""),subtitle: Text(widget.content??""),);
  }
  }
