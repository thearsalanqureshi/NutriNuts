import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'macro_item_layout_model.dart';
export 'macro_item_layout_model.dart';

class MacroItemLayoutWidget extends StatefulWidget {
  const MacroItemLayoutWidget({
    super.key,
    required this.lable,
    required this.color,
    required this.value,
    this.valueLabel,
  });

  final String? lable;
  final Color? color;
  final double? value;
  final String? valueLabel;

  @override
  State<MacroItemLayoutWidget> createState() => _MacroItemLayoutWidgetState();
}

class _MacroItemLayoutWidgetState extends State<MacroItemLayoutWidget> {
  late MacroItemLayoutModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MacroItemLayoutModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 10.0),
          child: Text(
            valueOrDefault<String>(
              widget.valueLabel,
              '1.0g',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: widget.color,
                  fontSize: 12.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
        ),
        Container(
          width: 15.0,
          height: 100.0,
          child: custom_widgets.VerticalProgressBar(
            width: 15.0,
            height: 100.0,
            backgroundColor: Color(0xFFDFDFDF),
            foregroundColor: widget.color!,
            ratio: functions.convertGramToDecimal(widget.value!)!,
            borderRadius: 5.0,
            duration: 1,
            boxShadowColor: Color(0x81677681),
            shadowXOffset: 1.0,
            shadowYOffset: 1.0,
            shadowBlurRadius: 12.0,
            shadowSpreadRadius: 2.0,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
          child: Text(
            valueOrDefault<String>(
              widget.lable,
              'Label',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.quicksand(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Color(0xFFA1A1A1),
                  fontSize: 12.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
        ),
      ],
    );
  }
}
