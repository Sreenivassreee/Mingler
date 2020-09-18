import 'package:flutter/material.dart';
import 'package:mingler/Screens/ExamDetails.dart';

class Unreads extends StatelessWidget {
  String title;
  String number;
  Unreads({this.title, this.number});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 8,
                backgroundColor: Color(0XFF08F366),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "( $number )",
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
        )
      ],
    );
  }
}

class Courses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      // tilePadding: EdgeInsets.all(0),
      // leading: Icon(Icons.add),
      title: Padding(
        padding: const EdgeInsets.only(left: 0.0),
        child: new Text(
          "Courses",
          style: TextStyle(color: Colors.black),
        ),
      ),
      children: <Widget>[
        Column(
          children: tile(context),
        )
      ],
    );
  }

  tile(context) {
    List<Widget> list = [];
    try {
      for (var i = 0; i <= 3; i++) {
        var topic;
        switch (i) {
          case 0:
            topic = "Robotics";
            break;
          case 1:
            topic = "Introduction to programming";
            break;
          case 2:
            topic = "Announcements";
            break;
          case 3:
            topic = "Attendance details";
            break;
        }

        list.add(
          Padding(
            padding: EdgeInsets.symmetric(
                // horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
            child: GestureDetector(
              onTap: () {
                // print(data[i]["url"]);
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => ExamDetails()
                      // ThemeConsumer(
                      // child: ShowFormuleScreen(data[i]),
                      // ),
                      ),
                );
              },
              child: Container(
                width: double.infinity,
                // color: Theme.of(context).dividerColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.card_membership),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Expanded(
                          child: Text(
                            topic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }
    } catch (e) {
      // print(e);
    }

    return list;
  }
}

class Groups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      // tilePadding: EdgeInsets.all(0),
      // leading: Icon(Icons.add),
      title: Padding(
        padding: const EdgeInsets.only(left: 0.0),
        child: new Text(
          "Groups",
          style: TextStyle(color: Colors.black),
        ),
      ),
      children: <Widget>[
        Column(
          children: tile(context),
        )
      ],
    );
  }

  tile(context) {
    List<Widget> list = [];
    try {
      for (var i = 0; i <= 3; i++) {
        var topic;
        switch (i) {
          case 0:
            topic = "Newsroom";
            break;
          case 1:
            topic = "Exam details";
            break;
          case 2:
            topic = "Newsroom";
            break;
          case 3:
            topic = "Exam details";
            break;
        }

        list.add(
          Padding(
            padding: EdgeInsets.symmetric(
                // horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
            child: GestureDetector(
              onTap: () {
                // print(data[i]["url"]);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => ExamDetails(),
                    // ThemeConsumer(
                    // child: ShowFormuleScreen(data[i]),
                    // ),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                // color: Theme.of(context).dividerColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.card_giftcard),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Expanded(
                          child: Text(
                            topic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }
    } catch (e) {
      // print(e);
    }

    return list;
  }
}

class DirectMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      // tilePadding: EdgeInsets.all(0),
      // leading: Icon(Icons.add),
      title: Padding(
        padding: const EdgeInsets.only(left: 0.0),
        child: new Text(
          "Direct message",
          style: TextStyle(color: Colors.black),
        ),
      ),
      children: <Widget>[
        Column(
          children: tile(context),
        )
      ],
    );
  }

  tile(context) {
    List<Widget> list = [];
    try {
      for (var i = 0; i <= 1; i++) {
        var topic;
        Color color;
        switch (i) {
          case 0:
            topic = "Robin";
            color = Colors.black;
            break;
          case 1:
            topic = "Rohit, Hari";
            color = Color(0XFF08F366);
            break;
        }

        list.add(
          Padding(
            padding: EdgeInsets.symmetric(
                // horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
            child: GestureDetector(
              onTap: () {
                // print(data[i]["url"]);
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context2) => ExamDetails()
                      // ThemeConsumer(
                      // child: ShowFormuleScreen(data[i]),
                      // ),
                      ),
                );
              },
              child: Container(
                width: double.infinity,
                // color: Theme.of(context).dividerColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: color,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Expanded(
                          child: Text(
                            topic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }
    } catch (e) {
      // print(e);
    }

    return list;
  }
}

class BottomNavArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.logout),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Log out",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
