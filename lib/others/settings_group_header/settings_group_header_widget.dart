import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'settings_group_header_model.dart';
export 'settings_group_header_model.dart';

class SettingsGroupHeaderWidget extends StatefulWidget {
  const SettingsGroupHeaderWidget({
    super.key,
    String? title,
  }) : this.title = title ?? 'Account Settings';

  final String title;

  @override
  State<SettingsGroupHeaderWidget> createState() =>
      _SettingsGroupHeaderWidgetState();
}

class _SettingsGroupHeaderWidgetState extends State<SettingsGroupHeaderWidget> {
  late SettingsGroupHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsGroupHeaderModel());

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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
        child: Container(
          child: Text(
            valueOrDefault<String>(
              widget.title,
              'Account Settings',
            ),
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primary,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  lineHeight: 1.33,
                ),
          ),
        ),
      ),
    );
  }
}
