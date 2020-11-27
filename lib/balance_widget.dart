import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testApp/my_icons.dart';

class BalanceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Material(
                color: Colors.transparent,
                child: Text(
                  'You Send',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Regular',
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '00.00',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Regular',
                  fontSize: 20,
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              SvgPicture.asset(iconUae),
              SizedBox(width: 5),
              Text(
                'AED',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Regular',
                  fontSize: 20,
                ),
              ),
               SizedBox(width: 14,),
            ],
          ),
          SizedBox(height: 20),
          Container(
            height: 25,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
            ),
            child: Text(
              '1 AED = 20.35 INR',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Regular',
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '00.00',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Regular',
                  fontSize: 20,
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              SvgPicture.asset(iconindia),
              SizedBox(width: 5,),
              Text(
                'INR',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Regular',
                  fontSize: 20,
                ),
              ),
              Icon(
                CupertinoIcons.chevron_down,
                size: 20,
                color: Colors.blue,
              )
            ],
          ),
        ],
      ),
    );
  }
}
