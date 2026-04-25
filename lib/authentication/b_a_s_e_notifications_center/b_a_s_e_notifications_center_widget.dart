import '/authentication/button8/button8_widget.dart';
import '/authentication/date_header2/date_header2_widget.dart';
import '/authentication/notification_tile/notification_tile_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'b_a_s_e_notifications_center_model.dart';
export 'b_a_s_e_notifications_center_model.dart';

class BASENotificationsCenterWidget extends StatefulWidget {
  const BASENotificationsCenterWidget({super.key});

  static String routeName = 'BASENotificationsCenter';
  static String routePath = '/bASENotificationsCenter';

  @override
  State<BASENotificationsCenterWidget> createState() =>
      _BASENotificationsCenterWidgetState();
}

class _BASENotificationsCenterWidgetState
    extends State<BASENotificationsCenterWidget> {
  late BASENotificationsCenterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BASENotificationsCenterModel());

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
            mainAxisSize: MainAxisSize.max,
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
                      padding: EdgeInsets.all(24.0),
                      child: Container(
                        child: Stack(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 12.0,
                                    buttonSize: 40.0,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    icon: Icon(
                                      Icons.arrow_back_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      context.safePop();
                                    },
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Activity',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontStyle,
                                            lineHeight: 1.25,
                                          ),
                                    ),
                                    Text(
                                      'You have 3 new alerts',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
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
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                            lineHeight: 1.47,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                                FlutterFlowIconButton(
                                  borderRadius: 12.0,
                                  buttonSize: 40.0,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  icon: Icon(
                                    Icons.settings_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ],
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
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    wrapWithModel(
                      model: _model.dateHeaderModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: DateHeader2Widget(
                        label: 'Today',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.notificationTileModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: NotificationTileWidget(
                        icon: Icon(
                          Icons.coffee_rounded,
                          color: Color(0xFFD7CCC8),
                          size: 24.0,
                        ),
                        icon_bg: Color(0xFF3E2723),
                        icon_color: Color(0xFFD7CCC8),
                        message:
                            'You spent \$50.00 at Starbucks. Your balance is now \$2,450.00.',
                        time: '2m ago',
                        title: 'Spending Alert',
                        unread: true,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.notificationTileModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: NotificationTileWidget(
                        icon: Icon(
                          Icons.payments_rounded,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                        icon_bg: FlutterFlowTheme.of(context).primary20,
                        icon_color: FlutterFlowTheme.of(context).primary,
                        message:
                            'Alex requested \$20.00 for \'Dinner last night\'.',
                        time: '15m ago',
                        title: 'Payment Request',
                        unread: true,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.notificationTileModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: NotificationTileWidget(
                        icon: Icon(
                          Icons.warning_amber_rounded,
                          color: FlutterFlowTheme.of(context).error,
                          size: 24.0,
                        ),
                        icon_bg: FlutterFlowTheme.of(context).error20,
                        icon_color: FlutterFlowTheme.of(context).error,
                        message:
                            'You\'ve reached 90% of your \'Dining Out\' monthly budget.',
                        time: '1h ago',
                        title: 'Budget Warning',
                        unread: true,
                      ),
                    ),
                    Container(
                      height: 16.0,
                    ),
                    wrapWithModel(
                      model: _model.dateHeaderModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: DateHeader2Widget(
                        label: 'Yesterday',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.notificationTileModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: NotificationTileWidget(
                        icon: Icon(
                          Icons.security_rounded,
                          color: FlutterFlowTheme.of(context).success,
                          size: 24.0,
                        ),
                        icon_bg: FlutterFlowTheme.of(context).success20,
                        icon_color: FlutterFlowTheme.of(context).success,
                        message:
                            'New login detected from a Chrome browser on MacOS.',
                        time: 'Yesterday',
                        title: 'Security Login',
                        unread: false,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.notificationTileModel5,
                      updateCallback: () => safeSetState(() {}),
                      child: NotificationTileWidget(
                        icon: Icon(
                          Icons.trending_up_rounded,
                          color: FlutterFlowTheme.of(context).secondary,
                          size: 24.0,
                        ),
                        icon_bg: FlutterFlowTheme.of(context).secondary20,
                        icon_color: FlutterFlowTheme.of(context).secondary,
                        message:
                            'Your \'Crypto Portfolio\' is up 5.2% in the last 24 hours.',
                        time: 'Yesterday',
                        title: 'Investment Update',
                        unread: false,
                      ),
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
              ),
              Spacer(),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Container(
                    child: Container(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: wrapWithModel(
                        model: _model.buttonModel,
                        updateCallback: () => safeSetState(() {}),
                        child: Button8Widget(
                          content: 'Mark all as read',
                          icon_present: false,
                          icon_end_present: false,
                          variant: 'ghost',
                          size: 'medium',
                          full_width: false,
                          loading: false,
                          disabled: false,
                          expanded: true,
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
    );
  }
}
