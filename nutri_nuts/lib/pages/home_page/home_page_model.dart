import '/components/bar_chart/bar_chart_widget.dart';
import '/components/macro_item_layout/macro_item_layout_widget.dart';
import '/components/mix_item_u_i/mix_item_u_i_widget.dart';
import '/components/trail_list_item/trail_list_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  String selectedGroup = 'Nuts';

  ///  State fields for stateful widgets in this page.

  // State field(s) for groupListView-desktop widget.
  ScrollController? groupListViewDesktop;
  // State field(s) for trailMixlistView-desktop widget.
  ScrollController? trailMixlistViewDesktop;
  // Models for trailListItem dynamic component.
  late FlutterFlowDynamicModels<TrailListItemModel> trailListItemModels;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // Models for MacroItemLayout dynamic component.
  late FlutterFlowDynamicModels<MacroItemLayoutModel> macroItemLayoutModels;
  // State field(s) for ListView widget.
  ScrollController? listViewController1;
  // Models for mixItemUI dynamic component.
  late FlutterFlowDynamicModels<MixItemUIModel> mixItemUIModels1;
  // State field(s) for mobile-layout widget.
  ScrollController? mobileLayout;
  // Model for barChart component.
  late BarChartModel barChartModel;
  // State field(s) for ListView widget.
  ScrollController? listViewController2;
  // Models for mixItemUI dynamic component.
  late FlutterFlowDynamicModels<MixItemUIModel> mixItemUIModels2;

  @override
  void initState(BuildContext context) {
    groupListViewDesktop = ScrollController();
    trailMixlistViewDesktop = ScrollController();
    trailListItemModels = FlutterFlowDynamicModels(() => TrailListItemModel());
    columnController = ScrollController();
    macroItemLayoutModels =
        FlutterFlowDynamicModels(() => MacroItemLayoutModel());
    listViewController1 = ScrollController();
    mixItemUIModels1 = FlutterFlowDynamicModels(() => MixItemUIModel());
    mobileLayout = ScrollController();
    barChartModel = createModel(context, () => BarChartModel());
    listViewController2 = ScrollController();
    mixItemUIModels2 = FlutterFlowDynamicModels(() => MixItemUIModel());
  }

  @override
  void dispose() {
    groupListViewDesktop?.dispose();
    trailMixlistViewDesktop?.dispose();
    trailListItemModels.dispose();
    columnController?.dispose();
    macroItemLayoutModels.dispose();
    listViewController1?.dispose();
    mixItemUIModels1.dispose();
    mobileLayout?.dispose();
    barChartModel.dispose();
    listViewController2?.dispose();
    mixItemUIModels2.dispose();
  }
}
