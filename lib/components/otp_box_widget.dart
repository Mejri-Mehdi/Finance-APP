import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'otp_box_model.dart';
export 'otp_box_model.dart';

class OtpBoxWidget extends StatefulWidget {
  const OtpBoxWidget({
    super.key,
    String? digit,
  }) : this.digit = digit ?? '4';

  final String digit;

  @override
  State<OtpBoxWidget> createState() => _OtpBoxWidgetState();
}

class _OtpBoxWidgetState extends State<OtpBoxWidget> {
  late OtpBoxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtpBoxModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.0,
      height: 56.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 2.0,
        ),
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Text(
        valueOrDefault<String>(
          widget.digit,
          '4',
        ),
        style: FlutterFlowTheme.of(context).headlineMedium.override(
              font: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
                fontStyle:
                    FlutterFlowTheme.of(context).headlineMedium.fontStyle,
              ),
              color: FlutterFlowTheme.of(context).primaryText,
              letterSpacing: 0.0,
              fontWeight: FontWeight.bold,
              fontStyle: FlutterFlowTheme.of(context).headlineMedium.fontStyle,
              lineHeight: 1.4,
            ),
      ),
    );
  }
}
