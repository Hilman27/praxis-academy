import 'package:flutter/material.dart';
import 'package:hari1/models/defaultModels.dart';

class RoosterStatus extends ChangeNotifier{
  final HeroDefault _heroDefault;    
  final List <int> _roosters;

  RoosterStatus(this._heroDefault,RoosterStatus previous)
  : assert(_heroDefault!=null),
  _roosters = previous?._roosters ?? []
  ;

  List <HeroStats> get rooster_hero => _roosters.map((id) => _heroDefault.initial(id)).toList();
  List <int> get int_rooster => _roosters;
  

  void add(HeroStats hero) {
    _roosters.add(hero.id);
    // This line tells [Model] that it should rebuild the widgets that
    // depend on it.
    print("Added hero ${hero.id}");
    notifyListeners();
  }
  int roosterTotal(){
    return rooster_hero.length;
  }  
}

