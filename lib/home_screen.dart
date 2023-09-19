import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'components/my_button.dart';

// import 'package:pub_dev/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = "";
  var answer = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30 ),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment : Alignment.bottomRight,
                        child: Text(userInput.toString() ,
                        style:const TextStyle(fontSize: 30 , color: Colors.white),
                      ),
                      ),
                    const SizedBox(height: 20),
                      Text(answer.toString() , style:const TextStyle(fontSize: 30 , color: Colors.white),),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(title: "AC" , onPress: (){
                          userInput = "";
                          answer = "";
                          setState(() {

                          });
                        },),
                       const SizedBox(width: 10),
                        MyButton(title: "+/-" , onPress: (){
                          userInput += "+/-";
                          setState(() {
                          });
                        },),
                       const SizedBox(width: 10),
                        MyButton(title: "%" , onPress: (){
                          userInput += "%";
                          setState(() {
                          });
                        },),
                       const SizedBox(width: 10),
                        MyButton(title: "/" , onPress: (){
                          userInput += "/";
                          setState(() {
                          });
                        } , color: Colors.orange,),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: "7" , onPress: (){
                          userInput += "7";
                          setState(() {
                          });
                        },),
                        const SizedBox(width: 10),
                        MyButton(title: "8" , onPress: (){
                          userInput += "8";
                          setState(() {
                          });
                        },),
                        const SizedBox(width: 10),
                        MyButton(title: "9" , onPress: (){
                          userInput += "9";
                          setState(() {
                          });
                        },),
                        const SizedBox(width: 10),
                        MyButton(title: "*" , onPress: (){
                          userInput += "*";
                          setState(() {
                          });
                        } , color: Colors.orange,),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: "4" , onPress: (){
                          userInput += "4";
                          setState(() {
                          });
                        },),
                        const SizedBox(width: 10),
                        MyButton(title: "5" , onPress: (){
                          userInput += "5";
                          setState(() {
                          });
                        },),
                        const SizedBox(width: 10),
                        MyButton(title: "6" , onPress: (){
                          userInput += "6";
                          setState(() {
                          });
                        },),
                        const SizedBox(width: 10),
                        MyButton(title: "-" , onPress: (){
                          userInput += "-";
                          setState(() {
                          });
                        } , color: Colors.orange,),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: "1" , onPress: (){
                          userInput += "1";
                          setState(() {
                          });
                        },),
                        const SizedBox(width: 10),
                        MyButton(title: "2" , onPress: (){
                          userInput += "2";
                          setState(() {
                          });
                        },),
                        const SizedBox(width: 10),
                        MyButton(title: "3" , onPress: (){
                          userInput += "3";
                          setState(() {
                          });
                        },),
                        const SizedBox(width: 10),
                        MyButton(title: "+" , onPress: (){
                          userInput += "+";
                          setState(() {
                          });
                        } , color: Colors.orange,),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: "0" , onPress: (){
                          userInput += "0";
                          setState(() {
                          });
                        },),
                        const SizedBox(width: 10),
                        MyButton(title: "." , onPress: (){
                          userInput += ".";
                          setState(() {
                          });
                        },),
                        const SizedBox(width: 10),
                        MyButton(title: "DEL" , onPress: (){
                          userInput = userInput.substring(0 , userInput.length - 1);
                          setState(() {

                          });
                        },),
                        const SizedBox(width: 10),
                        MyButton(title: "=" , onPress: (){
                          equalPres();
                          setState(() {

                          });
                        } , color: Colors.orange,),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void equalPres(){


    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}





