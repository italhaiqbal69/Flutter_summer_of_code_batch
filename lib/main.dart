import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nacttac_summerofcode3/afvanceContainer.dart';
import 'package:nacttac_summerofcode3/ai_login_screen.dart';
import 'package:nacttac_summerofcode3/bottom_nav.dart';
import 'package:nacttac_summerofcode3/container.dart';
import 'package:nacttac_summerofcode3/counterProvider_app.dart';
import 'package:nacttac_summerofcode3/counter_app.dart';
import 'package:nacttac_summerofcode3/dynamicList.dart';
import 'package:nacttac_summerofcode3/expandedFlexible.dart';
import 'package:nacttac_summerofcode3/favrt_list_view.dart';
import 'package:nacttac_summerofcode3/gridviewBuilder.dart';
import 'package:nacttac_summerofcode3/input_selection.dart';
import 'package:nacttac_summerofcode3/listviewPractice.dart';
import 'package:nacttac_summerofcode3/login_screen.dart';
import 'package:nacttac_summerofcode3/paddingpractice.dart';
import 'package:nacttac_summerofcode3/provider/counter_provider.dart';
import 'package:nacttac_summerofcode3/provider/favrt_list.dart';
import 'package:nacttac_summerofcode3/revision.dart';
import 'package:nacttac_summerofcode3/row_Column.dart';
import 'package:nacttac_summerofcode3/stackPractice.dart';
import 'package:nacttac_summerofcode3/ai_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => FavrtProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const Revision(),
    );
  }
}
