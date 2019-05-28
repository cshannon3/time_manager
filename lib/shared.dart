import 'package:time_manager/Models/activity_model.dart';





/*
final List<Category> categories = 
[
Category(
  id: 0,
  name: "Music",
  activities: [
    Activity(
      id: 0,
      parentId: 0,
      name: "Guitar",
      subactivities: [
        Subactivity(name: "Song Practice", id: 0,),
        Subactivity(name: "Improv", id: 1,),
      ]
      ),
      Activity(
      id: 1,
      parentId: 0,
      name: "Drums",
      subactivities: [

      ]
      ),
      Activity(
      id: 2,
      parentId: 0,
      name: "Piano",
      subactivities: []
      ),
      Activity(
      id: 3,
      parentId: 0,
      name: "Producing",
      subactivities: []
      ),
      Activity(
      id: 4,
      parentId: 0,
      name: "Singing",
      subactivities: []
      ),
  ]

),
Category(
  id: 1,
  name: "Coding",
  activities: [
    Activity(
      id: 5,
      parentId: 1,
      name: "Music App",
      subactivities: []
      ),
      Activity(
      id: 6,
      parentId: 1,
      name: "Time App",
      subactivities: []
      ),
      Activity(
      id: 7,
      parentId: 1,
      name: "Data Vis App",
      subactivities: []
      ),
      Activity(
      id: 7,
      parentId: 1,
      name: "PDF Code",
      subactivities: []
      ),
      Activity(
      id: 8,
      parentId: 1,
      name: "Tutorial",
      subactivities: []
      ),
      
  ]
  ),

Category(
  id: 2,
  name: "3D Printing",
  activities: [
    Activity(
      id: 9,
      parentId: 2,
      name: "Project 1",
      subactivities: []
      ),

   Activity(
      id: 10,
      parentId: 2,
      name: "Project 2",
      subactivities: []
      ),
  ]
  ),
  Category(
  id: 2,
  name: "Electronics",
  activities: [

  ]
  ),
Category(
  id: 4,
  name: "Other",
  activities: [
    Activity(
      id: 11,
      parentId: 4,
      name: "Youtube",
      subactivities: []
      ),
    Activity(
      id: 12,
      parentId: 4,
      name: "Reading",
      subactivities: []
      ),
    Activity(
      id: 13,
      parentId: 4,
      name: "Driving",
      subactivities: []
      ),
    Activity(
      id: 14,
      parentId: 4,
      name: "Working",
      subactivities: []
      ),
        Activity(
      id: 15,
      parentId: 4,
      name: "Sleeping",
      subactivities: []
      ),
  ]
  ),

];
*/


final List<Category> categories = 
[
Category(
  id: 0,
  name: "Music",
),
Category(
  id: 1,
  name: "Coding",
  ),

Category(
  id: 2,
  name: "3D Printing",
  ),
  Category(
  id: 3,
  name: "Electronics",
  ),
Category(
  id: 4,
  name: "Other",
  ),

];

final List<Activity> activities = 
[
Activity(
      id: 0,
      parentId: 0,
      name: "Guitar",
      subactivities: [
        Subactivity(name: "Song Practice", id: 0,),
        Subactivity(name: "Improv", id: 1,),
      ]
      ),
      Activity(
      id: 1,
      parentId: 0,
      name: "Drums",
      subactivities: [

      ]
      ),
      Activity(
      id: 2,
      parentId: 0,
      name: "Piano",
      subactivities: []
      ),
      Activity(
      id: 3,
      parentId: 0,
      name: "Producing",
      subactivities: []
      ),
      Activity(
      id: 4,
      parentId: 0,
      name: "Singing",
      subactivities: []
      ),
      Activity(
      id: 5,
      parentId: 1,
      name: "Music App",
      subactivities: []
      ),
      Activity(
      id: 6,
      parentId: 1,
      name: "Time App",
      subactivities: []
      ),
      Activity(
      id: 7,
      parentId: 1,
      name: "Data Vis App",
      subactivities: []
      ),
      Activity(
      id: 7,
      parentId: 1,
      name: "PDF Code",
      subactivities: []
      ),
      Activity(
      id: 8,
      parentId: 1,
      name: "Tutorial",
      subactivities: []
      ),
      Activity(
      id: 9,
      parentId: 2,
      name: "Project 1",
      subactivities: []
      ),

   Activity(
      id: 10,
      parentId: 2,
      name: "Project 2",
      subactivities: []
      ),
       Activity(
      id: 11,
      parentId: 4,
      name: "Youtube",
      subactivities: []
      ),
    Activity(
      id: 12,
      parentId: 4,
      name: "Reading",
      subactivities: []
      ),
    Activity(
      id: 13,
      parentId: 4,
      name: "Driving",
      subactivities: []
      ),
    Activity(
      id: 14,
      parentId: 4,
      name: "Working",
      subactivities: []
      ),
        Activity(
      id: 15,
      parentId: 4,
      name: "Sleeping",
      subactivities: []
      ),
      
];