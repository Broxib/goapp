import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);

  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {
  List <String> st=['All','Pending','Scheduled','preparing','Enroute','Failed','Cancelled','Delivered'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          for(int i=0;i<8;i++)
            Container(
              width: 100,
              child:  Center(child: Text(st[i], style: TextStyle(fontSize: 18, color: Colors.black),)),
            ),
        ],
      ),
    );
  }
}
