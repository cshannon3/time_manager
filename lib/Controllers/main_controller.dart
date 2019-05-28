//import 'dart:async';
//import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
///import 'package:flutter/services.dart';
import 'package:time_manager/shared.dart';
import 'package:time_manager/Models/time_entry_model.dart';
enum RUNSTATUS{
  ACTIVE,
  INACTIVE,
  PAUSED,
  SAVED,
  NOMODEL
}

enum CONTROLLER_EVENT{
  RUN_STATUS_CHANGED,
  NONE
}

class MainController extends ChangeNotifier{

  //int _categoryId = -1;
  //int _activityId = -1;
  int _subActivityId = -1;
  RUNSTATUS runstatus = RUNSTATUS.NOMODEL;
  CONTROLLER_EVENT event = CONTROLLER_EVENT.NONE;

  TimeEntryModel _timeEntryModel = TimeEntryModel();



  void newActivity(int categoryId, int activityId, int subActivityId){
    _timeEntryModel.activityId=activityId;
    _timeEntryModel.categoryId = categoryId;
    runstatus = RUNSTATUS.INACTIVE;
    //_timeEntryModel
  }

  String getCategoryName(){
    if (_timeEntryModel.categoryId== -1){
      return "";
    }
    return categories.firstWhere((c) =>c.id == _timeEntryModel.categoryId ).name;
  }
  String getActivityName(){
    if (_timeEntryModel.activityId== -1){
      return "";
    }
    return activities.firstWhere((a) =>a.id == _timeEntryModel.activityId ).name;
  }

  void changeRunStatus(RUNSTATUS newRunStatus){
    runstatus = newRunStatus;
    event = CONTROLLER_EVENT.RUN_STATUS_CHANGED;
    notifyListeners();
  }

}

