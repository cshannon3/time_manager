class Category{
  final int id;
  final String name;
  final List<Activity> activities;

  Category({this.id, this.name, this.activities});

}

class Activity{
  final int id;
  final int parentId;
  final String name;
  final List<Subactivity> subactivities;

  Activity({this.id,this.parentId,  this.name, this.subactivities});

}

class Subactivity{
  final int id;
  final String name;

  Subactivity({this.name, this.id});
}

