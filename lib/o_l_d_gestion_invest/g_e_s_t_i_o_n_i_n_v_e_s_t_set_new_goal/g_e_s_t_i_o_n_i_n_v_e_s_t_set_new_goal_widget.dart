import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/o_l_d_gestion_invest/button4/button4_widget.dart';
import '/o_l_d_gestion_invest/switch_component2/switch_component2_widget.dart';
import '/o_l_d_gestion_invest/text_field4/text_field4_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_palette/material_palette.dart';
import 'g_e_s_t_i_o_n_i_n_v_e_s_t_set_new_goal_model.dart';
export 'g_e_s_t_i_o_n_i_n_v_e_s_t_set_new_goal_model.dart';

class GESTIONINVESTSetNewGoalWidget extends StatefulWidget {
  const GESTIONINVESTSetNewGoalWidget({super.key});

  static String routeName = 'GESTIONINVESTSetNewGoal';
  static String routePath = '/gESTIONINVESTSetNewGoal';

  @override
  State<GESTIONINVESTSetNewGoalWidget> createState() =>
      _GESTIONINVESTSetNewGoalWidgetState();
}

class _GESTIONINVESTSetNewGoalWidgetState
    extends State<GESTIONINVESTSetNewGoalWidget> {
  late GESTIONINVESTSetNewGoalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GESTIONINVESTSetNewGoalModel());

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
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FlutterFlowIconButton(
                              borderRadius: 12.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
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
                              'Set Investment Goal',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font: GoogleFonts.outfit(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                    lineHeight: 1.27,
                                  ),
                            ),
                            Container(
                              width: 48.0,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              height: 120.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Stack(
                                alignment: AlignmentDirectional(-1.0, -1.0),
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
                                          'gradientScale': 0.89,
                                          'gradientOffset': 0.0,
                                          'noiseIntensity': 0.32,
                                          'ditherStrength': 2.51,
                                          'ditherScale': 0.29,
                                          'animSpeed': 1.46,
                                          'octaves': 6.06,
                                          'lacunarity': 2.35,
                                          'persistence': 0.5,
                                          'noiseScale': 6.36,
                                          'colorCount': 7.0,
                                          'softness': 0.0,
                                          'exposure': 1.0,
                                          'contrast': 1.0,
                                          'bumpStrength': 0.0,
                                          'lightDirX': 0.55,
                                          'lightDirY': 0.45,
                                          'lightDirZ': 1.0,
                                          'lightIntensity': 1.15,
                                          'ambient': 0.7,
                                          'specular': 0.29,
                                          'shininess': 40.76,
                                          'metallic': 1.0,
                                          'roughness': 1.0,
                                          'edgeFade': 1.72,
                                          'edgeFadeMode': 0.0,
                                          'sharpness': 2.2
                                        }, colors: {
                                          'color0': FlutterFlowTheme.of(context)
                                              .primary,
                                          'color1': FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          'color2': FlutterFlowTheme.of(context)
                                              .tertiary,
                                          'color3': FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          'color4': FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          'color5': FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          'color6': FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          'color7': FlutterFlowTheme.of(context)
                                              .common9,
                                          'color8': FlutterFlowTheme.of(context)
                                              .common9,
                                          'color9': FlutterFlowTheme.of(context)
                                              .common9
                                        }),
                                        animationMode:
                                            ShaderAnimationMode.continuous,
                                        cache: false,
                                      );
                                    },
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.rocket_launch_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .onSecondary,
                                          size: 40.0,
                                        ),
                                        Text(
                                          'Dream Big, Invest Smart',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.outfit(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .onSecondary80,
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
                                      ].divide(SizedBox(height: 8.0)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Goal Name',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      font: GoogleFonts.outfit(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
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
                              wrapWithModel(
                                model: _model.textFieldModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: TextField4Widget(
                                  label: false,
                                  helper: false,
                                  hint: 'e.g. Tesla Model S, Bali Trip',
                                  value: '',
                                  leading_icon: Icon(
                                    Icons.label_important_rounded,
                                  ),
                                  leading_icon_present: true,
                                  trailing_icon_present: false,
                                  variant: 'outlined',
                                  error: false,
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Investment Type',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      font: GoogleFonts.outfit(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
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
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: FlutterFlowDropDown<String>(
                                  controller: _model.dropdownValueController ??=
                                      FormFieldController<String>(
                                    _model.dropdownValue ??= 'Crypto Portfolio',
                                  ),
                                  options: [
                                    'Crypto Portfolio',
                                    'Stock Market',
                                    'Savings Account',
                                    'Real Estate'
                                  ],
                                  onChanged: (val) => safeSetState(
                                      () => _model.dropdownValue = val),
                                  width: 200.0,
                                  height: 40.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.plusJakartaSans(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                        lineHeight: 1.47,
                                      ),
                                  hintText: 'Crypto Portfolio',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderWidth: 1.0,
                                  borderRadius: 12.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Target Amount',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            font: GoogleFonts.outfit(
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
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                            lineHeight: 1.33,
                                          ),
                                    ),
                                    wrapWithModel(
                                      model: _model.textFieldModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: TextField4Widget(
                                        label: false,
                                        helper: false,
                                        hint: '\$0.00',
                                        value: '',
                                        leading_icon: Icon(
                                          Icons.payments_rounded,
                                        ),
                                        leading_icon_present: true,
                                        trailing_icon_present: false,
                                        variant: 'outlined',
                                        error: false,
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Initial Deposit',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            font: GoogleFonts.outfit(
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
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                            lineHeight: 1.33,
                                          ),
                                    ),
                                    wrapWithModel(
                                      model: _model.textFieldModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: TextField4Widget(
                                        label: false,
                                        helper: false,
                                        hint: '\$0.00',
                                        value: '',
                                        leading_icon: Icon(
                                          Icons.account_balance_wallet_rounded,
                                        ),
                                        leading_icon_present: true,
                                        trailing_icon_present: false,
                                        variant: 'outlined',
                                        error: false,
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                          Container(
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
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Auto-Invest',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font:
                                                    GoogleFonts.plusJakartaSans(
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
                                                        .primaryText,
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
                                        Text(
                                          'Recurring monthly deposit',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                font:
                                                    GoogleFonts.plusJakartaSans(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .fontStyle,
                                                lineHeight: 1.38,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 4.0)),
                                    ),
                                    wrapWithModel(
                                      model: _model.switchComponentModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SwitchComponent2Widget(
                                        label: false,
                                        variant: 'Android',
                                        active: true,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 140.0,
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
                                  height: 108.0,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Projected Growth',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  font: GoogleFonts.outfit(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                  lineHeight: 1.38,
                                                ),
                                          ),
                                          Text(
                                            '+12.5% Est.',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  font: GoogleFonts.outfit(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .onSurface,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                  lineHeight: 1.38,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          height: 180.0,
                                          child: FlutterFlowBarChart(
                                            barData: [
                                              FFBarChartData(
                                                yData: ([
                                                  30.0,
                                                  45.0,
                                                  60.0,
                                                  85.0,
                                                  110.0,
                                                  150.0
                                                ]),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              )
                                            ],
                                            xLabels: ([
                                              'Y1',
                                              'Y2',
                                              'Y3',
                                              'Y4',
                                              'Y5',
                                              'Y6'
                                            ]),
                                            barWidth: 24.0,
                                            barBorderRadius:
                                                BorderRadius.circular(4.0),
                                            groupSpace: 12.0,
                                            alignment:
                                                BarChartAlignment.spaceEvenly,
                                            chartStylingInfo: ChartStylingInfo(
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .common0,
                                              showBorder: false,
                                            ),
                                            axisBounds: AxisBounds(
                                              minY: 0.0,
                                              maxX: 5.0,
                                              maxY: 180.0,
                                            ),
                                            xAxisLabelInfo: AxisLabelInfo(
                                              showLabels: true,
                                              labelTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 16.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 24.0)),
                      ),
                      Container(
                        height: 32.0,
                      ),
                      wrapWithModel(
                        model: _model.buttonModel,
                        updateCallback: () => safeSetState(() {}),
                        child: Button4Widget(
                          content: 'Set Goal',
                          icon: Icon(
                            Icons.check_circle_rounded,
                            color: FlutterFlowTheme.of(context).onPrimary,
                            size: 16.0,
                          ),
                          icon_present: true,
                          icon_end_present: false,
                          variant: 'primary',
                          size: 'large',
                          full_width: true,
                          loading: false,
                          disabled: false,
                          expanded: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
