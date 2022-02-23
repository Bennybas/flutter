import 'package:flutter/material.dart';
import 'report.dart';

class Report_ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: MaterialButton(
          child: Text(
            "Report",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Report()));
          }),
    ));
  }
}
