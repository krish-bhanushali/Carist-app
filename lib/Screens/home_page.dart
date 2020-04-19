import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmicalculator/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Components/function_card.dart';
import '../Components/MainHeader.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Text('C',style: kLogoBoldStyle,),
              Text('arist',style: kLogoStyle,)
            ],
          ),
        ),
      ),
      body: SafeArea(
        child:  Container(
           padding: EdgeInsets.all(10.0),
           child: ListView(
             children: <Widget>[

               MainHeader(
                 userIcon: Icons.supervised_user_circle ,
                 headerText:'You know health should be at top priority' ,
                 userImage: null,
                 yourWish: "Good Morning,",
                 userName: "Krish",

                  ),
               Container(
                 margin: EdgeInsets.only(top: 40.0),
                 child:
                 Row(
                   children: <Widget>[
                     Container(
                       child: Center(child: Icon(FontAwesomeIcons.atom,color: Colors.white,)),
                     ),
                     SizedBox(
                       width: 20.0,
                     ),
                     GestureDetector(

                       onTap: (){

                         Navigator.of(context).pushNamed('/BMI');
                       },
                       child: FunctionCard(
                         functionType: "BMI-CALCULATOR",topLeftIcon: FontAwesomeIcons.spa,circularAvatarIcon:FontAwesomeIcons.weight,),
                     ),

                   ],
                 ),
               )
             ],
           ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: kBottomContainerColour,
        child: Container(
          height: 55.0,
          child: IconButton(icon: Icon(FontAwesomeIcons.home,color: Colors.white,), onPressed: (){

          }),


        ),

      ),
    );
  }
}

