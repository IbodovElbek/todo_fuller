// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class HomePAge extends StatefulWidget {
//   static final id = "HomePAge";
//
//   const HomePAge({Key? key}) : super(key: key);
//
//   @override
//   State<HomePAge> createState() => _HomePAgeState();
// }
//
// class _HomePAgeState extends State<HomePAge> {
//   var monthlist=["Jan","Feb","March","Apr","May","June","July","Aug","Sep","Oct","Nov",];
//   String? currentMonth;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//           children: [
//             Container(
//     height: 180,
//       width: double.infinity,
//       color: Color.fromRGBO(93, 73, 147, 1),
//       child: SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.only(left: 18, right: 18),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       RichText(
//                           text: TextSpan(children: [
//                         TextSpan(
//                             text: "Daily",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 40,
//                                 fontWeight: FontWeight.bold)),
//                         TextSpan(
//                             text: "  meeting",
//                             style: TextStyle(
//                                 color: Color.fromRGBO(115, 98, 165, 1),
//                                 fontSize: 40,
//                                 fontWeight: FontWeight.bold)),
//                       ])),
//                       Text(
//                         "Jan",
//                         style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           color: Colors.white
//                         ),
//                       )
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top:1.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: List.generate(
//                         7,
//                             (index) => dateWidget(
//                               index: index,
//                             ),
//                       ),
//
//
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//       ),
//     ),
//           ],
//         )
//     );
//   }
// }
// class dateWidget extends StatefulWidget {
//   final int index;
//    dateWidget({required this.index, super.key});
//
//   @override
//   State<dateWidget> createState() => _dateWidgetState();
// }
//
// class _dateWidgetState extends State<dateWidget> {
//   bool selectedday=false;
//   var list=["Mo","Tu","We","Th","Fr","Sat","Sun"];
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: (){
//         setState(() {
//           selectedday=!selectedday;
//         });
//       },
//       child:   Container(
//
//         padding: EdgeInsets.all(7),
//         decoration: BoxDecoration(
//           color: selectedday?Colors.red:null,
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: Column(
//           children: [
//             Text("${list[widget.index]}",style: TextStyle(
//               fontSize: 20,
//               fontWeight:selectedday? FontWeight.bold:FontWeight.normal,
//               color:selectedday? Colors.white:Colors.black,
//         ),),
//             Text("${10+widget.index}",style: TextStyle(
//               fontSize: 15,
//               fontWeight:selectedday? FontWeight.bold:FontWeight.normal,
//               color:selectedday? Colors.white:Colors.white,
//
//             ),),
//
//             Container(
//               width: 5,
//               height: 5,
//               color: Colors.blueAccent,
//             )
//
//           ],
//
//         ),
//
//       ),
//     );
//   }
// }
//
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_fuller/Services/NotifyService.dart';

class HomePAge extends StatefulWidget {
  static final id="HomePAge";
  const HomePAge({super.key});

  @override
  State<HomePAge> createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePAge> {
  var notifyHelper;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notifyHelper=NotifyHelper();
    notifyHelper.requestIOSPermissions();
    notifyHelper.requestAndPermissions();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("Theme Data",style: TextStyle(fontSize: 30),)
        ],
      ),
    );
  }
}
