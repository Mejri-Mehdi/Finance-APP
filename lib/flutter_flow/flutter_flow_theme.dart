// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';

SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();

  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color onPrimary;
  late Color onSecondary;
  late Color onSurface;
  late Color onError;
  late Color transparent;
  late Color onPrimary20;
  late Color onSurface70;
  late Color primary15;
  late Color primary30;
  late Color secondary30;
  late Color accent30;
  late Color success30;
  late Color error30;
  late Color success20;
  late Color primary10;
  late Color accent10;
  late Color primary20;
  late Color onSurface80;
  late Color accent20;
  late Color success15;
  late Color error15;
  late Color onSecondary80;
  late Color onPrimary80;
  late Color onPrimary60;
  late Color onSurface10;
  late Color onSurface20;
  late Color onSurface60;
  late Color surface10;
  late Color onSecondary60;
  late Color secondary20;
  late Color secondaryText50;
  late Color primaryText60;
  late Color surface20;
  late Color surface30;
  late Color divider50;
  late Color error20;
  late Color surface40;
  late Color secondary10;
  late Color customColor1;
  late Color customColor2;

  FFDesignTokens get designToken => FFDesignTokens(this);

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  bool get displayLargeIsCustom => typography.displayLargeIsCustom;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  bool get displayMediumIsCustom => typography.displayMediumIsCustom;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  bool get displaySmallIsCustom => typography.displaySmallIsCustom;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  bool get headlineLargeIsCustom => typography.headlineLargeIsCustom;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  bool get headlineMediumIsCustom => typography.headlineMediumIsCustom;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  bool get headlineSmallIsCustom => typography.headlineSmallIsCustom;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  bool get titleLargeIsCustom => typography.titleLargeIsCustom;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  bool get titleMediumIsCustom => typography.titleMediumIsCustom;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  bool get titleSmallIsCustom => typography.titleSmallIsCustom;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  bool get labelLargeIsCustom => typography.labelLargeIsCustom;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  bool get labelMediumIsCustom => typography.labelMediumIsCustom;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  bool get labelSmallIsCustom => typography.labelSmallIsCustom;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  bool get bodyLargeIsCustom => typography.bodyLargeIsCustom;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  bool get bodyMediumIsCustom => typography.bodyMediumIsCustom;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  bool get bodySmallIsCustom => typography.bodySmallIsCustom;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF7C4DFF);
  late Color secondary = const Color(0xFF00E676);
  late Color tertiary = const Color(0xFFFF4081);
  late Color alternate = const Color(0xFFE5E7EB);
  late Color primaryText = const Color(0xFF1A1A1A);
  late Color secondaryText = const Color(0xFF6B7280);
  late Color primaryBackground = const Color(0xFFF8F9FE);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0x4D9489F5);
  late Color accent2 = const Color(0x4C39D2C0);
  late Color accent3 = const Color(0xFF9CA3AF);
  late Color accent4 = const Color(0x9AFFFFFF);
  late Color success = const Color(0xFF00C853);
  late Color warning = const Color(0xFFFCDC0C);
  late Color error = const Color(0xFFFF5252);
  late Color info = const Color(0xFFFFFFFF);

  late Color onPrimary = const Color(0xFFFFFFFF);
  late Color onSecondary = const Color(0xFF000000);
  late Color onSurface = const Color(0xFF1A1A1A);
  late Color onError = const Color(0xFFFFFFFF);
  late Color transparent = const Color(0x00000000);
  late Color onPrimary20 = const Color(0x33FFFFFF);
  late Color onSurface70 = const Color(0xB31A1A1A);
  late Color primary15 = const Color(0x267C4DFF);
  late Color primary30 = const Color(0x4D7C4DFF);
  late Color secondary30 = const Color(0x4D00E676);
  late Color accent30 = const Color(0x4DFF4081);
  late Color success30 = const Color(0x4D00C853);
  late Color error30 = const Color(0x4DFF5252);
  late Color success20 = const Color(0x3300C853);
  late Color primary10 = const Color(0x1A7C4DFF);
  late Color accent10 = const Color(0x1AFF4081);
  late Color primary20 = const Color(0x337C4DFF);
  late Color onSurface80 = const Color(0xCC1A1A1A);
  late Color accent20 = const Color(0x33FF4081);
  late Color success15 = const Color(0x2600C853);
  late Color error15 = const Color(0x26FF5252);
  late Color onSecondary80 = const Color(0xCC000000);
  late Color onPrimary80 = const Color(0xCCFFFFFF);
  late Color onPrimary60 = const Color(0x99FFFFFF);
  late Color onSurface10 = const Color(0x1A1A1A1A);
  late Color onSurface20 = const Color(0x331A1A1A);
  late Color onSurface60 = const Color(0x991A1A1A);
  late Color surface10 = const Color(0x1AFFFFFF);
  late Color onSecondary60 = const Color(0x99000000);
  late Color secondary20 = const Color(0x3300E676);
  late Color secondaryText50 = const Color(0x806B7280);
  late Color primaryText60 = const Color(0x991A1A1A);
  late Color surface20 = const Color(0x33FFFFFF);
  late Color surface30 = const Color(0x4DFFFFFF);
  late Color divider50 = const Color(0x80E5E7EB);
  late Color error20 = const Color(0x33FF5252);
  late Color surface40 = const Color(0x66FFFFFF);
  late Color secondary10 = const Color(0x1A00E676);
  late Color customColor1 = const Color(0xFFA6BBEB);
  late Color customColor2 = const Color(0xFFA86A33);
}

abstract class Typography {
  String get displayLargeFamily;
  bool get displayLargeIsCustom;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  bool get displayMediumIsCustom;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  bool get displaySmallIsCustom;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  bool get headlineLargeIsCustom;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  bool get headlineMediumIsCustom;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  bool get headlineSmallIsCustom;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  bool get titleLargeIsCustom;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  bool get titleMediumIsCustom;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  bool get titleSmallIsCustom;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  bool get labelLargeIsCustom;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  bool get labelMediumIsCustom;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  bool get labelSmallIsCustom;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  bool get bodyLargeIsCustom;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  bool get bodyMediumIsCustom;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  bool get bodySmallIsCustom;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Outfit';
  bool get displayLargeIsCustom => false;
  TextStyle get displayLarge => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  String get displayMediumFamily => 'Outfit';
  bool get displayMediumIsCustom => false;
  TextStyle get displayMedium => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'Outfit';
  bool get displaySmallIsCustom => false;
  TextStyle get displaySmall => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Inter';
  bool get headlineLargeIsCustom => false;
  TextStyle get headlineLarge => GoogleFonts.inter(
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 32.0,
        height: 1.2,
      );
  String get headlineMediumFamily => 'Inter';
  bool get headlineMediumIsCustom => false;
  TextStyle get headlineMedium => GoogleFonts.inter(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 26.0,
        height: 1.25,
      );
  String get headlineSmallFamily => 'Outfit';
  bool get headlineSmallIsCustom => false;
  TextStyle get headlineSmall => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 22.0,
      );
  String get titleLargeFamily => 'Inter';
  bool get titleLargeIsCustom => false;
  TextStyle get titleLarge => GoogleFonts.inter(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
        height: 1.27,
      );
  String get titleMediumFamily => 'Inter';
  bool get titleMediumIsCustom => false;
  TextStyle get titleMedium => GoogleFonts.inter(
        color: theme.info,
        fontWeight: FontWeight.w600,
        fontSize: 17.0,
        height: 1.35,
      );
  String get titleSmallFamily => 'Plus Jakarta Sans';
  bool get titleSmallIsCustom => false;
  TextStyle get titleSmall => GoogleFonts.plusJakartaSans(
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Inter';
  bool get labelLargeIsCustom => false;
  TextStyle get labelLarge => GoogleFonts.inter(
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
        height: 1.33,
      );
  String get labelMediumFamily => 'Inter';
  bool get labelMediumIsCustom => false;
  TextStyle get labelMedium => GoogleFonts.inter(
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 12.0,
        height: 1.38,
      );
  String get labelSmallFamily => 'Inter';
  bool get labelSmallIsCustom => false;
  TextStyle get labelSmall => GoogleFonts.inter(
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 10.0,
        height: 1.27,
      );
  String get bodyLargeFamily => 'Inter';
  bool get bodyLargeIsCustom => false;
  TextStyle get bodyLarge => GoogleFonts.inter(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
        height: 1.5,
      );
  String get bodyMediumFamily => 'Inter';
  bool get bodyMediumIsCustom => false;
  TextStyle get bodyMedium => GoogleFonts.inter(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
        height: 1.47,
      );
  String get bodySmallFamily => 'Inter';
  bool get bodySmallIsCustom => false;
  TextStyle get bodySmall => GoogleFonts.inter(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
        height: 1.38,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFFB388FF);
  late Color secondary = const Color(0xFF69F0AE);
  late Color tertiary = const Color(0xFFFF80AB);
  late Color alternate = const Color(0xFF272732);
  late Color primaryText = const Color(0xFFF3F4F6);
  late Color secondaryText = const Color(0xFF9CA3AF);
  late Color primaryBackground = const Color(0xFF0A0A0C);
  late Color secondaryBackground = const Color(0xFF16161E);
  late Color accent1 = const Color(0x4D9489F5);
  late Color accent2 = const Color(0x4C39D2C0);
  late Color accent3 = const Color(0xFF4B5563);
  late Color accent4 = const Color(0x981D2428);
  late Color success = const Color(0xFF00E676);
  late Color warning = const Color(0xFFFCDC0C);
  late Color error = const Color(0xFFFF5252);
  late Color info = const Color(0xFFFFFFFF);

  late Color onPrimary = const Color(0xFF000000);
  late Color onSecondary = const Color(0xFF000000);
  late Color onSurface = const Color(0xFFF3F4F6);
  late Color onError = const Color(0xFFFFFFFF);
  late Color transparent = const Color(0x00000000);
  late Color onPrimary20 = const Color(0x33000000);
  late Color onSurface70 = const Color(0xB3F3F4F6);
  late Color primary15 = const Color(0x26B388FF);
  late Color primary30 = const Color(0x4DB388FF);
  late Color secondary30 = const Color(0x4D69F0AE);
  late Color accent30 = const Color(0x4DFF80AB);
  late Color success30 = const Color(0x4D00E676);
  late Color error30 = const Color(0x4DFF5252);
  late Color success20 = const Color(0x3300E676);
  late Color primary10 = const Color(0x1AB388FF);
  late Color accent10 = const Color(0x1AFF80AB);
  late Color primary20 = const Color(0x33B388FF);
  late Color onSurface80 = const Color(0xCCF3F4F6);
  late Color accent20 = const Color(0x33FF80AB);
  late Color success15 = const Color(0x2600E676);
  late Color error15 = const Color(0x26FF5252);
  late Color onSecondary80 = const Color(0xCC000000);
  late Color onPrimary80 = const Color(0xCC000000);
  late Color onPrimary60 = const Color(0x99000000);
  late Color onSurface10 = const Color(0x1AF3F4F6);
  late Color onSurface20 = const Color(0x33F3F4F6);
  late Color onSurface60 = const Color(0x99F3F4F6);
  late Color surface10 = const Color(0x1A16161E);
  late Color onSecondary60 = const Color(0x99000000);
  late Color secondary20 = const Color(0x3369F0AE);
  late Color secondaryText50 = const Color(0x809CA3AF);
  late Color primaryText60 = const Color(0x99F3F4F6);
  late Color surface20 = const Color(0x3316161E);
  late Color surface30 = const Color(0x4D16161E);
  late Color divider50 = const Color(0x80272732);
  late Color error20 = const Color(0x33FF5252);
  late Color surface40 = const Color(0x6616161E);
  late Color secondary10 = const Color(0x1A69F0AE);
  late Color customColor1 = const Color(0xFFA6BBEB);
  late Color customColor2 = const Color(0xFFA86A33);
}

class FFDesignTokens {
  const FFDesignTokens(this.theme);
  final FlutterFlowTheme theme;
  FFSpacing get spacing => const FFSpacing();
  FFRadius get radius => const FFRadius();
  FFShadows get shadow => FFShadows(theme);
}

class FFSpacing {
  const FFSpacing();
  double get none => 0.0;
  double get xs => 4.0;
  double get sm => 8.0;
  double get md => 16.0;
  double get lg => 24.0;
  double get xl => 32.0;
  double get xxl => 48.0;
  double get xxxl => 64.0;
}

class FFRadius {
  const FFRadius();
  double get none => 0.0;
  double get xs => 2.0;
  double get sm => 8.0;
  double get md => 12.0;
  double get lg => 20.0;
  double get xl => 24.0;
  double get xxl => 32.0;
  double get full => 9999.0;
}

class FFShadows {
  const FFShadows(this.theme);
  final FlutterFlowTheme theme;
  BoxShadow get sm => const BoxShadow(
      blurRadius: 2.0,
      color: const Color(0x33000000),
      offset: const Offset(0.0, 1.0),
      spreadRadius: 0.0);
  BoxShadow get md => const BoxShadow(
      blurRadius: 8.0,
      color: const Color(0x4D000000),
      offset: const Offset(0.0, 4.0),
      spreadRadius: 0.0);
  BoxShadow get lg => const BoxShadow(
      blurRadius: 16.0,
      color: const Color(0x66000000),
      offset: const Offset(0.0, 8.0),
      spreadRadius: 0.0);
  BoxShadow get xl => const BoxShadow(
      blurRadius: 24.0,
      color: const Color(0x80000000),
      offset: const Offset(0.0, 12.0),
      spreadRadius: 0.0);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    TextStyle? font,
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = false,
    TextDecoration? decoration,
    double? lineHeight,
    List<Shadow>? shadows,
    String? package,
  }) {
    if (useGoogleFonts && fontFamily != null) {
      font = GoogleFonts.getFont(fontFamily,
          fontWeight: fontWeight ?? this.fontWeight,
          fontStyle: fontStyle ?? this.fontStyle);
    }

    return font != null
        ? font.copyWith(
            color: color ?? this.color,
            fontSize: fontSize ?? this.fontSize,
            letterSpacing: letterSpacing ?? this.letterSpacing,
            fontWeight: fontWeight ?? this.fontWeight,
            fontStyle: fontStyle ?? this.fontStyle,
            decoration: decoration,
            height: lineHeight,
            shadows: shadows,
          )
        : copyWith(
            fontFamily: fontFamily,
            package: package,
            color: color,
            fontSize: fontSize,
            letterSpacing: letterSpacing,
            fontWeight: fontWeight,
            fontStyle: fontStyle,
            decoration: decoration,
            height: lineHeight,
            shadows: shadows,
          );
  }
}
