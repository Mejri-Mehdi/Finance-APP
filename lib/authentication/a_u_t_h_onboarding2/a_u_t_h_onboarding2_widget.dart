import '/authentication/button5/button5_widget.dart';
import '/authentication/onboarding_slide2/onboarding_slide2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_palette/material_palette.dart';
import 'a_u_t_h_onboarding2_model.dart';
export 'a_u_t_h_onboarding2_model.dart';

class AUTHOnboarding2Widget extends StatefulWidget {
  const AUTHOnboarding2Widget({super.key});

  static String routeName = 'AUTHOnboarding2';
  static String routePath = '/aUTHOnboarding2';

  @override
  State<AUTHOnboarding2Widget> createState() => _AUTHOnboarding2WidgetState();
}

class _AUTHOnboarding2WidgetState extends State<AUTHOnboarding2Widget> {
  late AUTHOnboarding2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AUTHOnboarding2Model());

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
        body: Stack(
          alignment: AlignmentDirectional(-1.0, -1.0),
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return RadialFbmGradientShaderFill(
                  width: constraints.maxWidth.isFinite
                      ? constraints.maxWidth
                      : 200.0,
                  height: 200.0,
                  params: ShaderParams(values: {
                    'gradientCenterX': 0.8,
                    'gradientCenterY': 0.2,
                    'gradientScale': 2.67,
                    'gradientOffset': -0.01,
                    'noiseIntensity': 0.43,
                    'ditherStrength': 0.0,
                    'ditherScale': 0.42,
                    'animSpeed': 0.42,
                    'octaves': 8.0,
                    'lacunarity': 2.16,
                    'persistence': 0.34,
                    'noiseScale': 2.93,
                    'colorCount': 4.0,
                    'softness': 0.82,
                    'exposure': 1.05,
                    'contrast': 1.16,
                    'bumpStrength': 1.6,
                    'lightDirX': 0.5,
                    'lightDirY': 0.06,
                    'lightDirZ': 0.79,
                    'lightIntensity': 1.06,
                    'ambient': 0.77,
                    'specular': 0.78,
                    'shininess': 101.49,
                    'metallic': 0.4,
                    'roughness': 0.4,
                    'edgeFade': 0.54,
                    'edgeFadeMode': 0.0
                  }, colors: {
                    'color0': FlutterFlowTheme.of(context).primaryBackground,
                    'color1': FlutterFlowTheme.of(context).secondaryBackground,
                    'color2': FlutterFlowTheme.of(context).common85,
                    'color3': FlutterFlowTheme.of(context).primaryBackground,
                    'color4': FlutterFlowTheme.of(context).common9,
                    'color5': FlutterFlowTheme.of(context).common9,
                    'color6': FlutterFlowTheme.of(context).common9,
                    'color7': FlutterFlowTheme.of(context).common9,
                    'color8': FlutterFlowTheme.of(context).common9,
                    'color9': FlutterFlowTheme.of(context).common9
                  }),
                  animationMode: ShaderAnimationMode.continuous,
                  cache: false,
                );
              },
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.network(
                        'https://cdn.simpleicons.org/revolut/7c4dff.svg',
                        width: 28.0,
                        height: 28.0,
                        fit: BoxFit.contain,
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(AUTHLoginWidget.routeName);
                        },
                        child: wrapWithModel(
                          model: _model.buttonModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: Button5Widget(
                            content: 'Skip',
                            icon_present: false,
                            icon_end_present: false,
                            variant: 'ghost',
                            size: 'small',
                            full_width: false,
                            loading: false,
                            disabled: false,
                            expanded: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 3.0, 0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.onboardingSlideModel,
                            updateCallback: () => safeSetState(() {}),
                            child: OnboardingSlide2Widget(
                              description:
                                  'Take full control of your digital and physical cards with real-time tracking and instant freeze features.',
                              icon: Icon(
                                Icons.payments_rounded,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 120.0,
                              ),
                              title: 'Manage Cards',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10.0,
                      sigmaY: 10.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).surface40,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 13.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 0.0),
                              child: Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 15.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              AUTHLoginWidget.routeName);
                                        },
                                        child: wrapWithModel(
                                          model: _model.buttonModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: Button5Widget(
                                            content: 'Get Started',
                                            icon_present: false,
                                            icon_end_present: false,
                                            variant: 'primary',
                                            size: 'large',
                                            full_width: true,
                                            loading: false,
                                            disabled: false,
                                            expanded: true,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.groups_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .onSurface,
                                                size: 20.0,
                                              ),
                                              Text(
                                                'Split',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelSmall
                                                    .override(
                                                      font: GoogleFonts.outfit(
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
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
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
                                                      lineHeight: 1.27,
                                                    ),
                                              ),
                                            ].divide(SizedBox(height: 4.0)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.pie_chart_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .onSurface,
                                                size: 20.0,
                                              ),
                                              Text(
                                                'Budget',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelSmall
                                                    .override(
                                                      font: GoogleFonts.outfit(
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
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
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
                                                      lineHeight: 1.27,
                                                    ),
                                              ),
                                            ].divide(SizedBox(height: 4.0)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.security_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .onSurface,
                                                size: 20.0,
                                              ),
                                              Text(
                                                'Secure',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelSmall
                                                    .override(
                                                      font: GoogleFonts.outfit(
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
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
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
                                                      lineHeight: 1.27,
                                                    ),
                                              ),
                                            ].divide(SizedBox(height: 4.0)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 16.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 32.0)),
            ),
          ],
        ),
      ),
    );
  }
}
