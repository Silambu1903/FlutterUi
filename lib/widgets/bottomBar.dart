import 'package:flutter/material.dart';
import 'package:flutter_ui/colors/colors.dart';
import 'package:flutter_ui/screens/dashboardscreen.dart';
import 'package:flutter_ui/screens/homeScreen.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
   Container(
         margin: EdgeInsets.all(10),
         width: MediaQuery.of(context).size.width ,
         height: MediaQuery.of(context).size.height * 0.09,
         decoration: BoxDecoration(
           color: MyColors.primary,
           borderRadius: BorderRadius.only(
             topRight: Radius.circular(10.0),
             topLeft: Radius.circular(10.0),
             bottomRight: Radius.circular(10.0),
             bottomLeft: Radius.circular(10.0),
           ),
         ),
         child: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Row(
                 children: <Widget>[
                   Expanded(
                     flex: 1,
                     child: IconButton(
                       onPressed: () {
                         Navigator.of(context).pushNamed(HomeScreen.id);
                       },
                       icon: Icon(
                         Icons.home_rounded,
                         color: Colors.white,
                       ),
                     ),
                   ),
                   Expanded(
                     child: IconButton(
                       onPressed: () {
                         Navigator.of(context).pushNamed(DashboardScreen.id);
                       },
                       icon: Icon(
                         Icons.search,
                         color: Colors.white,
                       ),
                     ),
                   ),
                   Expanded(
                     child: SizedBox.fromSize(),
                   ),
                   Expanded(
                     child: IconButton(
                       onPressed: () {},
                       icon: Icon(
                         Icons.notifications,
                         color: Colors.white,
                       ),
                     ),
                   ),

                   Expanded(
                     child: IconButton(
                       onPressed: () {},
                       icon: Icon(
                         Icons.person,
                         color: Colors.white,
                       ),
                     ),
                   ),
                 ],
               ),
             ],
           ),
         ),
       ),
        Positioned(
          bottom: 25,
          left: MediaQuery.of(context).size.width*0.38,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.25,
            height: MediaQuery.of(context).size.height * 0.085,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: MyColors.secondary,
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],

    );
  }
}
