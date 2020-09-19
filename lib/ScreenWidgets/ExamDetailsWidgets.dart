import 'package:flutter/material.dart';
import 'package:mingler/Screens/MessageScreen.dart';

class CustomTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 17,
          child: Icon(Icons.person),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          "Robert Jain, Welcome",
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

// void showSlideupView(BuildContext context) {
//   showModalBottomSheet(
//     context: context,
//     builder: (context) {
//       return new Container(
//         child: new GestureDetector(
//           onTap: () => Navigator.pop(context),
//           child: Container(
//             width: double.infinity,
//             height: 300,
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     child: Row(
//                       children: [
//                         Text(
//                           "  🙂  ",
//                           style: TextStyle(fontSize: 22),
//                         ),
//                         Text(
//                           "  OK  ",
//                           style: TextStyle(fontSize: 22),
//                         ),
//                         Text(
//                           "  🖖🏻  ",
//                           style: TextStyle(fontSize: 22),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SheetTitles("Reply to this message"),
//                 SheetTitles("Delete Message"),
//                 SheetTitles("Edit Message"),
//                 SheetTitles("Copy message"),
//                 SheetTitles("Save message"),
//                 SheetTitles("Forward message"),
//               ],
//             ),
//           ),
//         ),
//       );
//     },
//   );
// }

// class SheetTitles extends StatelessWidget {
//   String action;
//   SheetTitles(this.action);
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () async {
//         String num = await Navigator.of(context).push(
//           MaterialPageRoute(
//             builder: (BuildContext context2) => MessageScreen(),
//           ),
//         );
//         Navigator.pop(context);
//         print(num);
//       },
//       child: Padding(
//         padding: const EdgeInsets.only(
//             left: 15.0, right: 15.0, bottom: 8.0, top: 8.0),
//         child: Container(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 action,
//                 style: TextStyle(fontSize: 18),
//                 textAlign: TextAlign.left,
//               ),
//               Text(
//                 action[0],
//                 style: TextStyle(fontSize: 18),
//                 textAlign: TextAlign.left,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Replys extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Flexible(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         // crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: CircleAvatar(
//               radius: 15,
//               child: Icon(Icons.person),
//             ),
//           ),
//           Flexible(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: GestureDetector(
//                 onTap: () {
//                   showSlideupView(context);
//                   // Navigator.of(context).push(
//                   //   MaterialPageRoute(
//                   //     builder: (BuildContext context2) =>
//                   //         MessageScreen(),
//                   //   ),
//                   // );
//                 },
//                 child: Container(
//                   child: Text(
//                     "Mingler-Where learning happens",
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       decoration: TextDecoration.underline,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
