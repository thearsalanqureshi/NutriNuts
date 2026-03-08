import '/components/trail_list_item/trail_list_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bottom_ingrident_list_sheet_model.dart';
export 'bottom_ingrident_list_sheet_model.dart';

class BottomIngridentListSheetWidget extends StatefulWidget {
  const BottomIngridentListSheetWidget({super.key});

  @override
  State<BottomIngridentListSheetWidget> createState() =>
      _BottomIngridentListSheetWidgetState();
}

class _BottomIngridentListSheetWidgetState
    extends State<BottomIngridentListSheetWidget> {
  late BottomIngridentListSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomIngridentListSheetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: 700.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 60.0,
                      height: 35.0,
                      decoration: BoxDecoration(),
                      child: Icon(
                        Icons.arrow_drop_down_sharp,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 0.0, 0.0),
              child: Builder(
                builder: (context) {
                  final trailMixGroups = functions
                      .getTrailMixGroups(functions.getTrailData()?.toList())
                      .toList();

                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: _model.groupListViewMobile,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(trailMixGroups.length,
                              (trailMixGroupsIndex) {
                        final trailMixGroupsItem =
                            trailMixGroups[trailMixGroupsIndex];
                        return Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (_model.selectedGroup != trailMixGroupsItem) {
                                _model.selectedGroup = trailMixGroupsItem;
                                safeSetState(() {});
                                await _model.trailMixListViewMobile?.animateTo(
                                  _model.trailMixListViewMobile!.position
                                      .maxScrollExtent,
                                  duration: Duration(milliseconds: 1000),
                                  curve: Curves.ease,
                                );
                              }
                            },
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 400),
                              curve: Curves.bounceOut,
                              height: 55.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: valueOrDefault<Color>(
                                    _model.selectedGroup == trailMixGroupsItem
                                        ? FlutterFlowTheme.of(context).primary
                                        : Color(0x00F1F4F8),
                                    Color(0x00F1F4F8),
                                  ),
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.easeInOut,
                                        width: 45.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(35.0),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(35.0),
                                            child: Image.asset(
                                              'assets/images/nuts.png',
                                              width: 45.0,
                                              height: 45.0,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 0.0),
                                        child: Text(
                                          trailMixGroupsItem,
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.quicksand(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: valueOrDefault<Color>(
                                                  _model.selectedGroup ==
                                                          trailMixGroupsItem
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                      : Color(0xFF4A4A4A),
                                                  Color(0xFF4A4A4A),
                                                ),
                                                fontSize:
                                                    valueOrDefault<double>(
                                                  _model.selectedGroup ==
                                                          trailMixGroupsItem
                                                      ? 18.0
                                                      : 14.0,
                                                  14.0,
                                                ),
                                                letterSpacing: 0.5,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      })
                          .divide(SizedBox(width: 5.0))
                          .addToEnd(SizedBox(width: 50.0)),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 590.0,
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Builder(
                  builder: (context) {
                    final trailData = functions.getTrailData()?.toList() ?? [];

                    return ListView.separated(
                      padding: EdgeInsets.fromLTRB(
                        0,
                        0,
                        0,
                        150.0,
                      ),
                      scrollDirection: Axis.vertical,
                      itemCount: trailData.length,
                      separatorBuilder: (_, __) => SizedBox(height: 10.0),
                      itemBuilder: (context, trailDataIndex) {
                        final trailDataItem = trailData[trailDataIndex];
                        return wrapWithModel(
                          model: _model.trailListItemModels.getModel(
                            trailDataItem.name,
                            trailDataIndex,
                          ),
                          updateCallback: () => safeSetState(() {}),
                          updateOnChange: true,
                          child: TrailListItemWidget(
                            key: Key(
                              'Key0lf_${trailDataItem.name}',
                            ),
                            itemName: trailDataItem.name,
                            calories: trailDataItem.calories,
                            trailData: trailDataItem,
                            fibre: trailDataItem.fibre,
                            protein: trailDataItem.protein,
                            carbs: trailDataItem.carbs,
                            fat: trailDataItem.fat,
                            sugar: trailDataItem.sugars,
                          ),
                        );
                      },
                      controller: _model.trailMixListViewMobile,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
