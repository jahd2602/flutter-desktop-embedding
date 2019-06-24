import 'package:flutter/material.dart';

import 'cities.dart';
import 'cities_control.dart';

class CitiesManager extends StatefulWidget {
  final List<String> startingList;

  CitiesManager([this.startingList = const []]);

  @override
  State<StatefulWidget> createState() {
    return _CitiesManagerState();
  }
}

class _CitiesManagerState extends State<CitiesManager> {
  List<String> _cities = [];

  @override
  void initState() {
    super.initState();
    _cities = []..addAll(widget.startingList);
  }

  void _addCity(String city) {
    setState(() {
      _cities.add(city);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: CitiesControl(_addCity),
        margin: EdgeInsets.all(10.0),
      ),
      Expanded(
        child: Cities(_cities),
      )
    ]);
  }
}
