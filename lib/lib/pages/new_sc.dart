import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/MenuBar.dart';

class newdc extends StatefulWidget {
  const newdc({Key? key}) : super(key: key);

  @override
  _newdcState createState() => _newdcState();
}

class _newdcState extends State<newdc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            Column(
              children: [
                Container(
                  height: 600,
                ),
                MenuBar(),
              ],
            ),
    );
  }
}
