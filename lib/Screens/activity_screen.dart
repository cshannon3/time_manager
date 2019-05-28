import 'package:flutter/material.dart';
import 'package:time_manager/Controllers/main_controller.dart';
import 'package:time_manager/Controllers/ui_controller.dart';




class ActivityScreen extends StatelessWidget  {
  final MainController controller;
  final UIController uiController;
  const ActivityScreen({Key key, this.controller, this.uiController}) : super(key: key);


 @override
  Widget build(BuildContext context) {
    return Container(
      child: 
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: <Widget>[
              Text("Category  ${controller.getCategoryName()}",textAlign: TextAlign.center,),
              Text("Activity  ${controller.getActivityName()}"),
              
              
              ],),
        ),
    );
  }
}