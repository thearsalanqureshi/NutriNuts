// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:pie_chart/pie_chart.dart';
import 'dart:math' as math;

class CustomPieChart extends StatefulWidget {
  const CustomPieChart({
    Key? key,
    this.width,
    this.height,
    this.finalTrailData,
    required this.refreshPageUI,
    required this.totalMixWeight,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<TrailDataStruct>? finalTrailData;
  final Future<dynamic> Function() refreshPageUI;
  final double totalMixWeight;

  @override
  _CustomPieChartState createState() => _CustomPieChartState();
}

class _CustomPieChartState extends State<CustomPieChart> {
  UniqueKey pieChartKey = UniqueKey();
  Map<String, double> dataMap = {};

  final colorList = <Color>[
    const Color(0xfffdcb6e),
    const Color(0xff0984e3),
    const Color(0xfffd79a8),
    const Color(0xffe17055),
    const Color(0xff6c5ce7),
    Color.fromARGB(255, 58, 183, 145),
    Color.fromARGB(255, 216, 153, 71),
    Color.fromARGB(255, 236, 79, 208),
    Color.fromARGB(255, 96, 65, 197),
    Color.fromARGB(255, 37, 125, 154),
  ];

  @override
  void didUpdateWidget(CustomPieChart oldWidget) {
    super.didUpdateWidget(oldWidget);
    updateDataMap();
  }

  @override
  void initState() {
    super.initState();
    // Convert the list of TrailDataStruct to a Map<String, double>
    updateDataMap();
  }

  void updateDataMap() {
    if (widget.finalTrailData != null) {
      setState(() {
        dataMap = {
          for (var data in widget.finalTrailData!)
            data.name: data.quantity * 5.0
        };
        pieChartKey = UniqueKey();
        //widget.refreshPageUI();
        print("[CustomPieChart] updated final trail data ${dataMap}");
      });
    } else {
      setState(() {
        dataMap = {}; // Assign an empty map if trailDataList is null
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: PieChart(
      key: pieChartKey,
      dataMap: dataMap,
      animationDuration: Duration(milliseconds: 800),
      chartLegendSpacing: 30,
      chartRadius: math.min(MediaQuery.of(context).size.width / 2.5, 200),
      colorList: colorList,
      initialAngleInDegree: 0,
      chartType: ChartType.ring,
      ringStrokeWidth: 32,
      centerText: "${widget.totalMixWeight}gm",
      legendOptions: LegendOptions(
        showLegendsInRow: true,
        legendPosition: LegendPosition.bottom,
        showLegends: true,
        legendShape: BoxShape.circle,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 10,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: true,
        showChartValues: true,
        showChartValuesInPercentage: false,
        showChartValuesOutside: true,
        decimalPlaces: 1,
      ),
    ));
  }
}
