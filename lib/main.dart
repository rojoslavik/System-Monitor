import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'System Manager'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  /*
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text(widget.title),
      ), */
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            // color: Colors.yellowAccent,
            constraints: BoxConstraints(
                minHeight: 150.0,
                minWidth: 150.0,
                maxHeight: 400.0,
                maxWidth: 300.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SfRadialGauge(
                  axes: <RadialAxis>[
                    RadialAxis(
                      minimum: 0,
                      maximum: 115,
                      showLabels: false,
                      showTicks: false,
                      axisLineStyle: AxisLineStyle(
                        thickness: 0.1,
                        cornerStyle: CornerStyle.bothCurve,
                        color: Color.fromARGB(30, 0, 169, 181),
                        thicknessUnit: GaugeSizeUnit.factor,
                      ),
                      annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                          positionFactor: 0.05,
                          angle: 90,
                          widget: Text("CPU USAGE",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                  ],
                ),
                FAProgressBar(
                  backgroundColor: Colors.blue,
                  currentValue: 0,
                  maxValue: 100,
                  size: 20,
                  displayText: "%",
                ),
              ],
            ),
          ),
          SizedBox(width: 60.0),
          Container(
            constraints: BoxConstraints(
                minHeight: 30.0,
                minWidth: 20.0,
                maxHeight: 250.0,
                maxWidth: 20.0),
            child: FAProgressBar(
              backgroundColor: Colors.blue,
              currentValue: 0,
              maxValue: 100,
              size: 20,
              displayText: "%",
              direction: Axis.vertical,
            ),
          ),
          SizedBox(width: 60.0),
          Container(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            //color: Colors.red,
            constraints: BoxConstraints(
                minHeight: 150.0,
                minWidth: 150.0,
                maxHeight: 400.0,
                maxWidth: 300.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SfRadialGauge(
                  axes: <RadialAxis>[
                    RadialAxis(
                      minimum: 0,
                      maximum: 115,
                      showLabels: false,
                      showTicks: false,
                      axisLineStyle: AxisLineStyle(
                        thickness: 0.1,
                        cornerStyle: CornerStyle.bothCurve,
                        color: Color.fromARGB(30, 0, 169, 181),
                        thicknessUnit: GaugeSizeUnit.factor,
                      ),
                      annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                          positionFactor: 0.05,
                          angle: 90,
                          widget: Text("GPU USAGE",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                  ],
                ),
                FAProgressBar(
                  backgroundColor: Colors.blue,
                  currentValue: 0,
                  maxValue: 100,
                  size: 20,
                  displayText: "%",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
