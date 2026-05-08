import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'aa_model.dart';
export 'aa_model.dart';

class AaWidget extends StatefulWidget {
  const AaWidget({super.key});

  static String routeName = 'AA';
  static String routePath = '/aa';

  @override
  State<AaWidget> createState() => _AaWidgetState();
}

class _AaWidgetState extends State<AaWidget> {
  late AaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0x66FFFFFF),
              borderRadius: BorderRadius.circular(28.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).secondary,
                width: 1.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
