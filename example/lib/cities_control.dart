
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CitiesControl extends StatelessWidget {
  void Function(String city) addCityFunction;

  CitiesControl(void Function(String city) this.addCityFunction);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        addCityFunction("Helsinki");
      },
      child: Text("Add"),
      color: Theme.of(context).primaryColor,
    );
  }
}
