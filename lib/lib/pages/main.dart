import 'package:flutter/material.dart';

import 'Orderpages.dart';
import 'new_sc.dart';

void main() => runApp( MaterialApp(
  title: 'Named Routes Demo',

  initialRoute: '/orders',
  routes: {
    '/orders': (context) => const Orderpages(),
    '/newsc': (context) => const newdc(),

  },
));
