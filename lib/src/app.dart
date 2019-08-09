import 'package:flutter/material.dart';

import 'package:movify_clone/src/ui/parent.dart';



class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner : false,
        theme: ThemeData.dark(),
        home: Scaffold(
          body:  Parent(),
          
        ),
      );
  }
}