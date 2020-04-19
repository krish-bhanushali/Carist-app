import 'package:flutter/material.dart';
import 'package:bmicalculator/constants.dart';


class MainHeader extends StatelessWidget {
  MainHeader({ @required this.userIcon,
    @required  this.headerText,
    @required  this.userImage,
    @required  this.userName,
    @required  this.yourWish});
  final IconData userIcon;
  final ImageProvider userImage;
  final String yourWish;
  final String userName;
  final String headerText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kInactiveCardColour,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0),bottomLeft: Radius.circular(20.0))
      ),
      padding: EdgeInsets.all(12.0),

      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            child: Icon(userIcon,color: Colors.white,),
            backgroundImage: userImage,
            radius: 25.0,
            backgroundColor: kBottomContainerColour,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(yourWish,style: kWishTextStyle,),
          SizedBox(
            height: 2.0,
          ),
          Text(userName,style: kUserTextStyle,),
          SizedBox(
            height: 5.0,
          ),

          Text(headerText,style: kWishInfoTextStyle,),
          SizedBox(
            height: 10.0,
          ),

        ],
      ),
    );
  }
}