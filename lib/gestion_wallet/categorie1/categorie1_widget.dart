import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'categorie1_model.dart';
export 'categorie1_model.dart';

class Categorie1Widget extends StatefulWidget {
  const Categorie1Widget({super.key});

  @override
  State<Categorie1Widget> createState() => _Categorie1WidgetState();
}

class _Categorie1WidgetState extends State<Categorie1Widget> {
  late Categorie1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Categorie1Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () {
        print('Button pressed ...');
      },
      text: 'Salaire',
      icon: Icon(
        Icons.payments,
        size: 20.0,
      ),
      options: FFButtonOptions(
        width: 110.0,
        height: 50.0,
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: Color(0x00FF2D87),
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              font: GoogleFonts.plusJakartaSans(
                fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
              ),
              color: FlutterFlowTheme.of(context).primaryText,
              letterSpacing: 0.0,
              fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
              fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
            ),
        elevation: 0.0,
        borderSide: BorderSide(
          color: FlutterFlowTheme.of(context).tertiary,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(24.0),
      ),
    );
  }
}
