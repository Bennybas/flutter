import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(2),
                child: Image.asset('machines.png')),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Machines",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Wrap(
                  spacing: 10.0,
                  runSpacing: 100.0,
                  children: [
                    SizedBox(
                      width: 150.0,
                      height: 150.0,
                      child: Card(
                        color: Colors.white70,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/m1.png",
                                  width: 130,
                                  height: 110,
                                ),
                                Text("Machine 1")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150.0,
                      height: 150.0,
                      child: Card(
                        color: Colors.white70,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/m2.png",
                                  width: 130,
                                  height: 110,
                                ),
                                Text("Machine 2")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150.0,
                      height: 150.0,
                      child: Card(
                        color: Colors.white70,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/m3.png",
                                  width: 130,
                                  height: 110,
                                ),
                                Text("Machine 3")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150.0,
                      height: 150.0,
                      child: Card(
                        color: Colors.white70,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/m4.png",
                                  width: 130,
                                  height: 110,
                                ),
                                Text("Machine 4")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(0),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 50,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DashBoard()));
                },
                color: Colors.greenAccent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Back To Home",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
