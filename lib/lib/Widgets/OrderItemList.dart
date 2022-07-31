import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'OrderItemWidget.dart';
import '../Attributes/OrderAttribute.dart';

class OrderItemList extends StatefulWidget {
  const OrderItemList({Key? key}) :
        super(key: key);

  @override
  _OrderItemListState createState() => _OrderItemListState();
}

class _OrderItemListState extends State<OrderItemList> {
  static DateTime now = new DateTime.now();
  static String formattedDate = "${now.day} ${monthtext(now.month)}, ${now.year}";
  List <Orderattribute> sta=[new Orderattribute("#jei", 130.3, formattedDate, 7,"DELIVERED"),new Orderattribute("#jei", 130.3, formattedDate, 7,"PENDING"),new Orderattribute("#jei", 130.3, formattedDate, 7,"CANCELED"),new Orderattribute("#jei", 130.3, formattedDate, 7,"PENDING"),new Orderattribute("#jei", 130.3, formattedDate, 7,"CANCELED")];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 450,
        child: ListView(

          scrollDirection: Axis.vertical,
          children: [
            for ( var i in sta ) OrderItemwidget(i)
          ],
        ),

      );

  }
  static String monthtext(int n){
    late String a;
    if(n==1)
      a="January";
    if(n==2)
      a="February";
    if(n==3)
      a="March";
    if(n==4)
      a="April";
    if(n==5)
      a="May";
    if(n==6)
      a="June";
    if(n==7)
      a="July";
    if(n==8)
      a="August";
    if(n==9)
      a="September";
    if(n==10)
      a="October";
    if(n==11)
      a="November";
    if(n==12)
      a="December";


    return a;
  }

}