import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'item_bottom_sheet_widget.dart' show ItemBottomSheetWidget;
import 'package:flutter/material.dart';

class ItemBottomSheetModel extends FlutterFlowModel<ItemBottomSheetWidget> {
  ///  Local state fields for this component.

  TrailDataStruct? currenMixData;
  void updateCurrenMixDataStruct(Function(TrailDataStruct) updateFn) {
    updateFn(currenMixData ??= TrailDataStruct());
  }

  ///  State fields for stateful widgets in this component.

  // State field(s) for Slider widget.
  double? sliderValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
