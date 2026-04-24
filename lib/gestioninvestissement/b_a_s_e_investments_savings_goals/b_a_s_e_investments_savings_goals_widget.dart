import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/gestioninvestissement/goal_card/goal_card_widget.dart';
import '/gestioninvestissement/investment_stat/investment_stat_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'b_a_s_e_investments_savings_goals_model.dart';
export 'b_a_s_e_investments_savings_goals_model.dart';

class BASEInvestmentsSavingsGoalsWidget extends StatefulWidget {
  const BASEInvestmentsSavingsGoalsWidget({super.key});

  static String routeName = 'BASEInvestmentsSavingsGoals';
  static String routePath = '/bASEInvestmentsSavingsGoals';

  @override
  State<BASEInvestmentsSavingsGoalsWidget> createState() =>
      _BASEInvestmentsSavingsGoalsWidgetState();
}

class _BASEInvestmentsSavingsGoalsWidgetState
    extends State<BASEInvestmentsSavingsGoalsWidget> {
  late BASEInvestmentsSavingsGoalsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BASEInvestmentsSavingsGoalsModel());

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
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print('FAB pressed ...');
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          icon: Icon(
            Icons.add_rounded,
            color: FlutterFlowTheme.of(context).onPrimary,
            size: 24.0,
          ),
          elevation: 0.0,
          label: Text(
            'Create Goal',
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).labelLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).onPrimary,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).labelLarge.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  lineHeight: 1.33,
                ),
          ),
        ),
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 16.0),
                  child: Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Investments',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w800,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w800,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .fontStyle,
                                    lineHeight: 1.25,
                                  ),
                            ),
                            Text(
                              'Growing your wealth',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                    lineHeight: 1.38,
                                  ),
                            ),
                          ],
                        ),
                        FlutterFlowIconButton(
                          borderRadius: 9999.0,
                          buttonSize: 40.0,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          icon: Icon(
                            Icons.notifications_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 24.0),
                child: Container(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          FlutterFlowTheme.of(context).secondary,
                          FlutterFlowTheme.of(context).tertiary
                        ],
                        stops: [0.0, 1.0],
                        begin: AlignmentDirectional(1.0, 1.0),
                        end: AlignmentDirectional(-1.0, -1.0),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(32.0),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Portfolio Value',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .onSurface80,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                        lineHeight: 1.33,
                                      ),
                                ),
                                Text(
                                  '\$48,290.45',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.w800,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLarge
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .onSurface,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w800,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .fontStyle,
                                        lineHeight: 1.2,
                                      ),
                                ),
                              ].divide(SizedBox(height: 4.0)),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                wrapWithModel(
                                  model: _model.investmentStatModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: InvestmentStatWidget(
                                    label: 'Monthly Gain',
                                    value: '+\$1,240.00',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.investmentStatModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: InvestmentStatWidget(
                                    label: 'APY',
                                    value: '8.4%',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.investmentStatModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: InvestmentStatWidget(
                                    label: 'Risk Level',
                                    value: 'Medium',
                                  ),
                                ),
                              ],
                            ),
                          ].divide(SizedBox(height: 24.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 24.0),
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
                              'Performance',
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                    lineHeight: 1.35,
                                  ),
                            ),
                            Container(
                              height: 34.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.check_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 16.0,
                                    ),
                                    Text(
                                      'Last 6 Months',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                            lineHeight: 1.38,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 6.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(20.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Container(
                              child: Container(
                                height: 168.0,
                                child: FlutterFlowLineChart(
                                  data: [
                                    FFLineChartData(
                                      xData: ([
                                        0.0,
                                        1.0,
                                        2.0,
                                        3.0,
                                        4.0,
                                        5.0,
                                        6.0
                                      ]),
                                      yData: ([
                                        12000.0,
                                        15000.0,
                                        14000.0,
                                        18000.0,
                                        22000.0,
                                        21000.0,
                                        25000.0
                                      ]),
                                      settings: LineChartBarData(
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        barWidth: 2.0,
                                        isCurved: true,
                                        belowBarData: BarAreaData(
                                          show: true,
                                          color: FlutterFlowTheme.of(context)
                                              .accent20,
                                        ),
                                      ),
                                    )
                                  ],
                                  chartStylingInfo: ChartStylingInfo(
                                    backgroundColor: Colors.transparent,
                                    showBorder: false,
                                  ),
                                  axisBounds: AxisBounds(
                                    minX: 0.0,
                                    minY: 0.0,
                                    maxX: 6.0,
                                    maxY: 30000.0,
                                  ),
                                  xLabels: ([
                                    'Jan',
                                    'Feb',
                                    'Mar',
                                    'Apr',
                                    'May',
                                    'Jun',
                                    'Jul'
                                  ]),
                                  xAxisLabelInfo: AxisLabelInfo(
                                    showLabels: true,
                                    labelTextStyle: FlutterFlowTheme.of(context)
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
                                    reservedSize: 28.0,
                                  ),
                                  yAxisLabelInfo: AxisLabelInfo(
                                    reservedSize: 0.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Savings Goals',
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
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                      lineHeight: 1.35,
                                    ),
                              ),
                              Text(
                                'Manage',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                      lineHeight: 1.38,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        wrapWithModel(
                          model: _model.goalCardModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: GoalCardWidget(
                            category: 'Automobile',
                            current: '45,000',
                            icon: Icon(
                              Icons.directions_car_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 22.0,
                            ),
                            icon_bg: FlutterFlowTheme.of(context).primary20,
                            name: 'Tesla Model S',
                            progress_color:
                                FlutterFlowTheme.of(context).primary,
                            progress_val: 0.5,
                            target: '90,000',
                            trend: '+4.2%',
                            is_up: true,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.goalCardModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: GoalCardWidget(
                            category: 'Investment',
                            current: '12,400',
                            icon: Icon(
                              Icons.currency_bitcoin_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 22.0,
                            ),
                            icon_bg: FlutterFlowTheme.of(context).accent20,
                            name: 'Crypto Portfolio',
                            progress_color:
                                FlutterFlowTheme.of(context).tertiary,
                            progress_val: 0.62,
                            target: '20,000',
                            trend: '-1.8%',
                            is_up: false,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.goalCardModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: GoalCardWidget(
                            category: 'Travel',
                            current: '4,800',
                            icon: Icon(
                              Icons.beach_access_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 22.0,
                            ),
                            icon_bg: FlutterFlowTheme.of(context).success20,
                            name: 'Bali Retreat',
                            progress_color:
                                FlutterFlowTheme.of(context).success,
                            progress_val: 0.96,
                            target: '5,000',
                            trend: '+12.5%',
                            is_up: true,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.goalCardModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: GoalCardWidget(
                            category: 'Security',
                            current: '15,000',
                            icon: Icon(
                              Icons.security_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 22.0,
                            ),
                            icon_bg: FlutterFlowTheme.of(context).secondary20,
                            name: 'Emergency Fund',
                            progress_color:
                                FlutterFlowTheme.of(context).secondary,
                            progress_val: 0.5,
                            target: '30,000',
                            trend: '+0.5%',
                            is_up: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
