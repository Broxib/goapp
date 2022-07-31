import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);

  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {
  static List <String> st=['All','Pending','Scheduled','preparing','Enroute','Failed','Cancelled','Delivered'];
  List<bool> pressAttention=[false,false,false,false,false,false,false,false];
  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.white,
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(
            width: 40,
          ),
  for(int i=0;i<8;i++)
            Container(

                child: new RaisedButton(
                  child: new Text(st[i]),
                  textColor: pressAttention[i] ?  Colors.white : Colors.black,

                  color: pressAttention[i] ? Colors.green : Colors.white,
                  onPressed: () => setState(() => pressAttention[i] = !pressAttention[i]),
                ),
            ),

        ],
      ),
    );
  }

}
