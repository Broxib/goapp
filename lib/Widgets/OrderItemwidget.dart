import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Orderattribute.dart';

class OrderItemwidget extends StatefulWidget {
  late Orderattribute ordet;
  OrderItemwidget(Orderattribute ordet){
    this.ordet=ordet;
  }
  @override
  _OrderItemwidgetState createState() => _OrderItemwidgetState();
}

class _OrderItemwidgetState extends State<OrderItemwidget> {
   Orderattribute ordet= new Orderattribute("#jeoi", 130.3, DateTime.now(), 7);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),

      child: Column(

        children: <Widget>[
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              ordet.serie,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 40,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  " ${ordet.numberofproducts} produt(s)",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: 140),

              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  " ${ordet.price} MAD",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              ordet.date.toString(),
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
