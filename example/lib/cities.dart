import 'package:flutter/material.dart';

class Cities extends StatelessWidget {
  final List<String> _cities;

  Cities(this._cities);

  @override
  Widget build(BuildContext context) {
    return _cities.length == 0
        ? Center(child: Text('Nothing here'))
        : ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/berlin1.jpg'),
                    Text(_cities[index])
                  ],
                ),
              );
            },
            itemCount: _cities.length,
//        children: _cities
//            .map(
//              (element) => Card(
//                    child: Column(
//                      children: <Widget>[
//                        Image.asset('assets/berlin1.jpg'),
//                        Text(element)
//                      ],
//                    ),
//                  ),
//            )
//            .toList()
          );
  }
}
