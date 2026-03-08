// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

class VerticalProgressBar extends StatefulWidget {
  const VerticalProgressBar({
    Key? key,
    this.width,
    this.height,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.ratio,
    required this.borderRadius,
    required this.duration,
    required this.boxShadowColor,
    this.shadowXOffset,
    this.shadowYOffset,
    this.shadowBlurRadius,
    this.shadowSpreadRadius,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color backgroundColor;
  final Color foregroundColor;
  final double ratio;
  final double borderRadius;
  final int duration;
  final Color boxShadowColor;
  final double? shadowXOffset;
  final double? shadowYOffset;
  final double? shadowBlurRadius;
  final double? shadowSpreadRadius;

  @override
  _VerticalProgressBarState createState() => _VerticalProgressBarState();
}

class _VerticalProgressBarState extends State<VerticalProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        height: widget.height,
        child: SimpleAnimationProgressBar(
          height: widget.height ?? 100.0,
          width: widget.width ?? 10.0,
          backgroundColor: widget.backgroundColor,
          foregrondColor: widget.foregroundColor,
          ratio: widget.ratio,
          direction: Axis.vertical,
          curve: Curves.fastLinearToSlowEaseIn,
          duration: Duration(seconds: widget.duration),
          borderRadius: BorderRadius.circular(widget.borderRadius),
          // boxShadow: [
          //   BoxShadow(
          //     color: widget.boxShadowColor,
          //     offset: Offset(
          //       widget.shadowXOffset ?? 1.0,
          //       widget.shadowYOffset ?? 1.0,
          //     ),
          //     blurRadius: widget.shadowBlurRadius ?? 10.0,
          //     spreadRadius: widget.shadowSpreadRadius ?? 2.0,
          //   ),
          // ],
        ));
  }
}
