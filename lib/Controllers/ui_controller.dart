// This will take keep a list of widgets and controls their positions etc
// I want a
import 'package:flutter/material.dart';

enum UI_SCREEN{
  HOMESCREEN,
  HISTORYSCREEN,
  SETTINGSSCREEN,
  ACTIVITYSCREEN

  //.. etc
}
enum UI_OVERLAY {
  CURRENTTASK,
  MENU,
  NONE,
}
/*
enum UI_COMPONENTS{
  CATEGORIES,
  ACTIVITIES,
  SUBACTIVITIES,
  CURRENTTASK,
  NONE,

}*/

enum UI_EVENT {
  NEWSCREEN,
  NEWOVERLAY, 
  //NEWCOMPONENT,
  CLOSEOVERLAY,
  NONE
}
class UIController extends ChangeNotifier{

  UI_SCREEN _currentScreen = UI_SCREEN.HOMESCREEN;
  UI_OVERLAY _currentOverlay = UI_OVERLAY.NONE;
  //UI_COMPONENTS _currentComponent = UI_COMPONENTS.CATEGORIES;
  UI_EVENT _uiEvent = UI_EVENT.NONE;


  UI_SCREEN get currentScreen => _currentScreen;
  UI_OVERLAY get currentOverlay => _currentOverlay;
  UI_EVENT get uiEvent => _uiEvent;
  //UI_COMPONENTS get currentComponent => _currentComponent;

  void changeScreen(UI_SCREEN newScreen){
    _currentScreen=newScreen;
    _currentOverlay =UI_OVERLAY.NONE;
    _uiEvent = UI_EVENT.NEWSCREEN;
    notifyListeners();
  }

  void addOverlay(UI_OVERLAY newOverlay){
    _currentOverlay = newOverlay;
    _uiEvent = UI_EVENT.NEWOVERLAY;
    notifyListeners();
  }

  void closeOverlay(){
    _currentOverlay =UI_OVERLAY.NONE;
    _uiEvent = UI_EVENT.CLOSEOVERLAY;
    notifyListeners();
  }

  


  
  // Want it to keep track of screens and widget status
  // do this by passing in all info related to layout changes

  // this is passed into all objects that are affected by uI changes
  // have a list of all possible ui changes, the UI will have change notifiers that determine it's behavior

  // So this needs all possible layout states + to pass in any relavent info 
  // about new state





}

