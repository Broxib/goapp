import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goapp/Widgets/OrderItemList.dart';

import '../Widgets/menu.dart';

class Orderpages extends StatefulWidget {
  const Orderpages({Key? key}) : super(key: key);

  @override
  State<Orderpages> createState() => _OrderpagesState();
}

class _OrderpagesState extends State<Orderpages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Orders',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.grey[200],
      ),
        body:
      Column(
        children: [
         menu(),
          OrderItemList(),
        ],
      ),

    );
  }
}




