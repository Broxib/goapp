import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/Orderpages.dart';
import '../pages/new_sc.dart';
import 'Menu.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
 List <bool> pressAttention=[true,false,true,true];
 List <IconData> icons =[const IconData(0xe318, fontFamily: 'MaterialIcons'),Icons.add_shopping_cart,const IconData(0xe567, fontFamily: 'MaterialIcons'),Icons.account_circle];
List <String> name=['Home','Orders','Search','Account'];
 @override
  Widget build(BuildContext context) {

    return Container(
     child: Row(
        children: <Widget>[
          SizedBox(
            width: 10,
          ),
          for(int i=0;i<4;i++)
          Column(
            children: [
              Container(
                color: Colors.white,
                  child: new FlatButton(

                       child: Icon(
                      icons[i],
                      color: pressAttention[i] ? Colors.grey : Colors.white,
                      size: 60.0,
                    ),

                    shape: pressAttention[i] ? null :CircleBorder(
                        side: BorderSide(color: Colors.green)

                    ),

                    color: pressAttention[i] ? null  : Colors.green,
                    onPressed: () {
                         setState(() => pressAttention[i] = !pressAttention[i] );
                         Navigator.push(
                           context,
                           i==1? MaterialPageRoute(builder: (context) => const Orderpages()):MaterialPageRoute(builder: (context) => const newdc())  ,
                         );
                    },
                  ),
              ),
              Container(
                child:  pressAttention[i] ?Text(''):Text('${name[i]}'),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
