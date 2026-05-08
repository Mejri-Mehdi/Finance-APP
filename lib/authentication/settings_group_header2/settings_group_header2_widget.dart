import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'settings_group_header2_model.dart';
export 'settings_group_header2_model.dart';

class SettingsGroupHeader2Widget extends StatefulWidget {
  const SettingsGroupHeader2Widget({
    super.key,
    String? title,
  }) : this.title = title ?? 'Preferences';

  final String title;

  @override
  State<SettingsGroupHeader2Widget> createState() =>
      _SettingsGroupHeader2WidgetState();
}

class _SettingsGroupHeader2WidgetState
    extends State<SettingsGroupHeader2Widget> {
  late SettingsGroupHeader2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsGroupHeader2Model());

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
              'Preferences',
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
