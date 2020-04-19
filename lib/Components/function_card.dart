import 'package:flutter/material.dart';
import 'package:bmicalculator/constants.dart';


class FunctionCard extends StatelessWidget {

  FunctionCard({@required this.circularAvatarIcon,@required this.functionType,@required this.topLeftIcon});
  final IconData topLeftIcon;  //later change it
  final IconData circularAvatarIcon;
  final String functionType;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kInactiveCardColour,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      padding: EdgeInsets.all(16.0),
      height: 150.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(

            children: <Widget>[
              Icon(topLeftIcon,color: Colors.white,),
              SizedBox(width: 90.0,),
              Container(
                padding: EdgeInsets.all(2.0),
                child: CircleAvatar(
                  child: Icon(circularAvatarIcon,color: Colors.black,),
                  radius: 20.0,
                  backgroundColor: Colors.white,
                ),
              ),

            ],
          ),
          SizedBox(
            height: 50.0,
          ),

          Text(functionType,style: kLabelTextStyle,)
        ],
      ),
    );
  }
}
