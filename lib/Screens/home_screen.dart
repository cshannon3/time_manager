import 'package:flutter/material.dart';
import 'package:time_manager/Controllers/main_controller.dart';
import 'package:time_manager/Controllers/ui_controller.dart';
import 'package:time_manager/Models/activity_model.dart';
import 'package:time_manager/shared.dart';


class HomeScreen extends StatelessWidget {
  final MainController controller;
  final UIController uiController;



  const HomeScreen({Key key, this.controller, this.uiController}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(categories.length, (_index){
        Category c = categories[_index];
        List a = activities.where((f)=> f.parentId== c.id).toList();
        return ExpansionTile(
            leading: IconButton(
              onPressed: (){
                          controller.newActivity(c.id, -1, -1);
                          uiController.changeScreen(UI_SCREEN.ACTIVITYSCREEN);
                        },
              icon: Icon(Icons.select_all),
            ),
            
            title: Text(c.name),
            children: List.generate(a.length, (_i){
              //.length, (_i){
               // Activity a = c.activities[_i];
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: ExpansionTile(
                      leading: IconButton(
                        onPressed: (){
                          controller.newActivity(c.id, a[_i].id, -1);
                          uiController.changeScreen(UI_SCREEN.ACTIVITYSCREEN);
                        },
                        icon: Icon(Icons.select_all),
                        ),
                      title: Text(a[_i].name),
                      children: List.generate(a[_i].subactivities.length, (_ii){
                                Subactivity s = a[_i].subactivities[_ii];
                                return Padding(
                                  padding: const EdgeInsets.only(left: 26.0),
                                  child: ListTile(
                                    onTap:  (){
                                      controller.newActivity(c.id, a[_i].id, s.id);
                                    uiController.changeScreen(UI_SCREEN.ACTIVITYSCREEN);
                                    },
                                    title: Text(s.name,),
                                    ),
                                );
                  
                                })
                  ),
                );
            })
        );
        
      }),
    );
  }
}