import 'package:flutter/material.dart';
import 'package:mingler/Screens/HomePageWidgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,

          // backgroundColor: Color(0XFFE5E5E5),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.blueAccent,
                child: Icon(
                  Icons.wifi_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ],
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: Text("M"),
            ),
          ),
          title: Text(
            "MINGLET",
            style: TextStyle(
              // color: Colors.white
              color: Color(0XFF1501FF),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 10, right: 10),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Color(0XFFFFA169),
                          child: Icon(
                            Icons.multiline_chart_outlined,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Learning Development",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Unreads",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ListView(
                        shrinkWrap: true,
                        // scrollDirection: ,
                        children: [
                          Unreads(
                            title: "Robotics",
                            number: "5",
                          ),
                          Unreads(
                            title: "Introduction to programming",
                            number: "3",
                          ),
                          Unreads(
                            title: "Announcements",
                            number: "3",
                          ),
                        ],
                      ),
                    ),
                    Courses(),
                    Groups(),
                    DirectMessage()
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavArea());
  }
}
