import 'package:flutter/material.dart';

import 'package:mingler/ScreenWidgets/ExamDetailsWidgets.dart';

import 'package:mingler/Screens/MessageScreen.dart';

class ExamDetails extends StatefulWidget {
  @override
  _ExamDetailsState createState() => _ExamDetailsState();
}

class _ExamDetailsState extends State<ExamDetails> {
  String num = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).pop();
            }),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: CustomTitle(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.chat),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Exam details",
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "25 members",
                    // style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: Text(
                  "D",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 13.0, top: 10),
                child: Text(
                  "Welcome to the space of learning. ",
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 13.0, top: 20),
                child: Text(
                  "Newsroom is automatically created, which cannot be archived.This group consists of every students in the computer science department.",
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: new Container(
                margin: const EdgeInsets.only(top: 35.0, bottom: 25.0),
                padding: const EdgeInsets.only(
                    top: 5.0, bottom: 5.0, left: 20, right: 20),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Text(
                  "Sunday, May 3rd",
                ),
              ),
            ),
            MessagesList(
              context,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80.0, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  num == "" || num == "0" ? Container() : Replys(context, num),
                  // Container(
                  //   height: 20,
                  //   color: Colors.red,
                  //   child: Text("Hi"),
                  // ),
                ],
              ),
            ),
            MessagesList(context),
            MessagesList(context),
          ],
        ),
      ),
    );
  }

  Widget MessagesList(context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              child: Row(
                children: [
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 15,
                            child: Icon(Icons.person),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                showSlideupView(context);
                                // Navigator.of(context).push(
                                //   MaterialPageRoute(
                                //     builder: (BuildContext context2) =>
                                //         MessageScreen(),
                                //   ),
                                // );
                              },
                              child: Container(
                                child: Text(
                                  "Mingler-Where learning happens",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text(
                        "5:52pm",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 55.0, right: 10),
          child: Container(
            child: Text(
              "Hello fellow students. This group is specially made for communication between entire students of the college.Lets us use this technology provided efficiently",
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ],
    );
  }

  showSlideupView(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: new Container(
            child: new GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: double.infinity,
                height: 300,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "  🙂  ",
                                  style: TextStyle(fontSize: 22),
                                ),
                                Text(
                                  "  OK  ",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  "  🖖🏻  ",
                                  style: TextStyle(fontSize: 22),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                color: Colors.black,
                                child: Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SheetTitles(context, "Reply to this message"),
                    SheetTitles(context, "Delete Message"),
                    SheetTitles(context, "Edit Message"),
                    SheetTitles(context, "Copy message"),
                    SheetTitles(context, "Save message"),
                    SheetTitles(context, "Forward message"),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget SheetTitles(BuildContext context, String action) {
    return GestureDetector(
      onTap: () async {
        Navigator.pop(context);
        num = await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context2) => MessageScreen(),
          ),
        );
        setState(() {
          num = num;
        });

        // print(num);
      },
      child: Padding(
        padding: const EdgeInsets.only(
            left: 15.0, right: 15.0, bottom: 8.0, top: 8.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                action,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.left,
              ),
              Text(
                action[0],
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Replys(BuildContext context, String num) {
    return Flexible(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 15,
              child: Icon(Icons.person),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  showSlideupView(context);
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (BuildContext context2) =>
                  //         MessageScreen(),
                  //   ),
                  // );
                },
                child: Container(
                  child: Text(
                    num + " Reply" ?? " ",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Color(
                        0XFF2A07FC,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
