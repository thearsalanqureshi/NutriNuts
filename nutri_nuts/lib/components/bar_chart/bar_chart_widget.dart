import '/backend/schema/structs/index.dart';
import '/components/macro_item_layout/macro_item_layout_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'bar_chart_model.dart';
export 'bar_chart_model.dart';

class BarChartWidget extends StatefulWidget {
  const BarChartWidget({
    super.key,
    required this.finaltrailMixList,
  });

  final List<TrailDataStruct>? finaltrailMixList;

  @override
  State<BarChartWidget> createState() => _BarChartWidgetState();
}

class _BarChartWidgetState extends State<BarChartWidget> {
  late BarChartModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BarChartModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Builder(
        builder: (context) {
          final macroList = functions
              .getMacroNutrientsTotal(widget.finaltrailMixList!.toList())
              .toList();

          return Row(
            mainAxisSize: MainAxisSize.max,
            children: List.generate(macroList.length, (macroListIndex) {
              final macroListItem = macroList[macroListIndex];
              return Expanded(
                child: wrapWithModel(
                  model: _model.macroItemLayoutModels.getModel(
                    macroListItem.label,
                    macroListIndex,
                  ),
                  updateCallback: () => safeSetState(() {}),
                  updateOnChange: true,
                  child: MacroItemLayoutWidget(
                    key: Key(
                      'Keyvqn_${macroListItem.label}',
                    ),
                    lable: macroListItem.label,
                    color: macroListItem.color!,
                    value: macroListItem.value,
                    valueLabel: macroListItem.valueLabel,
                  ),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
