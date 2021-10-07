import 'package:flutter/material.dart';
import 'package:flutter_ui/colors/colors.dart';
import 'package:flutter_ui/screens/dashboardscreen.dart';
import 'package:flutter_ui/screens/homeScreen.dart';

class MyAppTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: MyColors.primary,
          accentColor: MyColors.secondary,
          fontFamily: "Poppins",
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: DashboardScreen.id,
        routes: <String, WidgetBuilder>{
          DashboardScreen.id: (BuildContext context) => new DashboardScreen(),
          HomeScreen.id: (BuildContext context) => new HomeScreen(),
        });
  }
}
