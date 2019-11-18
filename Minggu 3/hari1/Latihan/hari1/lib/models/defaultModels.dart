import 'package:flutter/material.dart';


class HeroDefault{
  //Future Note : maybe use list instead of using each variable. It's cumbersome to add them one by one.
  List dataBase = [//Key=Name | Attack, Defense, Movement, Range, Name, Brief Desc
    [3,1,3,3,"GunMan","A man who has a gun."],
    [1,4,2,1, "TankMan", "A man who has a shield"],
    [1,1,4,2, "HorseMan", "A Horse who has a man."],
    [2,2,3,1, "ManMan", "A man who... uh... has a man."]
    
  ];

  HeroStats getById(int id) => HeroStats(id, dataBase[id % dataBase.length]);
  
  HeroStats initial(int id) {    
    //return HeroStats(id,dataBase[id]);    
    return getById(id);    
  }

}

class HeroStats{
  final int id;
  final List stats;
  final Color color= Colors.red;

  HeroStats(this.id, this.stats);
  
  int get idnum => id;
  List get hstats => stats;
  int get hAttack => stats[0];
  int get hDefense => stats[1];
  int get hMovement => stats[2];
  int get hRange => stats[3];
  String get hName => stats[4];
  String get hDesc => stats[5];

  

}