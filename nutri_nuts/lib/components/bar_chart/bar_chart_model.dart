import '/components/macro_item_layout/macro_item_layout_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bar_chart_widget.dart' show BarChartWidget;
import 'package:flutter/material.dart';

class BarChartModel extends FlutterFlowModel<BarChartWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for MacroItemLayout dynamic component.
  late FlutterFlowDynamicModels<MacroItemLayoutModel> macroItemLayoutModels;

  @override
  void initState(BuildContext context) {
    macroItemLayoutModels =
        FlutterFlowDynamicModels(() => MacroItemLayoutModel());
  }

  @override
  void dispose() {
    macroItemLayoutModels.dispose();
  }
}
