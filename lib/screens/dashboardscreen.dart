import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/colors/colors.dart';
import 'package:flutter_ui/model/dashboard.dart';
import 'package:flutter_ui/widgets/bottomBar.dart';

class DashboardScreen extends StatefulWidget {
  static String id = "/dashboard";

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<DashboardModel> items = [
    DashboardModel('For You'),
    DashboardModel('Live'),
    DashboardModel('Following'),
    DashboardModel('Popular'),
    DashboardModel('Followers'),
    DashboardModel('Chat'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 0,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    border: Border.all(color: Colors.grey.shade300, width: 2.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  child: TextField(
                    onChanged: (value) {},
                    textInputAction: TextInputAction.done,
                    style: TextStyle(color: MyColors.primary),
                    decoration: new InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey.shade300, width: 2.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey.shade300, width: 2.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        hintText: 'search',
                        hintStyle: TextStyle(color: MyColors.primary)),
                  ),
                ),
              ),
            ),
            Expanded(flex: 0, child: _container()),
            Expanded(flex: 1, child: _verticalListBuilder()),
            Expanded(flex: 8, child: _horizontalListBuilder()),
          ],
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }

  Widget _container() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.fromLTRB(15, 5, 15, 0),
      child: Text(
        'Explore Stories',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.height * 0.04),
      ),
    );
  }

  Widget _verticalListBuilder() {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
          child: Container(
            alignment: Alignment.topLeft,
            child: Text(
              items[index].name,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: MediaQuery.of(context).size.height * 0.03),
            ),
          ),
        );
      },
    );
  }

  Widget _horizontalListBuilder() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.5),
        ),
        itemCount: 16,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 4, 0),
            child: Container(
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // if you need this
                  side: BorderSide(
                    color: MyColors.primary,
                    width: 2.0,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: MyColors.primary,
                    border: Border.all(color: MyColors.white, width: 2.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.all(3),
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: MyColors.accent, width: 3.0),
                      ),
                      child: CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNOhpV67XSI4Vz5Z_L7XoWiH7UzZQDBTzS3g&usqp=CAU",
                            width: MediaQuery.of(context).size.width * 0.125,
                            height: MediaQuery.of(context).size.height * 0.08,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
