import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hari1/models/defaultModels.dart';
import 'package:hari1/models/roosterModels.dart';

class MyRooster extends StatelessWidget{
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Rooster', style: Theme.of(context).textTheme.display4),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: _RoosterList(),
              ),
            ),
            Divider(height: 4, color: Colors.black),
            _HeroTotal()
          ],
        ),
      ),
    );
  }
}

class _RoosterList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var itemNameStyle = Theme.of(context).textTheme.title;
    var rooster = Provider.of<RoosterStatus>(context);

    return ListView.builder(
      itemCount: rooster.rooster_hero.length,//cart.items.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        title: Text(
          rooster.rooster_hero[index].hName,
          style: itemNameStyle,
        ),
      ),
    );
  }
}

class _HeroTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var hugeStyle = Theme.of(context).textTheme.display4.copyWith(fontSize: 48);

    return SizedBox(
      height: 200,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<RoosterStatus>(
                builder: (context, rooster, child) =>
                    Text('Ada ${rooster.rooster_hero.length} Hero \ndi timmu', style: hugeStyle)),
            SizedBox(width: 24),            
          ],
        ),
      ),
    );
  }
}