import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'revenu_chart_model.dart';
export 'revenu_chart_model.dart';

class RevenuChartWidget extends StatefulWidget {
  const RevenuChartWidget({
    super.key,
    required this.walletParam,
  });

  final DocumentReference? walletParam;

  @override
  State<RevenuChartWidget> createState() => _RevenuChartWidgetState();
}

class _RevenuChartWidgetState extends State<RevenuChartWidget> {
  late RevenuChartModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RevenuChartModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 24.0),
      child: Container(
        decoration: BoxDecoration(),
        child: StreamBuilder<List<TransactionRecord>>(
          stream: queryTransactionRecord(
            queryBuilder: (transactionRecord) => transactionRecord.where(
              'walletReff',
              isEqualTo: widget.walletParam,
            ),
            singleRecord: true,
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                ),
              );
            }
            List<TransactionRecord> containerTransactionRecordList =
                snapshot.data!;
            // Return an empty Container when the item does not exist.
            if (snapshot.data!.isEmpty) {
              return Container();
            }
            final containerTransactionRecord =
                containerTransactionRecordList.isNotEmpty
                    ? containerTransactionRecordList.first
                    : null;

            return Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(28.0),
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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Statistiques des Catégories',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                          ),
                        ],
                      ),
                      Container(
                        height: 140.0,
                        child: Wrap(
                          spacing: 0.0,
                          runSpacing: 0.0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            StreamBuilder<List<TransactionRecord>>(
                              stream: queryTransactionRecord(
                                queryBuilder: (transactionRecord) =>
                                    transactionRecord.where(
                                  'walletReff',
                                  isEqualTo: widget.walletParam,
                                ),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<TransactionRecord>
                                    barChartTransactionRecordList =
                                    snapshot.data!;

                                return Container(
                                  height: 148.8,
                                  child: FlutterFlowBarChart(
                                    barData: [
                                      FFBarChartData(
                                        yData: functions.categorieCounts(
                                            barChartTransactionRecordList
                                                .toList()),
                                        color: Color(0x9B00E5FF),
                                      )
                                    ],
                                    xLabels: functions.categorieLabels(
                                        barChartTransactionRecordList.toList()),
                                    barWidth: 35.0,
                                    barBorderRadius: BorderRadius.circular(6.0),
                                    groupSpace: 2.0,
                                    alignment: BarChartAlignment.spaceEvenly,
                                    chartStylingInfo: ChartStylingInfo(
                                      backgroundColor: Colors.transparent,
                                      showBorder: false,
                                    ),
                                    axisBounds: AxisBounds(
                                      minY: 0.0,
                                      maxX: 5.0,
                                      maxY: 10.0,
                                    ),
                                    xAxisLabelInfo: AxisLabelInfo(
                                      showLabels: true,
                                      labelTextStyle: FlutterFlowTheme.of(
                                              context)
                                          .bodySmall
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                            lineHeight: 1.0,
                                          ),
                                      reservedSize: 20.0,
                                    ),
                                    yAxisLabelInfo: AxisLabelInfo(
                                      reservedSize: 0.0,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ].divide(SizedBox(height: 16.0)),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
