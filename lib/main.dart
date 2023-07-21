

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sum_app/style.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sum App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }

}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageUI();
  }

}

class HomePageUI extends State<HomePage>{

  Map<String, double> FromValue = {"Num1": 0, "Num2": 0};
  double SUM = 0;

  @override
  Widget build(BuildContext context) {


      MyInputOnChanged(InputKey, InputValue) {
        setState(() {
          FromValue.update(InputKey, (value) => double.parse(InputValue));
        });
      }

      AddAllNumber(){
        setState(() {
          SUM = FromValue["Num1"]! + FromValue["Num2"]!;
        });
      }

    return Scaffold(
      appBar: AppBar(title: Text("Sum App"),
        titleSpacing: 30,
        elevation: 15,
        toolbarHeight: 70,
      ),

      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(SUM.toString(),style: HeadTextStyle(),), // Space use korar jonno size box use korte hobe
            SizedBox(height: 20,),
            TextFormField(onChanged: (value){
              MyInputOnChanged("Num1", value);
            },
              decoration: AppInputStyle("First Number"),),
            SizedBox(height: 20,),
            TextFormField(onChanged: (value){
              MyInputOnChanged("Num2", value);
            },
              decoration: AppInputStyle("Second Number"),),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              child: ElevatedButton(
              style: AppButtonStyle(),

              child: Text("ADD"),
              onPressed: (){
                AddAllNumber();
              },
            ),),
          ],
        ),
      ),

    );
  }
}
