import '/components/trail_list_item/trail_list_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bottom_ingrident_list_sheet_widget.dart'
    show BottomIngridentListSheetWidget;
import 'package:flutter/material.dart';

class BottomIngridentListSheetModel
    extends FlutterFlowModel<BottomIngridentListSheetWidget> {
  ///  Local state fields for this component.

  String selectedGroup = 'Nuts';

  ///  State fields for stateful widgets in this component.

  // State field(s) for groupListView-mobile widget.
  ScrollController? groupListViewMobile;
  // State field(s) for trailMixListView-Mobile widget.
  ScrollController? trailMixListViewMobile;
  // Models for trailListItem dynamic component.
  late FlutterFlowDynamicModels<TrailListItemModel> trailListItemModels;

  @override
  void initState(BuildContext context) {
    groupListViewMobile = ScrollController();
    trailMixListViewMobile = ScrollController();
    trailListItemModels = FlutterFlowDynamicModels(() => TrailListItemModel());
  }

  @override
  void dispose() {
    groupListViewMobile?.dispose();
    trailMixListViewMobile?.dispose();
    trailListItemModels.dispose();
  }
}
