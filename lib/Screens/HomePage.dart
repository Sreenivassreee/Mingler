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
              backgroundColor: Colors.black,
              child: Icon(
                Icons.add,
              ),
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.black,
            child: Text("S"),
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
                      CircleAvatar(),
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
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 50,
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                  color: Color(0XFFFFA169),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        "Feedback",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0))),
              RaisedButton(
                  // color: Color(0XFFFFA169),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Feedback",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0))),
            ],
          ),
        ),
      ),
    );
  }
}
