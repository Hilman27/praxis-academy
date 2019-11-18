import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hari1/models/defaultModels.dart';
import 'package:hari1/models/roosterModels.dart';

class HeroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _Apphead(),
          SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => _RoosterList(index),
            ),
          )

        ],
      ),
    );
  }

}

class _Apphead extends StatelessWidget{
  @override
  Widget build(BuildContext context) {    
    return SliverAppBar(
      title: Text("Hero Select"),
      floating: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.class_),
          onPressed: () => Navigator.pushNamed(context, '/rooster'),
        )
      ],
    );
  }  
}

class _RoosterList extends StatelessWidget{
  final int index;

  _RoosterList(this.index, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rooster = Provider.of<HeroDefault>(context);
    var hero = rooster.initial(index);
    var textTheme = Theme.of(context).textTheme.title;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: LimitedBox(
        maxHeight: 100,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                color: hero.color,
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(hero.hName, style: textTheme),
                  Row(    
                    crossAxisAlignment: CrossAxisAlignment.center,                
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(Icons.colorize),
                          Icon(Icons.event),                          
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(hero.hAttack.toString(), style: textTheme),
                          Text(hero.hDefense.toString(), style: textTheme),
                        ],
                      ),
                      SizedBox(width: 15),
                      Column(
                        children: <Widget>[
                          Icon(Icons.reply_all),
                          Icon(Icons.my_location),                          
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(hero.hMovement.toString(), style: textTheme),
                          Text(hero.hRange.toString(), style: textTheme),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(width: 24),
            _AddButton(hero: hero),
          ],
        ),
      ),
    );
  }
}

class _AddButton extends StatelessWidget {
  final HeroStats hero;

  const _AddButton({Key key, @required this.hero}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rooster = Provider.of<RoosterStatus>(context);

    return FlatButton(
      
      onPressed: rooster.rooster_hero.contains(hero) ? null : () => rooster.add(hero),      
      splashColor: Theme.of(context).primaryColor,//Colors.grey,
      child: rooster.int_rooster.contains(hero.id)
          ? Icon(Icons.check, semanticLabel: 'ADDED')
          : Text('ADD'),
    );
  }
}