import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testApp/Bank_options.dart';
import 'package:testApp/CustomAppBar.dart';
import 'package:testApp/Nav_bar.dart';
import 'package:testApp/balance_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        padding: EdgeInsets.all(0),
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  ClipPath(
                    child: Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).padding.top),
                      height: 310,
                      color: Color.fromRGBO(0, 57, 99, 10),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'EN',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                Icon(
                                  CupertinoIcons.chevron_down,
                                  color: Colors.white,
                                ),
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Icon(
                                  Icons.notifications_none,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Bank Transfer',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    clipper: CurveShape(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 140),
                    child: BalanceWidget(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 360),
                    child: BankOptions(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 614),
                    child: NavBar(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
