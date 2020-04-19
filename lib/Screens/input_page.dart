import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Components/reusable_card.dart';
import '../Components/genderIcon.dart';
import '../constants.dart';
import '../Components/RoundButton.dart';
import 'results_page.dart';
import '../Components/bottom_button.dart';
import 'package:bmicalculator/calculator_brain.dart';


enum GenderSelect {
  Male,
  Female
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = kInactiveCardColour;
  Color femaleCardColour = kInactiveCardColour;
  int height = 180;
  int weight = 60;
  int age = 18;


  GenderSelect selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReUsableCard(
                      onPress: (){
                        setState(() {
                          selectedGender = GenderSelect.Male;
                        });
                      },
                  colour: selectedGender == GenderSelect.Male ? kActiveCardColour : kInactiveCardColour,
                  cardChild: GenderWidget(
                    genderIcon: Icon(
                      FontAwesomeIcons.mars,
                      size: 80.0,
                    ),
                    genderIdentity: 'MALE',

                  ),
                )),
                Expanded(child: ReUsableCard(
                  onPress:()
                  {
                    setState(() {
                  selectedGender = GenderSelect.Female;

                  });},
                      colour: selectedGender == GenderSelect.Female ? kActiveCardColour : kInactiveCardColour,
                cardChild: GenderWidget(
                  genderIcon: Icon(
                    FontAwesomeIcons.venus,
                    size: 80.0,
                  ),
                  genderIdentity: 'FEMALE',

                ) ,)),
              ],
            )),
            Expanded(child: ReUsableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Text('HEIGHT',style: kLabelTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                      Text(height.toString()
                      , style: kNumTextStyle),
                      Text('cm',style: kLabelTextStyle,)
                    ],),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0x29EB1555),
                        thumbColor: Color(0xFFEB1555),
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15.0
                        ),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 30.0
                        )
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,


                        onChanged: (double newValue)
                        {
                         setState(() {
                           height = newValue.toInt();
                         });
                        },


                      ),
                    )
                  ],
                ),
                
                
                colour: kActiveCardColour)),
            Expanded(
                child: Row(

              children: <Widget>[
                Expanded(child: ReUsableCard(

                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('WIEGHT',style: kLabelTextStyle,),
                        Text(weight.toString(),style: kNumTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: <Widget>[
                           RoundIconButton(icon: FontAwesomeIcons.minus,
                           onPress: (){
                             setState(() {
                               weight--;
                             });
                           },),
                            SizedBox(width: 10.0,),
                           RoundIconButton(icon:FontAwesomeIcons.plus,
                           onPress: ()
                             {
                               setState(() {
                                 weight++;
                               });
                             },)
                          ],
                        )
                      ],
                    ),
                    colour: kActiveCardColour)),
                Expanded(child: ReUsableCard(

                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('AGE',style: kLabelTextStyle,),
                        Text(age.toString(),style: kNumTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: <Widget>[
                            RoundIconButton(icon: FontAwesomeIcons.minus,
                              onPress: (){
                                setState(() {
                                  age--;
                                });
                              },),
                            SizedBox(width: 10.0,),
                            RoundIconButton(icon:FontAwesomeIcons.plus,
                              onPress: ()
                              {
                                setState(() {
                                  age++;
                                });
                              },)
                          ],
                        )

                      ],
                    ),
                    colour: kActiveCardColour)),
              ],
            )),
            BottomButton(onTap: (){

              CalculatorBrain calc = CalculatorBrain(height: height,weight: weight);
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(
                bmiResult: calc.calculateBMI(),
                resultText: calc.getResult(),
                resultInterpretation: calc.getInterpretation(),

              )));
            },buttonTitle: "CALCULATE",)
          ],
        ));
  }
}
