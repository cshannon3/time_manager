import 'package:flutter/material.dart';
import 'package:time_manager/Controllers/main_controller.dart';
import 'package:time_manager/Controllers/ui_controller.dart';
 

class ActivityTile extends StatefulWidget {
   final MainController controller;
  final UIController uiController;

  const ActivityTile({Key key, this.controller, this.uiController}) : super(key: key);
  @override
  _ActivityTileState createState() => _ActivityTileState();
}

class _ActivityTileState extends State<ActivityTile> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.controller.addListener((){
      if(widget.controller.event == CONTROLLER_EVENT.RUN_STATUS_CHANGED){
        widget.controller.event=  CONTROLLER_EVENT.NONE;
        setState(() {
          
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}