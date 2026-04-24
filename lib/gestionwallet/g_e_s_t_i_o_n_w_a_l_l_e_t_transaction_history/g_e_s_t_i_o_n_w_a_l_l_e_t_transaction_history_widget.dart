import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/gestionwallet/date_header/date_header_widget.dart';
import '/gestionwallet/swipeable_transaction/swipeable_transaction_widget.dart';
import '/gestionwallet/text_field2/text_field2_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'g_e_s_t_i_o_n_w_a_l_l_e_t_transaction_history_model.dart';
export 'g_e_s_t_i_o_n_w_a_l_l_e_t_transaction_history_model.dart';

class GESTIONWALLETTransactionHistoryWidget extends StatefulWidget {
  const GESTIONWALLETTransactionHistoryWidget({super.key});

  static String routeName = 'GESTIONWALLETTransactionHistory';
  static String routePath = '/gESTIONWALLETTransactionHistory';

  @override
  State<GESTIONWALLETTransactionHistoryWidget> createState() =>
      _GESTIONWALLETTransactionHistoryWidgetState();
}

class _GESTIONWALLETTransactionHistoryWidgetState
    extends State<GESTIONWALLETTransactionHistoryWidget> {
  late GESTIONWALLETTransactionHistoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GESTIONWALLETTransactionHistoryModel());

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
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 20.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                              Text(
                                'Transactions',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                      lineHeight: 1.27,
                                    ),
                              ),
                              FlutterFlowIconButton(
                                borderRadius: 8.0,
                                buttonSize: 40.0,
                                fillColor: Colors.transparent,
                                icon: Icon(
                                  Icons.tune_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 20.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ],
                          ),
                          wrapWithModel(
                            model: _model.textFieldModel,
                            updateCallback: () => safeSetState(() {}),
                            child: TextField2Widget(
                              label: false,
                              helper: false,
                              hint: 'Search transactions...',
                              value: '',
                              leading_icon: Icon(
                                Icons.search_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 16.0,
                              ),
                              leading_icon_present: true,
                              trailing_icon_present: false,
                              variant: 'filled',
                              error: false,
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
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
              child: Container(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      wrapWithModel(
                        model: _model.dateHeaderModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: DateHeaderWidget(
                          label: 'Today',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.swipeableTransactionModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: SwipeableTransactionWidget(
                          amount: 0.0,
                          date: '10:24 AM',
                          icon: Icon(
                            Icons.laptop_mac_rounded,
                          ),
                          is_income: 'false',
                          subtitle: 'Entertainment',
                          title: 'Apple Store',
                        ),
                      ),
                      Divider(
                        height: 16.0,
                        thickness: 1.0,
                        indent: 24.0,
                        endIndent: 0.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                      wrapWithModel(
                        model: _model.swipeableTransactionModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: SwipeableTransactionWidget(
                          amount: 0.0,
                          date: '09:00 AM',
                          icon: Icon(
                            Icons.account_balance_wallet_rounded,
                          ),
                          is_income: 'true',
                          subtitle: 'Monthly Pay',
                          title: 'Salary Deposit',
                        ),
                      ),
                      Divider(
                        height: 16.0,
                        thickness: 1.0,
                        indent: 24.0,
                        endIndent: 0.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                      wrapWithModel(
                        model: _model.swipeableTransactionModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: SwipeableTransactionWidget(
                          amount: 0.0,
                          date: '08:15 AM',
                          icon: Icon(
                            Icons.coffee_rounded,
                          ),
                          is_income: 'false',
                          subtitle: 'Food & Drink',
                          title: 'Starbucks',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.dateHeaderModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: DateHeaderWidget(
                          label: 'Yesterday',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.swipeableTransactionModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: SwipeableTransactionWidget(
                          amount: 0.0,
                          date: '06:45 PM',
                          icon: Icon(
                            Icons.shopping_bag_rounded,
                          ),
                          is_income: 'false',
                          subtitle: 'Shopping',
                          title: 'Amazon',
                        ),
                      ),
                      Divider(
                        height: 16.0,
                        thickness: 1.0,
                        indent: 24.0,
                        endIndent: 0.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                      wrapWithModel(
                        model: _model.swipeableTransactionModel5,
                        updateCallback: () => safeSetState(() {}),
                        child: SwipeableTransactionWidget(
                          amount: 0.0,
                          date: '02:30 PM',
                          icon: Icon(
                            Icons.directions_car_rounded,
                          ),
                          is_income: 'false',
                          subtitle: 'Transport',
                          title: 'Uber Trip',
                        ),
                      ),
                      Divider(
                        height: 16.0,
                        thickness: 1.0,
                        indent: 24.0,
                        endIndent: 0.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                      wrapWithModel(
                        model: _model.swipeableTransactionModel6,
                        updateCallback: () => safeSetState(() {}),
                        child: SwipeableTransactionWidget(
                          amount: 0.0,
                          date: '11:00 AM',
                          icon: Icon(
                            Icons.trending_up_rounded,
                          ),
                          is_income: 'true',
                          subtitle: 'Investment',
                          title: 'Dividend',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.dateHeaderModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: DateHeaderWidget(
                          label: 'October 22',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.swipeableTransactionModel7,
                        updateCallback: () => safeSetState(() {}),
                        child: SwipeableTransactionWidget(
                          amount: 0.0,
                          date: '10:00 AM',
                          icon: Icon(
                            Icons.play_circle_outline_rounded,
                          ),
                          is_income: 'false',
                          subtitle: 'Subscription',
                          title: 'Netflix',
                        ),
                      ),
                      Divider(
                        height: 16.0,
                        thickness: 1.0,
                        indent: 24.0,
                        endIndent: 0.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                      wrapWithModel(
                        model: _model.swipeableTransactionModel8,
                        updateCallback: () => safeSetState(() {}),
                        child: SwipeableTransactionWidget(
                          amount: 0.0,
                          date: '07:00 AM',
                          icon: Icon(
                            Icons.fitness_center_rounded,
                          ),
                          is_income: 'false',
                          subtitle: 'Health',
                          title: 'Gym Membership',
                        ),
                      ),
                    ],
                  ),
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
                'Add Transaction',
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
