import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/gestioncartes/button4/button4_widget.dart';
import '/gestioncartes/card_transaction/card_transaction_widget.dart';
import '/gestioncartes/spending_limit_indicator/spending_limit_indicator_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_palette/material_palette.dart';
import 'g_e_s_t_i_o_n_c_a_r_t_e_s_card_details_overview_model.dart';
export 'g_e_s_t_i_o_n_c_a_r_t_e_s_card_details_overview_model.dart';

class GESTIONCARTESCardDetailsOverviewWidget extends StatefulWidget {
  const GESTIONCARTESCardDetailsOverviewWidget({super.key});

  static String routeName = 'GESTIONCARTESCardDetailsOverview';
  static String routePath = '/gESTIONCARTESCardDetailsOverview';

  @override
  State<GESTIONCARTESCardDetailsOverviewWidget> createState() =>
      _GESTIONCARTESCardDetailsOverviewWidgetState();
}

class _GESTIONCARTESCardDetailsOverviewWidgetState
    extends State<GESTIONCARTESCardDetailsOverviewWidget> {
  late GESTIONCARTESCardDetailsOverviewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => GESTIONCARTESCardDetailsOverviewModel());

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
              Container(
                height: 80.0,
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
                  child: Container(
                    child: Container(
                      height: 48.0,
                      alignment: AlignmentDirectional(0.0, 0.0),
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
                              Icons.arrow_back_ios_new_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          Text(
                            'Card Details',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
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
                              Icons.more_horiz_rounded,
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
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                child: Container(
                  child: Container(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Container(
                        child: Container(
                          height: 220.0,
                          child: Stack(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            children: [
                              Opacity(
                                opacity: 0.3,
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 60.0,
                                        sigmaY: 60.0,
                                      ),
                                      child: Container(
                                        width: 280.0,
                                        height: 120.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          shape: BoxShape.rectangle,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(24.0),
                                child: Container(
                                  height: 220.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24.0),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .primary30,
                                      width: 1.0,
                                    ),
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
                                              'color0':
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              'color1':
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              'color2':
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              'color3':
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              'color4':
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              'color5':
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              'color6':
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              'color7': Color(0x00808080),
                                              'color8': Color(0x00808080),
                                              'color9': Color(0x00808080)
                                            }),
                                            animationMode:
                                                ShaderAnimationMode.continuous,
                                            cache: false,
                                          );
                                        },
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 10.0,
                                            sigmaY: 10.0,
                                          ),
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.all(24.0),
                                              child: Container(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'PLATINUM',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .onSecondary,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                                lineHeight:
                                                                    1.33,
                                                              ),
                                                        ),
                                                        Icon(
                                                          Icons.nfc_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .onSecondary80,
                                                          size: 28.0,
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          '••••  ••••  ••••  4242',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .onSecondary,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                                lineHeight:
                                                                    1.27,
                                                              ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'CARD HOLDER',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .onSecondary60,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .fontStyle,
                                                                        lineHeight:
                                                                            1.27,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  'ALEX REED',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .onSecondary,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                        lineHeight:
                                                                            1.38,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                  'EXPIRES',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .onSecondary60,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .fontStyle,
                                                                        lineHeight:
                                                                            1.27,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  '12/28',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .onSecondary,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                        lineHeight:
                                                                            1.38,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 16.0)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
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
                        child: wrapWithModel(
                          model: _model.spendingLimitIndicatorModel,
                          updateCallback: () => safeSetState(() {}),
                          child: SpendingLimitIndicatorWidget(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                child: Container(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: wrapWithModel(
                            model: _model.buttonModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: Button4Widget(
                              content: 'Freeze',
                              icon: Icon(
                                Icons.lock_outline_rounded,
                                color: FlutterFlowTheme.of(context).onSecondary,
                                size: 16.0,
                              ),
                              icon_present: true,
                              icon_end_present: false,
                              variant: 'secondary',
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
                            model: _model.buttonModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: Button4Widget(
                              content: 'Limits',
                              icon: Icon(
                                Icons.tune_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 16.0,
                              ),
                              icon_present: true,
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
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 24.0),
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
                          'Recent Activity',
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
                          model: _model.cardTransactionModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: CardTransactionWidget(
                            amount: '-\$129.00',
                            icon: Icon(
                              Icons.laptop_mac_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            time: 'Today, 11:42 AM',
                            title: 'Apple Store',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.cardTransactionModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: CardTransactionWidget(
                            amount: '-\$12.50',
                            icon: Icon(
                              Icons.coffee_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            time: 'Yesterday, 08:15 AM',
                            title: 'Starbucks Coffee',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.cardTransactionModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: CardTransactionWidget(
                            amount: '-\$15.99',
                            icon: Icon(
                              Icons.play_circle_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            time: 'Oct 22, 2023',
                            title: 'Netflix Subscription',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.cardTransactionModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: CardTransactionWidget(
                            amount: '-\$24.30',
                            icon: Icon(
                              Icons.directions_car_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            time: 'Oct 21, 2023',
                            title: 'Uber Trip',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.cardTransactionModel5,
                          updateCallback: () => safeSetState(() {}),
                          child: CardTransactionWidget(
                            amount: '-\$84.20',
                            icon: Icon(
                              Icons.shopping_bag_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            time: 'Oct 20, 2023',
                            title: 'Amazon.com',
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
