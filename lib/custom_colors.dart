import 'package:flutter/material.dart';

var appbarcolor = Color(0xff006F95);
var textstyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
var detailcontain = BoxDecoration(
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(4.0),
      topRight: Radius.circular(4.0),
      bottomLeft: Radius.circular(4.0),
      bottomRight: Radius.circular(4.0)),
  color: Colors.transparent,
);

var tabviewText = Text('');

//  Column(
//                     children: [
//                       Expanded(
//                         child: ListView.builder(
//                             itemCount: 5,
//                             itemBuilder: (context, index) => Container(
//                                   height: 80.h,
//                                   margin: EdgeInsets.symmetric(vertical: 10),
//                                   padding: EdgeInsets.only(
//                                       left: 12,
//                                       right: 12,
//                                       top: 4.0,
//                                       bottom: 4.0),
//                                   color: Color(0xffFFFFFF),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Icon(
//                                         Icons.add,
//                                         size: 13,
//                                       ),
//                                       // Stack(
//                                       //   children: [
//                                       //     Container(
//                                       //       height: 30.h,
//                                       //       width: 30.w,
//                                       //       decoration: BoxDecoration(
//                                       //           color: Colors.white,
//                                       //           borderRadius:
//                                       //               BorderRadius.circular(20)),
//                                       //     ),
//                                       //     Padding(
//                                       //       padding: EdgeInsets.all(2.0),
//                                       //       child: Icon(
//                                       //         Icons.add,
//                                       //         size: 13,
//                                       //       ),
//                                       //     )
//                                       //   ],
//                                       // ),

//                                       Column(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceEvenly,
//                                         children: [
//                                           Text(
//                                             'Receive',
//                                             style: TextStyle(fontSize: 12.sp),
//                                           ),
//                                           Text('9:45pm',
//                                               style: TextStyle(
//                                                   color: Colors.grey,
//                                                   fontSize: 10.sp))
//                                         ],
//                                       ),
//                                       Text('+ 0.000322',
//                                           style: TextStyle(fontSize: 12.sp)),
//                                       Text('flitbasehub@gmail.com',
//                                           style: TextStyle(fontSize: 12.sp)),
//                                       Container(
//                                         padding: EdgeInsets.all(4),
//                                         height: 15.h,
//                                         decoration: BoxDecoration(
//                                           color: Color(0xffD1F7C4),
//                                           borderRadius:
//                                               BorderRadius.circular(10.0),
//                                         ),
//                                         child: Text(
//                                           'Completed',
//                                           style: TextStyle(
//                                               fontSize: 8.0,
//                                               color: Color(0xff337138)),
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 )),
//                       ),
//                     ],
//                   ),
