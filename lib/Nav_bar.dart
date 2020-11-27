import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testApp/my_icons.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset(
                        iconBranches,
                        height: 25,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Branches')
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(
                        iconTrack,
                        height: 25,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Track')
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Client Logo',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(
                        iconBulb2,
                        height: 25,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Help')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.more_horiz, size: 30),
                      SizedBox(
                        height: 2,
                      ),
                      Text('More')
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Show more',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Regular',
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Icon(
                  CupertinoIcons.chevron_down_circle,
                  size: 18,
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Exclusive Offers',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Regular',
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 110,
                        width: 300,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(0, 24, 168, 1),
                                  Color.fromRGBO(0, 24, 168, 0.51)
                                ]),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shop & Earn',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '15% OFF on your bill',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Use Promo Code: SHOP15',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            SvgPicture.asset(iconShopping)
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
