// import 'package:flitbasehub/custom_colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class ReceivedTabbar extends StatefulWidget {
//   @override
//   _ReceivedTabbarState createState() => _ReceivedTabbarState();
// }

// class _ReceivedTabbarState extends State<ReceivedTabbar>
//     with SingleTickerProviderStateMixin {
//   TabController _tabController;
//   @override
//   void initState() {
//     _tabController = TabController(length: 3, vsync: this);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<Map> transaction = [
//       {
//         'userProfile': 'email@gmail.com',
//         'recieved': '0.00034 BTC',
//         'type': 'Send',
//         'status': 'complete',
//       },
//       {
//         'userProfile': 'flitbase@gmail.com',
//         'recieved': '0.00034',
//         'type': 'Send',
//         'status': 'pending',
//       },
//       {
//         'userProfile': 'prince@gmail.com',
//         'status': 'complete',
//         'recieved': '0.00034',
//         'type': 'Receive'
//       },
//       {
//         'userProfile': 'yereka@gmail.com',
//         'recieved': '0.00034 ',
//         'type': 'Send',
//         'status': 'pending',
//       }
//     ];

//     List<Map> buy = [];
//     for (var items in transaction) {
//       if (items['type'] == 'Receive') {
//         buy.add(items);
//       }
//     }
//     List<Map> sell = [];
//     for (var items in transaction) {
//       if (items['type'] == 'Send') {
//         sell.add(items);
//       }
//     }

//     return Scaffold(
//       body: Container(
//         child: Column(
//           children: [
//             Container(
//               color: Color(0xff005674),
//               child: TabBar(
//                 indicatorColor: Colors.white,
//                 indicator: BoxDecoration(color: Color(0xff0087B5)),
//                 unselectedLabelColor: Colors.white,
//                 labelColor: Colors.white,
//                 tabs: [
//                   Tab(
//                     child: Text(
//                       'All',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, fontSize: 14.0),
//                     ),
//                   ),
//                   Tab(
//                     child: Text(
//                       'Buy',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, fontSize: 14.0),
//                     ),
//                   ),
//                   Tab(
//                     child: Text(
//                       'Sell',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, fontSize: 14.0),
//                     ),
//                   ),
//                 ],
//                 controller: _tabController,
//                 indicatorSize: TabBarIndicatorSize.tab,
//               ),
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   Column(
//                     children: [
//                       Expanded(
//                         child: ListView.builder(
//                             itemCount: transaction.length,
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
//                                         color: transaction[index]['type'] ==
//                                                 'Receive'
//                                             ? Colors.greenAccent[400]
//                                             : Colors.redAccent[400],
//                                         size: 13,
//                                       ),
//                                       Column(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceEvenly,
//                                         children: [
//                                           Text(
//                                             transaction[index]['type'],
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
//                                       Text(transaction[index]['userProfile'],
//                                           style: TextStyle(fontSize: 12.sp)),
//                                       Container(
//                                         padding: EdgeInsets.all(4),
//                                         height: 15.h,
//                                         decoration: BoxDecoration(
//                                           color: transaction[index]['status'] ==
//                                                   'complete'
//                                               ? Color(0xffD1F7C4)
//                                               : transaction[index]['status'] ==
//                                                       'failed'
//                                                   ? Color(0xffFFDCE5)
//                                                   : Color(0xffFFEAB6),
//                                           borderRadius:
//                                               BorderRadius.circular(10.0),
//                                         ),
//                                         child: Text(
//                                           transaction[index]['status'],
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
//                   ListView.builder(
//                       itemCount: buy.length,
//                       itemBuilder: (context, index) => Center(
//                             child: Container(
//                               height: 50.h,
//                               margin: EdgeInsets.symmetric(vertical: 10),
//                               padding: EdgeInsets.symmetric(horizontal: 16.w),
//                               color: Colors.white,
//                               child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Container(
//                                       height: 15,
//                                       // width: 25.w,

//                                       child: Icon(
//                                         Icons.swap_horiz,
//                                         size: 16,
//                                         color: Colors.greenAccent[400],
//                                       ),
//                                     ),
//                                     Container(
//                                       width: 120.w,
//                                       child: Text(
//                                         '${buy[index]['userProfile']}',
//                                         style: TextStyle(
//                                             fontSize: 10.0,
//                                             color: Color(
//                                               (0xff374072),
//                                             )),
//                                         textAlign: TextAlign.start,
//                                       ),
//                                     ),
//                                     Container(
//                                       //height: 30.h,
//                                       width: 80.w,
//                                       decoration: detailcontain,

//                                       child: Text(
//                                         '${transaction[index]['recieved']}',
//                                         style: TextStyle(
//                                             fontSize: 10,
//                                             color: Color(
//                                               (0xff374072),
//                                             )),
//                                       ),
//                                     ),
//                                     Container(
//                                       padding: EdgeInsets.all(4),
//                                       // margin: EdgeInsets.symmetric(
//                                       //     horizontal: 12.h),
//                                       height: 15.h,
//                                       decoration: BoxDecoration(
//                                         color: transaction[index]['status'] ==
//                                                 'complete'
//                                             ? Color(0xffD1F7C4)
//                                             : transaction[index]['status'] ==
//                                                     'failed'
//                                                 ? Color(0xffFFDCE5)
//                                                 : Color(0xffFFEAB6),
//                                         borderRadius:
//                                             BorderRadius.circular(10.0),
//                                       ),
//                                       child: Text(
//                                         transaction[index]['status'],
//                                         style: TextStyle(
//                                             fontSize: 8.0,
//                                             color: Color(0xff337138)),
//                                       ),
//                                     )
//                                   ]),
//                             ),
//                           )),
//                   ListView.builder(
//                       itemCount: sell.length,
//                       itemBuilder: (context, index) => Center(
//                             child: Container(
//                               height: 50.h,
//                               margin: EdgeInsets.symmetric(vertical: 10),
//                               padding: EdgeInsets.symmetric(horizontal: 16.w),
//                               color: Colors.white,
//                               child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Container(
//                                       height: 15,
//                                       // width: 25.w,

//                                       child: Icon(
//                                         Icons.swap_horiz,
//                                         size: 16,
//                                         color: Colors.greenAccent[400],
//                                       ),
//                                     ),
//                                     Container(
//                                       width: 120.w,
//                                       // padding: EdgeInsets.symmetric(
//                                       //     horizontal: 10),
//                                       // margin:
//                                       // EdgeInsets.symmetric(vertical: 12),
//                                       child: Text(
//                                         '${sell[index]['userProfile']}',
//                                         style: TextStyle(
//                                             fontSize: 10.0,
//                                             color: Color(
//                                               (0xff374072),
//                                             )),
//                                         textAlign: TextAlign.start,
//                                       ),
//                                     ),
//                                     Container(
//                                       //height: 30.h,
//                                       width: 80.w,
//                                       decoration: detailcontain,

//                                       child: Text(
//                                         '${sell[index]['recieved']}',
//                                         style: TextStyle(
//                                             fontSize: 10,
//                                             color: Color(
//                                               (0xff374072),
//                                             )),
//                                       ),
//                                     ),
//                                     Container(
//                                       padding: EdgeInsets.all(4),
//                                       // margin: EdgeInsets.symmetric(
//                                       //     horizontal: 12.h),
//                                       height: 15.h,
//                                       decoration: BoxDecoration(
//                                         color: transaction[index]['status'] ==
//                                                 'complete'
//                                             ? Color(0xffD1F7C4)
//                                             : transaction[index]['status'] ==
//                                                     'failed'
//                                                 ? Color(0xffFFDCE5)
//                                                 : Color(0xffFFEAB6),
//                                         borderRadius:
//                                             BorderRadius.circular(10.0),
//                                       ),
//                                       child: Text(
//                                         transaction[index]['status'],
//                                         style: TextStyle(
//                                             fontSize: 8.0,
//                                             color: Color(0xff337138)),
//                                       ),
//                                     )
//                                   ]),
//                             ),
//                           )),
//                 ],
//                 controller: _tabController,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
