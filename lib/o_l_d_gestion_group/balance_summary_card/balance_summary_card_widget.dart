import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'balance_summary_card_model.dart';
export 'balance_summary_card_model.dart';

class BalanceSummaryCardWidget extends StatefulWidget {
  const BalanceSummaryCardWidget({
    super.key,
    String? amount,
    this.color,
    this.icon,
    String? label,
  })  : this.amount = amount ?? '\$420.50',
        this.label = label ?? 'You owe';

  final String amount;
  final Color? color;
  final Widget? icon;
  final String label;

  @override
  State<BalanceSummaryCardWidget> createState() =>
      _BalanceSummaryCardWidgetState();
}

class _BalanceSummaryCardWidgetState extends State<BalanceSummaryCardWidget> {
  late BalanceSummaryCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BalanceSummaryCardModel());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(20.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  widget.icon!,
                  Text(
                    valueOrDefault<String>(
                      widget.label,
                      'You owe',
                    ),
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelSmall.fontStyle,
                          lineHeight: 1.27,
                        ),
                  ),
                ].divide(SizedBox(width: 4.0)),
              ),
              Text(
                valueOrDefault<String>(
                  widget.amount,
                  '\$420.50',
                ),
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      font: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleLarge.fontStyle,
                      ),
                      color: valueOrDefault<Color>(
                        widget.color,
                        FlutterFlowTheme.of(context).error,
                      ),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleLarge.fontStyle,
                      lineHeight: 1.27,
                    ),
              ),
            ].divide(SizedBox(height: 4.0)),
          ),
        ),
      ),
    );
  }
}
