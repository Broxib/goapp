import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Attributes/OrderAttribute.dart';

class OrderItemwidget extends StatefulWidget {
   late Orderattribute ordet;
  OrderItemwidget(Orderattribute ordet){
    this.ordet=ordet;
  }
  @override
  _OrderItemwidgetState createState() => _OrderItemwidgetState(this.ordet);
}

class _OrderItemwidgetState extends State<OrderItemwidget> {
  late Orderattribute ordet;
  _OrderItemwidgetState(Orderattribute ordet){
    this.ordet=ordet;
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder( //<-- SEE HERE
        side: BorderSide(
          color: ordet.status=="CANCELED"? Colors.red : Colors.white,
        ),
      ),
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
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  ordet.date.toString(),
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(width: 180),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  ordet.status,
                  style: TextStyle(
                    fontSize: 14,
                    color: ordet.status=="DELIVERED"? Colors.green: ordet.status=="CANCELED" ? Colors.red: Colors.orange ,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

    );
  }

}
