import 'package:flutter/material.dart';
import 'package:flutter_ui/colors/colors.dart';
import 'package:flutter_ui/widgets/bottomBar.dart';

class HomeScreen extends StatefulWidget {
  static String id = "/HomeScreen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Expanded(flex: 6, child: _headerText()),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(flex: 1, child: _verticalListBuilder()),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    border: Border.all(color: Colors.grey.shade300, width: 1.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.04,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Colors.grey.shade300, width: 1.0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 0,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        // if you need this
                                        side: BorderSide(
                                          color: MyColors.primary,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width *
                                            0.2,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.12,
                                        decoration: BoxDecoration(
                                          color: MyColors.primary,
                                          border: Border.all(
                                              color: MyColors.white, width: 2.0),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8.0, 0, 0, 0),
                                        child: Text(
                                          'silambu',
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.04,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8.0, 0, 0, 0),
                                        child: Container(
                                          child: Text(
                                            '30 Sec ago',
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.02,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.message_sharp,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.25,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSRgIOkxRdb2M7Y6bfJuSR9jvQlif_8k1vGs_dzYjmvaO4IDZPqu5uztCH1jKLRvTSMQY&usqp=CAU"),
                                  fit: BoxFit.cover),
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.grey.shade300, width: 1.0),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                              child: Expanded(
                                flex: 0,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.message_sharp,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 0,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.share,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }

  Widget _headerText() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Text(
        ('Design'),
        style: TextStyle(
            color: Colors.black,
            fontSize: MediaQuery.of(context).size.width * 0.08,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _verticalListBuilder() {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
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
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.04,
                decoration: BoxDecoration(
                  color: MyColors.primary,
                  border: Border.all(color: MyColors.white, width: 2.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
