import 'package:flutter/material.dart';
import 'package:login_page_day_23/graph.dart';
import 'analysis.dart';
import 'report1.dart';

void main() {
  runApp(MaterialApp(
    home: DashBoard(),
  ));
}

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, color: Colors.black, size: 50.0),
                  Text("AUSWEG",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30.0)),
                  Image.asset("assets/profile.png", width: 100.0)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "DASHBOARD",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  children: [
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.lightBlue,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/calendar.png", width: 64.0),
                                SizedBox(height: 10.0),
                                Text("Calendar",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0)),
                                SizedBox(height: 5.0),
                                Text(
                                  "",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.lightBlue,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/analysis.png", width: 64.0),
                                SizedBox(height: 10.0),
                                SizedBox(height: 5.0),
                                analySis()
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.lightBlue,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/report.png", width: 64.0),
                                SizedBox(height: 10.0),
                                SizedBox(height: 5.0),
                                Report_()
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.lightBlue,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/settings.png", width: 64.0),
                                SizedBox(height: 10.0),
                                Text("Settings",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0)),
                                SizedBox(height: 5.0),
                                Text(
                                  "",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.lightBlue,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/energy.png", width: 64.0),
                                SizedBox(height: 10.0),
                                Text("Energy",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0)),
                                SizedBox(height: 5.0),
                                Text(
                                  "",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.lightBlue,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/oil.png", width: 64.0),
                                SizedBox(height: 10.0),
                                Text("Oil",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0)),
                                SizedBox(height: 5.0),
                                Text(
                                  "",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
