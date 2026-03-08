// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math'; // Import the dart:math library for Random
import 'package:primer_progress_bar/primer_progress_bar.dart';
import 'dart:collection';

class CustomProgressBar extends StatefulWidget {
  const CustomProgressBar({
    Key? key,
    this.width,
    this.height,
    required this.allTrailMix,
    required this.refreshUIPage,
    this.textColor,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<TrailDataStruct> allTrailMix;
  final Future<dynamic> Function() refreshUIPage;
  final Color? textColor;

  @override
  _CustomProgressBarState createState() => _CustomProgressBarState();
}

class _CustomProgressBarState extends State<CustomProgressBar> {
  UniqueKey progressChartKey = UniqueKey();
  List<Segment> segments = [];

  Color getRandomColor() {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  List<Segment> createSegments(List<TrailDataStruct> trailDataList) {
    List<Segment> segments = [];

    // Helper function to group TrailDataStruct by 'group'
    Map<String, List<TrailDataStruct>> groupByGroup(
        List<TrailDataStruct> list) {
      Map<String, List<TrailDataStruct>> groupedMap = {};
      for (var trailData in list) {
        if (groupedMap.containsKey(trailData.group)) {
          groupedMap[trailData.group]!.add(trailData);
        } else {
          groupedMap[trailData.group] = [trailData];
        }
      }
      return groupedMap;
    }

    // Group the trailDataList by the 'group' field
    Map<String, List<TrailDataStruct>> groupedData =
        groupByGroup(trailDataList);

    // Map to store static colors for each group
    Map<String, Color> groupColors = {
      'Nuts': Color.fromARGB(255, 181, 118, 42),
      'Seeds': Color.fromARGB(255, 215, 213, 63),
      'Dried Fruits': Color.fromARGB(255, 136, 24, 33),
      'Extras': Color.fromARGB(255, 112, 79, 58)
    };

    // Iterate through each group
    groupedData.forEach((String group, List<TrailDataStruct> groupTrailData) {
      // Calculate the total quantity for the group
      double totalQuantity = groupTrailData.fold(0,
          (double sum, TrailDataStruct trailData) => sum + trailData.quantity);

      // Create a segment for the group with a static color
      segments.add(Segment(
        color: groupColors[group]!,
        value: totalQuantity.toInt(),
        label: Text(
          group,
          style: TextStyle(color: widget.textColor, fontSize: 10),
        ),
        valueLabel: Text('• ${(totalQuantity.toInt() * 5)}g',
            style: TextStyle(color: widget.textColor, fontSize: 10)),
      ));
    });

    return segments;
  }

  @override
  void didUpdateWidget(CustomProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Convert the list of TrailDataStruct to a Map<String, double>
    segments = createSegments(widget.allTrailMix);
    progressChartKey = UniqueKey();
    //widget.refreshUIPage();
  }

  @override
  void initState() {
    super.initState();
    // Convert the list of TrailDataStruct to a Map<String, double>
    segments = createSegments(widget.allTrailMix);
    progressChartKey = UniqueKey();
    //widget.refreshUIPage();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: PrimerProgressBar(key: progressChartKey, segments: segments));
  }
}
