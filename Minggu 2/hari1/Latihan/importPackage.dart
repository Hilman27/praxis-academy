// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'This is The Tittle',
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is AppBar Tittle'),
        ),
        body: Center(                    
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}