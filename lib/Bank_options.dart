import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testApp/my_icons.dart';

class BankOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SvgPicture.asset(iconBulb),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Tips',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontFamily: 'Regular',
                  ),
                ),
                Expanded(child: SizedBox()),
                Text(
                  'Set Rate Alerts',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontFamily: 'Bold',
                  ),
                ),
                CupertinoSwitch(
                  value: false,
                  onChanged: null,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '* Rates are indicative and may vary',
              style: TextStyle(
                color: Colors.grey[500],
                fontFamily: 'Regular',
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  child: SvgPicture.asset(iconBank_Transfer),
                ),
                Container(
                    height: 100,
                    width: 100,
                    child: SvgPicture.asset(iconCash_payout)),
                Container(
                    height: 100,
                    width: 100,
                    child: SvgPicture.asset(iconClient_wallet_transfer)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  child: SvgPicture.asset(iconMobile_M_Transfer),
                ),
                Container(
                    height: 100,
                    width: 100,
                    child: SvgPicture.asset(iconPay_Mybill)),
                Container(
                    height: 100,
                    width: 100,
                    child: SvgPicture.asset(iconPrepaid_Topup)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
