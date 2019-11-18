import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hari1/models/defaultModels.dart';
import 'package:hari1/models/roosterModels.dart';
import 'package:hari1/common/theme.dart';

import 'pages/pageHero.dart';
import 'pages/pageRooster.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Using MultiProvider is convenient when providing multiple objects.
    return MultiProvider(
      providers: [
        // In this sample app, CatalogModel never changes, so a simple Provider
        // is sufficient.
        Provider(builder: (context) => HeroDefault()),
        // CartModel is implemented as a ChangeNotifier, which calls for the use
        // of ChangeNotifierProvider. Moreover, CartModel depends
        // on CatalogModel, so a ProxyProvider is needed.
        ChangeNotifierProxyProvider<HeroDefault, RoosterStatus>(
            builder: (context, heroRooster, previousRooster) =>
                RoosterStatus(heroRooster, previousRooster)),
      ],
      child: MaterialApp(
        title: 'Provider Demo',
        theme: appTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => HeroPage(),
          '/rooster': (context) => MyRooster(),
        },
      ),
    );
  }
}