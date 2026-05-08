import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/o_l_d_gestion_group/button3/button3_widget.dart';
import '/o_l_d_gestion_group/group_expense_item/group_expense_item_widget.dart';
import '/o_l_d_gestion_group/member_avatar/member_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'g_e_s_t_i_o_n_g_r_o_u_p_e_s_group_details_model.dart';
export 'g_e_s_t_i_o_n_g_r_o_u_p_e_s_group_details_model.dart';

class GESTIONGROUPESGroupDetailsWidget extends StatefulWidget {
  const GESTIONGROUPESGroupDetailsWidget({super.key});

  static String routeName = 'GESTIONGROUPESGroupDetails';
  static String routePath = '/gESTIONGROUPESGroupDetails';

  @override
  State<GESTIONGROUPESGroupDetailsWidget> createState() =>
      _GESTIONGROUPESGroupDetailsWidgetState();
}

class _GESTIONGROUPESGroupDetailsWidgetState
    extends State<GESTIONGROUPESGroupDetailsWidget> {
  late GESTIONGROUPESGroupDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GESTIONGROUPESGroupDetailsModel());

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
        body: Column(
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
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
                              Icons.arrow_back_ios_new_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          Text(
                            'Group Details',
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
                              Icons.delete_outline_rounded,
                              color: FlutterFlowTheme.of(context).error,
                              size: 22.0,
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
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Container(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(24.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(24.0),
                                    child: Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 64.0,
                                            height: 64.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary10,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary20,
                                                width: 1.0,
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.groups_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .onPrimary,
                                              size: 32.0,
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Trip to Bali 🌴',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .headlineMedium
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineMedium
                                                              .fontStyle,
                                                      lineHeight: 1.25,
                                                    ),
                                              ),
                                              Text(
                                                'Total Group Spending',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      font: GoogleFonts.inter(
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
                                                          FlutterFlowTheme.of(
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
                                                '\$1,240.00',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .headlineLarge
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineLarge
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .fontStyle,
                                                      lineHeight: 1.2,
                                                    ),
                                              ),
                                            ].divide(SizedBox(height: 4.0)),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              wrapWithModel(
                                                model: _model.buttonModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: Button3Widget(
                                                  content: 'Settle Up',
                                                  icon: Icon(
                                                    Icons.payments_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .onPrimary,
                                                    size: 16.0,
                                                  ),
                                                  icon_present: true,
                                                  icon_end_present: false,
                                                  variant: 'primary',
                                                  size: 'small',
                                                  full_width: false,
                                                  loading: false,
                                                  disabled: false,
                                                  expanded: true,
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.buttonModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: Button3Widget(
                                                  content: 'Invite',
                                                  icon: Icon(
                                                    Icons.person_add_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 16.0,
                                                  ),
                                                  icon_present: true,
                                                  icon_end_present: false,
                                                  variant: 'outline',
                                                  size: 'small',
                                                  full_width: false,
                                                  loading: false,
                                                  disabled: false,
                                                  expanded: true,
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Members (5)',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                font:
                                                    GoogleFonts.plusJakartaSans(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                        ),
                                        Text(
                                          'Manage',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
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
                                      ],
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          child: Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                wrapWithModel(
                                                  model:
                                                      _model.memberAvatarModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MemberAvatarWidget(
                                                    img:
                                                        'https://dimg.dreamflow.cloud/v1/image/young%20man%20smiling',
                                                    initials: 'ME',
                                                    name: 'You',
                                                    is_admin: true,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model:
                                                      _model.memberAvatarModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MemberAvatarWidget(
                                                    img:
                                                        'https://dimg.dreamflow.cloud/v1/image/young%20woman%20portrait',
                                                    initials: 'SK',
                                                    name: 'Sarah',
                                                    is_admin: false,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model:
                                                      _model.memberAvatarModel3,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MemberAvatarWidget(
                                                    img:
                                                        'https://dimg.dreamflow.cloud/v1/image/man%20with%20glasses',
                                                    initials: 'MJ',
                                                    name: 'Mike',
                                                    is_admin: false,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model:
                                                      _model.memberAvatarModel4,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MemberAvatarWidget(
                                                    img:
                                                        'https://dimg.dreamflow.cloud/v1/image/woman%20with%20curly%20hair',
                                                    initials: 'EV',
                                                    name: 'Elena',
                                                    is_admin: false,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model:
                                                      _model.memberAvatarModel5,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MemberAvatarWidget(
                                                    img:
                                                        'https://dimg.dreamflow.cloud/v1/image/stylish%20man',
                                                    initials: 'AW',
                                                    name: 'Alex',
                                                    is_admin: false,
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 16.0)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Recent Group Expenses',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              font: GoogleFonts.plusJakartaSans(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                      ),
                                      Icon(
                                        Icons.filter_list_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 20.0,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      wrapWithModel(
                                        model: _model.groupExpenseItemModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: GroupExpenseItemWidget(
                                          amount: '145.00',
                                          date: 'Today',
                                          icon: Icon(
                                            Icons.local_bar_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 22.0,
                                          ),
                                          payer: 'Sarah',
                                          title: 'Beach Club Drinks',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.groupExpenseItemModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: GroupExpenseItemWidget(
                                          amount: '850.00',
                                          date: 'Yesterday',
                                          icon: Icon(
                                            Icons.home_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 22.0,
                                          ),
                                          payer: 'You',
                                          title: 'Villa Rental',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.groupExpenseItemModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: GroupExpenseItemWidget(
                                          amount: '45.00',
                                          date: '24 Oct',
                                          icon: Icon(
                                            Icons.electric_scooter_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 22.0,
                                          ),
                                          payer: 'Mike',
                                          title: 'Scooter Rental',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.groupExpenseItemModel4,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: GroupExpenseItemWidget(
                                          amount: '120.00',
                                          date: '23 Oct',
                                          icon: Icon(
                                            Icons.restaurant_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 22.0,
                                          ),
                                          payer: 'Elena',
                                          title: 'Dinner at La Favela',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.groupExpenseItemModel5,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: GroupExpenseItemWidget(
                                          amount: '80.00',
                                          date: '22 Oct',
                                          icon: Icon(
                                            Icons.directions_car_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 22.0,
                                          ),
                                          payer: 'You',
                                          title: 'Airport Transfer',
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
                  ],
                ),
              ),
            ),
            FloatingActionButton.extended(
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
                'Add Expense',
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
                      fontStyle:
                          FlutterFlowTheme.of(context).labelLarge.fontStyle,
                      lineHeight: 1.33,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
