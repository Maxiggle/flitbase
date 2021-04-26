import 'package:flitbasehub/custom_colors.dart';
import 'package:flitbasehub/tabs/primary_tabs.dart';
import 'package:flitbasehub/tabs/secondary_tab.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  final user;
  final password;
  HomePage({this.password, this.user});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _abController;
  @override
  void initState() {
    _abController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Map> transaction = [
      {
        'userProfile': 'email@gmail.com',
        'recieved': '0.00034 BTC',
        'type': 'Send',
        'status': 'complete',
      },
      {
        'userProfile': 'flitbase@gmail.com',
        'recieved': '0.00034',
        'type': 'Send',
        'status': 'pending',
      },
      {
        'userProfile': 'prince@gmail.com',
        'status': 'complete',
        'recieved': '0.00034',
        'type': 'Receive'
      },
      {
        'userProfile': 'yereka@gmail.com',
        'recieved': '0.00034 ',
        'type': 'Send',
        'status': 'pending',
      }
    ];
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 32, horizontal: 75),
                child: Text(
                  'Activities',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 28,
                ),
                padding: EdgeInsets.only(left: 231),
                width: 40,
                height: 40,
                color: Colors.red,
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          TabBar(
            indicatorColor: appbarcolor,
            unselectedLabelColor: appbarcolor,
            labelColor: appbarcolor,
            tabs: [
              Tab(
                child: Text(
                  'Transfers',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                ),
              ),
              Tab(
                child: Text(
                  'Trades',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                ),
              ),
            ],
            controller: _abController,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          Expanded(
            child: TabBarView(
              children: [
                Column(children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: transaction.length,
                      itemBuilder: (context, index) => Container(
                        height: 150,
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.add,
                                color: transaction[index]['type'] == 'Receive'
                                    ? Colors.greenAccent[400]
                                    : Colors.redAccent[400],
                                size: 13,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    transaction[index]['type'],
                                    style: TextStyle(fontSize: 12.sp),
                                  ),
                                  Text('9:45pm',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 10.sp))
                                ],
                              ),
                              Text('+ 0.000322',
                                  style: TextStyle(fontSize: 12.sp)),
                              Flexible(
                                child: Container(
                                  width: 100,
                                  child: Text(transaction[index]['userProfile'],
                                      overflow: TextOverflow.fade,
                                      style: TextStyle(fontSize: 12.sp)),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
                                height: 15.h,
                                decoration: BoxDecoration(
                                  color: transaction[index]['status'] ==
                                          'complete'
                                      ? Color(0xffD1F7C4)
                                      : transaction[index]['status'] == 'failed'
                                          ? Color(0xffFFDCE5)
                                          : Color(0xffFFEAB6),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Text(
                                  transaction[index]['status'],
                                  style: TextStyle(
                                      fontSize: 8.0, color: Color(0xff337138)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
                NestedTabbar()
              ],
              controller: _abController,
            ),
          )
        ],
      ),
    ));
  }
}
