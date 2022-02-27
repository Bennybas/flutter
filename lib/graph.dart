import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<charts.Series<Energy, String>> _seriesData;

  _generateData() {
    var data1 = [
      new Energy(1980, 'First Week', 50),
    ];
    var data2 = [
      new Energy(1985, 'Sec Week', 70),
    ];
    var data3 = [
      new Energy(1985, 'Third Week', 90),
    ];
    var data4 = [
      new Energy(1987, 'Forth Week', 100),
    ];
    var data5 = [
      new Energy(1988, 'Fifth Week', 150),
    ];

    _seriesData.add(
      charts.Series(
        domainFn: (Energy pollution, _) => pollution.place,
        measureFn: (Energy pollution, _) => pollution.quantity,
        id: '2017',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Energy pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff990099)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Energy pollution, _) => pollution.place,
        measureFn: (Energy pollution, _) => pollution.quantity,
        id: '2018',
        data: data2,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Energy pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff109618)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Energy pollution, _) => pollution.place,
        measureFn: (Energy pollution, _) => pollution.quantity,
        id: '2019',
        data: data3,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Energy pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xffff9900)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Energy pollution, _) => pollution.place,
        measureFn: (Energy pollution, _) => pollution.quantity,
        id: '2019',
        data: data4,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Energy pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xffff9988)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Energy pollution, _) => pollution.place,
        measureFn: (Energy pollution, _) => pollution.quantity,
        id: '2019',
        data: data5,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Energy pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xffff5971)),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesData = List<charts.Series<Energy, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff1976d2),
            //backgroundColor: Color(0xff308e1c),
            bottom: TabBar(
              indicatorColor: Color(0xff9962D0),
              tabs: [
                Tab(
                  icon: Icon(FontAwesomeIcons.solidChartBar),
                ),
              ],
            ),
            title: Text('Flutter Charts'),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Energy Consumption',
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: charts.BarChart(
                            _seriesData,
                            animate: true,
                            barGroupingType: charts.BarGroupingType.grouped,
                            //behaviors: [new charts.SeriesLegend()],
                            animationDuration: Duration(seconds: 5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Energy {
  String place;
  int year;
  int quantity;

  Energy(this.year, this.place, this.quantity);
}
