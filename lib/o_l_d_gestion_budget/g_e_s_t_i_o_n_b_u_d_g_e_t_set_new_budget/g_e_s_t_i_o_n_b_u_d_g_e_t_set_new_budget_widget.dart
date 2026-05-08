import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/o_l_d_gestion_budget/button2/button2_widget.dart';
import '/o_l_d_gestion_budget/category_item/category_item_widget.dart';
import '/o_l_d_gestion_budget/switch_component/switch_component_widget.dart';
import '/o_l_d_gestion_budget/text_field2/text_field2_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'g_e_s_t_i_o_n_b_u_d_g_e_t_set_new_budget_model.dart';
export 'g_e_s_t_i_o_n_b_u_d_g_e_t_set_new_budget_model.dart';

class GESTIONBUDGETSetNewBudgetWidget extends StatefulWidget {
  const GESTIONBUDGETSetNewBudgetWidget({super.key});

  static String routeName = 'GESTIONBUDGETSetNewBudget';
  static String routePath = '/gESTIONBUDGETSetNewBudget';

  @override
  State<GESTIONBUDGETSetNewBudgetWidget> createState() =>
      _GESTIONBUDGETSetNewBudgetWidgetState();
}

class _GESTIONBUDGETSetNewBudgetWidgetState
    extends State<GESTIONBUDGETSetNewBudgetWidget> {
  late GESTIONBUDGETSetNewBudgetModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GESTIONBUDGETSetNewBudgetModel());

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
                              'Set New Budget',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font: GoogleFonts.inter(
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
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Select Category',
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  font: GoogleFonts.inter(
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
                          GridView(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 16.0,
                              mainAxisSpacing: 16.0,
                              childAspectRatio: 1.0,
                            ),
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              wrapWithModel(
                                model: _model.categoryItemModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: CategoryItemWidget(
                                  icon: Icon(
                                    Icons.restaurant_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 28.0,
                                  ),
                                  label: 'Food',
                                  selected: true,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.categoryItemModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: CategoryItemWidget(
                                  icon: Icon(
                                    Icons.directions_car_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 28.0,
                                  ),
                                  label: 'Transport',
                                  selected: false,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.categoryItemModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: CategoryItemWidget(
                                  icon: Icon(
                                    Icons.sports_esports_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 28.0,
                                  ),
                                  label: 'Fun',
                                  selected: false,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.categoryItemModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: CategoryItemWidget(
                                  icon: Icon(
                                    Icons.shopping_bag_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 28.0,
                                  ),
                                  label: 'Shop',
                                  selected: false,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.categoryItemModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: CategoryItemWidget(
                                  icon: Icon(
                                    Icons.medical_services_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 28.0,
                                  ),
                                  label: 'Health',
                                  selected: false,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.categoryItemModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: CategoryItemWidget(
                                  icon: Icon(
                                    Icons.flight_takeoff_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 28.0,
                                  ),
                                  label: 'Travel',
                                  selected: false,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.categoryItemModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: CategoryItemWidget(
                                  icon: Icon(
                                    Icons.home_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 28.0,
                                  ),
                                  label: 'Home',
                                  selected: false,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.categoryItemModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: CategoryItemWidget(
                                  icon: Icon(
                                    Icons.more_horiz_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 28.0,
                                  ),
                                  label: 'Other',
                                  selected: false,
                                ),
                              ),
                            ],
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                      Container(
                        height: 24.0,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Maximum Monthly Limit',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      font: GoogleFonts.inter(
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
                                child: TextField2Widget(
                                  label: false,
                                  helper: false,
                                  hint: '0.00',
                                  value: '',
                                  leading_icon: Icon(
                                    Icons.payments_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 16.0,
                                  ),
                                  leading_icon_present: true,
                                  trailing_icon_present: false,
                                  variant: 'filled',
                                  error: false,
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
                                      'Start Date',
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
                                      child: TextField2Widget(
                                        label: false,
                                        helper: false,
                                        hint: 'Oct 01, 2023',
                                        value: '',
                                        leading_icon: Icon(
                                          Icons.calendar_today_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 16.0,
                                        ),
                                        leading_icon_present: true,
                                        trailing_icon_present: false,
                                        variant: 'filled',
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
                                      'End Date',
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
                                      child: TextField2Widget(
                                        label: false,
                                        helper: false,
                                        hint: 'Oct 31, 2023',
                                        value: '',
                                        leading_icon: Icon(
                                          Icons.event_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 16.0,
                                        ),
                                        leading_icon_present: true,
                                        trailing_icon_present: false,
                                        variant: 'filled',
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
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.notifications_active_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Alert me at 80%',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                    lineHeight: 1.47,
                                                  ),
                                            ),
                                            Text(
                                              'Get notified before overspending',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        font: GoogleFonts.inter(
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
                                                        lineHeight: 1.38,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                    wrapWithModel(
                                      model: _model.switchComponentModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SwitchComponentWidget(
                                        label: false,
                                        variant: 'iOS',
                                        active: true,
                                      ),
                                    ),
                                  ],
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
                        child: Button2Widget(
                          content: 'Save Budget',
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
