import 'package:chip_widget_icomoon/data/provider/provider_first.dart';
import 'package:chip_widget_icomoon/data/provider/provider_fourth.dart';
import 'package:chip_widget_icomoon/data/provider/provider_second.dart';
import 'package:chip_widget_icomoon/data/provider/provider_third.dart';
import 'package:chip_widget_icomoon/screen/body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'chip_widget/inputchipdisplay.dart';
import 'chip_widget/choicechip.dart';
import 'chip_widget/filterchip.dart';
import 'chip_widget/actionchip.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProviderFirst()),
        ChangeNotifierProvider(create: (_) => ProviderSecond()),
        ChangeNotifierProvider(create: (_) => ProviderThird()),
        ChangeNotifierProvider(create: (_) => ProviderFourth()),
      ],
      child: MaterialApp(
        title: "Fluitter Chips",
        theme: ThemeData(
          primaryColor: new Color(0xff6200ee),
        ),
        initialRoute: "/",
        routes: {
          // "/": (context) => MyApp(),
          "/": (context) => Body(),
          // "/detail": (context) => MyApp(),
        }
      ),
    );
  }
}
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Chips',
//       theme: ThemeData(
//         //primaryColor: new Color(0xffe91e63),
//         //primaryColor: new Color(0xffffc107),
//         primaryColor: new Color(0xff6200ee),
//         //primaryColor: new Color(0xffF2601F),
//       ),
//       //  home: InputChipDisplay(),//inputChip
//       // home: ChoiceChipDisplay(),//choicechip
//       //  home: FilterChipDisplay(),//filterchip
//       home: ActionChipDisplay(),//actionchip
//     );
//   }
// }