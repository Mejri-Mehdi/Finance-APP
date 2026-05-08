import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_palette/material_palette.dart';
import 'onboarding_slide_model.dart';
export 'onboarding_slide_model.dart';

class OnboardingSlideWidget extends StatefulWidget {
  const OnboardingSlideWidget({
    super.key,
    String? description,
    this.icon,
    String? title,
  })  : this.description = description ??
            'Grow your wealth with AI-powered portfolio management and real-time market insights.',
        this.title = title ?? 'Smart Investing';

  final String description;
  final Widget? icon;
  final String title;

  @override
  State<OnboardingSlideWidget> createState() => _OnboardingSlideWidgetState();
}

class _OnboardingSlideWidgetState extends State<OnboardingSlideWidget> {
  late OnboardingSlideModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardingSlideModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(40.0),
          child: Container(
            width: 320.0,
            height: 320.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              shape: BoxShape.rectangle,
            ),
            child: Stack(
              alignment: AlignmentDirectional(-1.0, -1.0),
              children: [
                LayoutBuilder(
                  builder: (context, constraints) {
                    return SimplexGradientShaderFill(
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
                        'noiseScale': 6.36,
                        'sharpness': 2.2,
                        'colorCount': 6.76,
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
                        'edgeFadeMode': 0.0
                      }, colors: {
                        'color0': FlutterFlowTheme.of(context).primary,
                        'color1':
                            FlutterFlowTheme.of(context).secondaryBackground,
                        'color2': FlutterFlowTheme.of(context).tertiary,
                        'color3':
                            FlutterFlowTheme.of(context).primaryBackground,
                        'color4':
                            FlutterFlowTheme.of(context).secondaryBackground,
                        'color5':
                            FlutterFlowTheme.of(context).primaryBackground,
                        'color6':
                            FlutterFlowTheme.of(context).primaryBackground,
                        'color7': FlutterFlowTheme.of(context).common9,
                        'color8': FlutterFlowTheme.of(context).common9,
                        'color9': FlutterFlowTheme.of(context).common9
                      }),
                      animationMode: ShaderAnimationMode.continuous,
                      cache: false,
                    );
                  },
                ),
                ClipRRect(
                  borderRadius: BorderRadius.only(),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 20.0,
                      sigmaY: 20.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).surface10,
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(32.0),
                        child: Container(
                          child: Container(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                widget.icon!,
                              ].divide(SizedBox(height: 16.0)),
                            ),
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
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                valueOrDefault<String>(
                  widget.title,
                  'Smart Investing',
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: GoogleFonts.outfit(
                        fontWeight: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontWeight,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                      fontWeight: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                      lineHeight: 1.25,
                    ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.description,
                  'Grow your wealth with AI-powered portfolio management and real-time market insights.',
                ),
                textAlign: TextAlign.center,
                maxLines: 3,
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      font: GoogleFonts.plusJakartaSans(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                      lineHeight: 1.5,
                    ),
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ].divide(SizedBox(height: 32.0)),
    );
  }
}
