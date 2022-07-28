import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'OrderItemwidget.dart';
import 'Orderattribute.dart';

class OrderItemList extends StatefulWidget {
  const OrderItemList({Key? key}) :
        super(key: key);

  @override
  _OrderItemListState createState() => _OrderItemListState();
}

class _OrderItemListState extends State<OrderItemList> {
  List <Orderattribute> sta=[new Orderattribute("#jeoi", 130.3, DateTime.now(), 7),new Orderattribute("#jeoi", 130.3, DateTime.now(), 7),new Orderattribute("#jeoi", 130.3, DateTime.now(), 7),new Orderattribute("#jeoi", 130.3, DateTime.now(), 7),new Orderattribute("#jeoi", 130.3, DateTime.now(), 7),new Orderattribute("#jeoi", 130.3, DateTime.now(), 7),new Orderattribute("#jeoi", 130.3, DateTime.now(), 7),new Orderattribute("#jeoi", 130.3, DateTime.now(), 7),new Orderattribute("#jeoi", 130.3, DateTime.now(), 7)];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          for ( var i in sta ) OrderItemwidget(i)
        ],
      ),

    );
  }}