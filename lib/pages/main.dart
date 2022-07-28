import 'package:flutter/material.dart';

import 'Orderpages.dart';

void main() => runApp( MaterialApp(
  title: 'Named Routes Demo',

  initialRoute: '/orders',
  routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/orders': (context) => const Orderpages(),
    // When navigating to the "/second" route, build the SecondScreen widget.
  },
));
