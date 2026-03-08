import '/backend/schema/structs/index.dart';
import '/components/item_bottom_sheet/item_bottom_sheet_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'trail_list_item_model.dart';
export 'trail_list_item_model.dart';

class TrailListItemWidget extends StatefulWidget {
  const TrailListItemWidget({
    super.key,
    required this.itemName,
    required this.calories,
    this.fibre,
    this.protein,
    this.carbs,
    this.fat,
    this.sugar,
    required this.trailData,
  });

  final String? itemName;
  final double? calories;
  final double? fibre;
  final double? protein;
  final double? carbs;
  final double? fat;
  final double? sugar;
  final TrailDataStruct? trailData;

  @override
  State<TrailListItemWidget> createState() => _TrailListItemWidgetState();
}

class _TrailListItemWidgetState extends State<TrailListItemWidget>
    with TickerProviderStateMixin {
  late TrailListItemModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrailListItemModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 100.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 100.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 600),
        curve: Curves.easeIn,
        height: 95.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            functions
                    .getFInalTrailLabels(
                        FFAppState().finalTrailMixList.toList())
                    .contains(widget.itemName)
                ? Color(0xFFFFF2E9)
                : FlutterFlowTheme.of(context).secondaryBackground,
            FlutterFlowTheme.of(context).secondaryBackground,
          ),
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: valueOrDefault<Color>(
              functions
                      .getFInalTrailLabels(
                          FFAppState().finalTrailMixList.toList())
                      .contains(widget.itemName)
                  ? FlutterFlowTheme.of(context).primary
                  : Colors.transparent,
              Colors.transparent,
            ),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5512.0),
                      child: Image.asset(
                        'assets/images/wallnut.png',
                        width: 60.0,
                        height: 60.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: valueOrDefault<String>(
                                widget.itemName,
                                'Walnuts',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.raleway(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF757575),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.local_fire_department,
                              color: FlutterFlowTheme.of(context).warning,
                              size: 16.0,
                            ),
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: functions
                                        .getMultiplevalues(
                                            widget.calories!,
                                            valueOrDefault<int>(
                                              functions.getItemQuantityInMix(
                                                  widget.trailData!,
                                                  FFAppState()
                                                      .finalTrailMixList
                                                      .toList()),
                                              1,
                                            ))
                                        .toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.rubik(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF969696),
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  TextSpan(
                                    text: ' Kcal',
                                    style: GoogleFonts.rubik(
                                      color: Color(0xFF9D9D9D),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' • ',
                                    style: TextStyle(),
                                  ),
                                  TextSpan(
                                    text: valueOrDefault<String>(
                                      functions.checkIfItemExists(
                                              FFAppState()
                                                  .finalTrailMixList
                                                  .toList(),
                                              widget.trailData!)
                                          ? functions
                                              .convertIntToDouble(
                                                  valueOrDefault<int>(
                                                FFAppState()
                                                    .finalTrailMixList
                                                    .where((e) =>
                                                        e.index ==
                                                        widget
                                                            .trailData?.index)
                                                    .toList()
                                                    .firstOrNull
                                                    ?.quantity,
                                                1,
                                              ))
                                              .toString()
                                          : '5',
                                      '5',
                                    ),
                                    style: GoogleFonts.rubik(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'gm',
                                    style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10.0,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.lato(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFFAEAEAE),
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.white,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: Container(
                          height: 400.0,
                          child: ItemBottomSheetWidget(
                            trailData: widget.trailData!,
                          ),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
                text: 'Add',
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 10.0,
                ),
                options: FFButtonOptions(
                  height: 30.0,
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 5.0, 15.0, 5.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        font: GoogleFonts.poppins(
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                        color: Colors.white,
                        fontSize: 10.0,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).titleSmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleSmall.fontStyle,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ],
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
