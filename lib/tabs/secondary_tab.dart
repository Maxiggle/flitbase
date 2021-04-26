import 'package:flitbasehub/custom_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NestedTabbar extends StatefulWidget {
  @override
  _NestedTabbarState createState() => _NestedTabbarState();
}

class _NestedTabbarState extends State<NestedTabbar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Map> transactions = [
      {
        'userProfile': 'email@gmail.com',
        'token': '65 BTC',
        'paid': '45 BTC',
        'recieved': '0.00034 BTC',
        'status': 'Completed',
        'type': 'Buy'
      },
      {
        'userProfile': 'flitbase@gmail.com',
        'token': '8 XRP',
        'paid': '45 ETH',
        'recieved': '0.00034 BTC',
        'status': 'Completed',
        'type': 'Sell'
      },
      {
        'userProfile': 'prince@gmail.com',
        'token': '45 Doge',
        'paid': 'NGN 26,000',
        'recieved': '0.00034 BTC',
        'status': 'failed',
        'type': 'Swap'
      },
      {
        'userProfile': 'yereka@gmail.com',
        'token': '45 ETH',
        'paid': 'NGN 60,000',
        'recieved': '0.00034 BTC',
        'status': 'Completed',
        'type': 'Buy',
      }
    ];
    List<Map> sell = [];
    for (var item in transactions) {
      if (item['type'] == 'sell') {
        sell.add(item);
      }
    }

    List<Map> buy = [];
    for (var item in transactions) {
      if (item['type'] == 'Buy') {
        buy.add(item);
      }
    }

    List<Map> swap = [];
    for (var item in transactions) {
      if (item['type'] == 'swap') {
        swap.add(item);
      }
    }

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              color: Color(0xff005674),
              child: Row(
                children: [
                  Expanded(
                    child: TabBar(
                      physics: NeverScrollableScrollPhysics(),
                      indicatorColor: Colors.white,
                      indicator: BoxDecoration(color: Color(0xff0087B5)),
                      unselectedLabelColor: Colors.white,
                      labelColor: Colors.white,
                      tabs: [
                        Tab(
                          child: Text(
                            'All',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.0),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Buy',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.0),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Sell',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.0),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Swap',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.0),
                          ),
                        ),
                        Tab(child: Text('gefy'))
                      ],
                      controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.tab,
                    ),
                  ),
                  SizedBox(width: 100),
                  DropdownButton(
                    items: [],
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ListView.builder(
                      itemCount: transactions.length,
                      itemBuilder: (context, index) => Container(
                            // height: 100,
                            child: Card(
                              child: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    child: Icon(
                                      Icons.swap_horiz,
                                      size: 16,
                                      color: Colors.greenAccent[400],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(14),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 0.0,
                                              offset: Offset.zero)
                                        ]),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 8),
                                        child: Column(
                                          children: [
                                            Text(
                                              ' ${transactions[index]['type']} ${transactions[index]['token']}',
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(height: 10),
                                            Text('9:45pm',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 10.sp)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: SizedBox(),
                                  ),
                                  // Text(transactions[index]['userProfile'],
                                  //  style: TextStyle(fontSize: 12.sp)),

                                  // Container(
                                  //
                                  //   padding: EdgeInsets.all(4),
                                  //   height: 15.h,
                                  //   decoration: BoxDecoration(
                                  //     color: transactions[index]
                                  //                 ['status'] ==
                                  //             'complete'
                                  //         ? Color(0xffD1F7C4)
                                  //         : transactions[index]['status'] ==
                                  //                 'failed'
                                  //             ? Color(0xffFFDCE5)
                                  //             : Color(0xffFFEAB6),
                                  //     borderRadius:
                                  //         BorderRadius.circular(10.0),
                                  //   ),
                                  //   child: Text(
                                  //     transactions[index]['status'],
                                  //     style: TextStyle(
                                  //         fontSize: 8.0,
                                  //         color: Color(0xff337138)),
                                  //   ),
                                  // ),
                                  Container(
                                    child: Text(transactions[index]['paid'],
                                        style: TextStyle(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff0087B5))),
                                  ),
                                ],
                              ),
                            ),
                          )),
                  ListView.builder(
                      itemCount: buy.length,
                      itemBuilder: (context, index) => Center(
                            child: Container(
                              height: 50.h,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              color: Colors.white,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 15,
                                      child: Icon(
                                        Icons.swap_horiz,
                                        size: 16,
                                        color: Colors.greenAccent[400],
                                      ),
                                    ),
                                    Container(
                                      width: 120.w,
                                      child: Text(
                                        '${buy[index]['userProfile']}',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Color(
                                              (0xff374072),
                                            )),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      width: 80.w,
                                      decoration: detailcontain,
                                      child: Text(
                                        '${buy[index]['paid']}',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color(
                                              (0xff374072),
                                            )),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(4),
                                      // margin: EdgeInsets.symmetric(
                                      //     horizontal: 12.h),
                                      height: 15.h,
                                      decoration: BoxDecoration(
                                        color: transactions[index]['status'] ==
                                                'Completed'
                                            ? Color(0xffD1F7C4)
                                            : Color(0xffFFDCE5),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Text(
                                        transactions[index]['status'],
                                        style: TextStyle(
                                            fontSize: 8.0,
                                            color: Color(0xff337138)),
                                      ),
                                    )
                                  ]),
                            ),
                          )),
                  ListView.builder(
                      itemCount: sell.length,
                      itemBuilder: (context, index) => Center(
                            child: Container(
                              height: 50.h,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              color: Colors.white,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 15.h,
                                      child: Icon(
                                        Icons.swap_horiz,
                                        size: 16,
                                        color: Colors.red[400],
                                      ),
                                    ),
                                    Container(
                                      width: 120.w,
                                      child: Text(
                                        '${sell[index]['userProfile']}',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Color(
                                              (0xff374072),
                                            )),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      width: 80.w,
                                      decoration: detailcontain,
                                      child: Text(
                                        '${sell[index]['paid']}',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color(
                                              (0xff374072),
                                            )),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(4),
                                      height: 15.h,
                                      decoration: BoxDecoration(
                                        color: transactions[index]['status'] ==
                                                'Completed'
                                            ? Color(0xffD1F7C4)
                                            : Color(0xffFFDCE5),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Text(
                                        transactions[index]['status'],
                                        style: TextStyle(
                                            fontSize: 8.0,
                                            color: Color(0xff337138)),
                                      ),
                                    )
                                  ]),
                            ),
                          )),
                  ListView.builder(
                      itemCount: swap.length,
                      itemBuilder: (context, index) => Center(
                            child: Container(
                              height: 50.h,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              color: Colors.white,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 15,
                                      child: Icon(Icons.swap_horiz,
                                          size: 16, color: appbarcolor),
                                    ),
                                    Container(
                                      width: 120.w,
                                      child: Text(
                                        '${swap[index]['userProfile']}',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Color(
                                              (0xff374072),
                                            )),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      //height: 30.h,
                                      width: 80.w,
                                      decoration: detailcontain,

                                      child: Text(
                                        '${swap[index]['paid']}',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color(
                                              (0xff374072),
                                            )),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(4),
                                      // margin: EdgeInsets.symmetric(
                                      //     horizontal: 12.h),
                                      height: 15.h,
                                      decoration: BoxDecoration(
                                        color: transactions[index]['status'] ==
                                                'Completed'
                                            ? Color(0xffD1F7C4)
                                            : Color(0xffFFDCE5),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Text(
                                        transactions[index]['status'],
                                        style: TextStyle(
                                            fontSize: 8.0,
                                            color: Color(0xff337138)),
                                      ),
                                    )
                                  ]),
                            ),
                          )),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
