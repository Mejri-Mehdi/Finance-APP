import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/o_l_d_gestion_invest/button4/button4_widget.dart';
import '/o_l_d_gestion_invest/transaction_item3/transaction_item3_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_palette/material_palette.dart';
import 'g_e_s_t_i_o_n_i_n_v_e_s_t_goal_details_model.dart';
export 'g_e_s_t_i_o_n_i_n_v_e_s_t_goal_details_model.dart';

class GESTIONINVESTGoalDetailsWidget extends StatefulWidget {
  const GESTIONINVESTGoalDetailsWidget({super.key});

  static String routeName = 'GESTIONINVESTGoalDetails';
  static String routePath = '/gESTIONINVESTGoalDetails';

  @override
  State<GESTIONINVESTGoalDetailsWidget> createState() =>
      _GESTIONINVESTGoalDetailsWidgetState();
}

class _GESTIONINVESTGoalDetailsWidgetState
    extends State<GESTIONINVESTGoalDetailsWidget> {
  late GESTIONINVESTGoalDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GESTIONINVESTGoalDetailsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pieChartPieChartColorsList = [
      FlutterFlowTheme.of(context).primary,
      FlutterFlowTheme.of(context).alternate
    ];
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 16.0, 24.0, 16.0),
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              fillColor: Colors.transparent,
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Text(
                              'Investment Portfolio',
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
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              fillColor: Colors.transparent,
                              icon: Icon(
                                Icons.settings_rounded,
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
                    Container(
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 32.0, 24.0, 32.0),
                  child: Container(
                    child: Container(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          LayoutBuilder(
                            builder: (context, constraints) {
                              return FbmGradientShaderFill(
                                width: constraints.maxWidth.isFinite
                                    ? constraints.maxWidth
                                    : 200.0,
                                height: 200.0,
                                params: ShaderParams(values: {
                                  'gradientAngle': 135.0,
                                  'gradientScale': 0.64,
                                  'gradientOffset': -0.14,
                                  'noiseIntensity': 0.69,
                                  'ditherStrength': 0.0,
                                  'ditherScale': 1.0,
                                  'animSpeed': 0.92,
                                  'octaves': 3.06,
                                  'lacunarity': 1.71,
                                  'persistence': 0.15,
                                  'noiseScale': 1.56,
                                  'colorCount': 3.0,
                                  'softness': 1.0,
                                  'exposure': 1.0,
                                  'contrast': 1.0,
                                  'bumpStrength': 0.58,
                                  'lightDirX': 0.5,
                                  'lightDirY': 0.6,
                                  'lightDirZ': 0.9,
                                  'lightIntensity': 1.08,
                                  'ambient': 0.14,
                                  'specular': 0.07,
                                  'shininess': 41.67,
                                  'metallic': 0.02,
                                  'roughness': 0.78,
                                  'edgeFade': 0.0,
                                  'edgeFadeMode': 1.0
                                }, colors: {
                                  'color0': FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  'color1': Color(0x337C4DFF),
                                  'color2': FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  'color3': Color(0x00808080),
                                  'color4': Color(0x00808080),
                                  'color5': Color(0x00808080),
                                  'color6': Color(0x00808080),
                                  'color7': Color(0x00808080),
                                  'color8': Color(0x00808080),
                                  'color9': Color(0x00808080)
                                }),
                                animationMode: ShaderAnimationMode.continuous,
                                cache: false,
                              );
                            },
                          ),
                          Container(
                            width: 240.0,
                            height: 240.0,
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              height: 140.0,
                              child: FlutterFlowPieChart(
                                data: FFPieChartData(
                                  values: ([75.0, 25.0]),
                                  colors: pieChartPieChartColorsList,
                                  radius: [50.0],
                                ),
                                donutHoleRadius: 85.0,
                                donutHoleColor: Colors.transparent,
                                sectionLabelStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                      lineHeight: 1.0,
                                    ),
                                sectionsSpace: 0.0,
                                startDegreeOffset: -90.0,
                                labelPositionOffset: 0.6,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Current Balance',
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
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
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
                              Text(
                                '\$42,850',
                                style: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .fontStyle,
                                      lineHeight: 1.2,
                                    ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.flag_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .onSecondary,
                                    size: 14.0,
                                  ),
                                  Text(
                                    'Goal: \$60,000',
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontStyle,
                                          lineHeight: 1.27,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 4.0)),
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                child: Container(
                  child: Container(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            wrapWithModel(
                              model: _model.buttonModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: Button4Widget(
                                content: 'Add Funds',
                                icon: Icon(
                                  Icons.add_rounded,
                                  color: FlutterFlowTheme.of(context).onPrimary,
                                  size: 16.0,
                                ),
                                icon_present: true,
                                icon_end_present: false,
                                variant: 'primary',
                                size: 'medium',
                                full_width: true,
                                loading: false,
                                disabled: false,
                                expanded: true,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: wrapWithModel(
                                    model: _model.buttonModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: Button4Widget(
                                      content: 'Sell Assets',
                                      icon_present: false,
                                      icon_end_present: false,
                                      variant: 'outline',
                                      size: 'medium',
                                      full_width: true,
                                      loading: false,
                                      disabled: false,
                                      expanded: true,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: wrapWithModel(
                                    model: _model.buttonModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: Button4Widget(
                                      content: 'Rebalance',
                                      icon_present: false,
                                      icon_end_present: false,
                                      variant: 'outline',
                                      size: 'medium',
                                      full_width: true,
                                      loading: false,
                                      disabled: false,
                                      expanded: true,
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 16.0)),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                child: Container(
                  child: Container(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(20.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Total Return',
                                          style: FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontStyle,
                                                lineHeight: 1.27,
                                              ),
                                        ),
                                        Text(
                                          '+12.4%',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .onSurface,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                                lineHeight: 1.35,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 4.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(20.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Risk Level',
                                          style: FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontStyle,
                                                lineHeight: 1.27,
                                              ),
                                        ),
                                        Text(
                                          'Moderate',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                                lineHeight: 1.35,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 4.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
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
                          'Contribution History',
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
                                color: FlutterFlowTheme.of(context).primaryText,
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
                          'See All',
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
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
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        wrapWithModel(
                          model: _model.transactionItemModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: TransactionItem3Widget(
                            amount: '+\$1,200.00',
                            date: 'Oct 12, 2023',
                            icon: Icon(
                              Icons.account_balance_wallet_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 22.0,
                            ),
                            subtitle: 'Automated Transfer',
                            title: 'Monthly Deposit',
                            is_income: true,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.transactionItemModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: TransactionItem3Widget(
                            amount: '+\$45.20',
                            date: 'Oct 05, 2023',
                            icon: Icon(
                              Icons.autorenew_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 22.0,
                            ),
                            subtitle: 'Tech Growth Fund',
                            title: 'Dividend Reinvestment',
                            is_income: true,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.transactionItemModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: TransactionItem3Widget(
                            amount: '+\$5,000.00',
                            date: 'Sep 28, 2023',
                            icon: Icon(
                              Icons.payments_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 22.0,
                            ),
                            subtitle: 'Manual Transfer',
                            title: 'One-time Deposit',
                            is_income: true,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.transactionItemModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: TransactionItem3Widget(
                            amount: '-\$12.50',
                            date: 'Sep 15, 2023',
                            icon: Icon(
                              Icons.security_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 22.0,
                            ),
                            subtitle: 'Quarterly Management',
                            title: 'Portfolio Fee',
                            is_income: false,
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
              Container(
                height: 32.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
