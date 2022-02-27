import 'package:flutter/material.dart';
import 'machine.dart';

class machine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: MaterialButton(
          child: Text(
            " Machine "
            "  Gallery",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Gallery()));
          }),
    ));
  }
}
