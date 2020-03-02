import 'package:flutter/material.dart';

import 'package:epics_flutter_app/navigation_screens/Modus.dart';
import 'package:epics_flutter_app/navigation_screens/Data.dart';

class ModiRoute extends StatefulWidget {
  const ModiRoute();

  @override
  _ModiRouteState createState() => _ModiRouteState();
}

class _ModiRouteState extends State<ModiRoute> {

  final _modi = <Modus>[];

  static const _modiNames = <String>[
    'Workouts',
    'Meal',
    'Dummy',
    'Dummy',
    'Dummy',
    'Dummy',
    'Dummy',
    'Dummy',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  static const _widgetIcons = <IconData>[
    Icons.fitness_center,
    Icons.fastfood,
    Icons.block,
    Icons.block,
    Icons.block,
    Icons.block,
    Icons.block,
    Icons.block,
  ];
  
  Widget _buildModiWidgets() {
    return ListView.builder(
        itemBuilder: (BuildContext context, int index) => _modi[index],
        itemCount: _modi.length,
    );
  }

  /// Returns a list of mock [Unit]s.
  List<Data> _retrieveDataList(String modusName) {
    return List.generate(10, (int i) {
      i += 1;
      return Data(
        name: '$modusName Data $i',
        conversion: i.toDouble(),
      );
    });
  }

  @override
  Widget build (BuildContext context) {

    for(var i = 0; i < _modiNames.length;i++) {
      _modi.add(Modus(
        name: _modiNames[i],
        color: _baseColors[i],
        iconLocation: _widgetIcons[i],
        data: _retrieveDataList(_modiNames[i]),
      ));
    }

    final listView = Container(
      color: Colors.greenAccent,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildModiWidgets(),
    );

    return Scaffold(
      body: listView,
    );

  }

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < _modiNames.length; i++) {
      _modi.add(Modus(
        name: _modiNames[i],
        color: _baseColors[i],
        iconLocation: _widgetIcons[i],
        data: _retrieveDataList(_modiNames[i]),
      ));
    }
  }
}