import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/others/filter_chip/filter_chip_widget.dart';
import '/others/text_field6/text_field6_widget.dart';
import '/others/transaction_item4/transaction_item4_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'transaction_history_model.dart';
export 'transaction_history_model.dart';

class TransactionHistoryWidget extends StatefulWidget {
  const TransactionHistoryWidget({super.key});

  static String routeName = 'TransactionHistory';
  static String routePath = '/transactionHistory';

  @override
  State<TransactionHistoryWidget> createState() =>
      _TransactionHistoryWidgetState();
}

class _TransactionHistoryWidgetState extends State<TransactionHistoryWidget> {
  late TransactionHistoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionHistoryModel());

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
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print('FAB pressed ...');
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          icon: Icon(
            Icons.tune_rounded,
            color: FlutterFlowTheme.of(context).onPrimary,
            size: 24.0,
          ),
          elevation: 0.0,
          label: Text(
            'Advanced Filters',
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
                  fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  lineHeight: 1.33,
                ),
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 16.0),
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
                              Icons.arrow_back_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          Text(
                            'Transactions',
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
                              Icons.file_download_outlined,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
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
                        child: TextField6Widget(
                          label: false,
                          helper: false,
                          hint: 'Search merchants or categories',
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
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 0.0, 4.0),
                              child: Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    wrapWithModel(
                                      model: _model.filterChipModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterChipWidget(
                                        icon: Icon(
                                          Icons.star,
                                          color: FlutterFlowTheme.of(context)
                                              .onPrimary,
                                          size: 16.0,
                                        ),
                                        icon_present: true,
                                        label: 'All',
                                        selected: true,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterChipModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterChipWidget(
                                        icon: Icon(
                                          Icons.trending_up_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 16.0,
                                        ),
                                        icon_present: true,
                                        label: 'Income',
                                        selected: false,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterChipModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterChipWidget(
                                        icon: Icon(
                                          Icons.trending_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 16.0,
                                        ),
                                        icon_present: true,
                                        label: 'Expenses',
                                        selected: false,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterChipModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterChipWidget(
                                        icon: Icon(
                                          Icons.show_chart_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 16.0,
                                        ),
                                        icon_present: true,
                                        label: 'Investment',
                                        selected: false,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterChipModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterChipWidget(
                                        icon: Icon(
                                          Icons.sync_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 16.0,
                                        ),
                                        icon_present: true,
                                        label: 'Subscriptions',
                                        selected: false,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ].divide(SizedBox(height: 16.0)),
                  ),
                ),
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
                      Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Today',
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
                                    model: _model.transactionItemModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: TransactionItem4Widget(
                                      amount: '-\$2,499.00',
                                      date: '14:20',
                                      icon: Icon(
                                        Icons.shopping_bag_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 22.0,
                                      ),
                                      subtitle: 'Hardware & Tech',
                                      title: 'Apple Store',
                                      is_income: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.transactionItemModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: TransactionItem4Widget(
                                      amount: '-\$18.40',
                                      date: '12:05',
                                      icon: Icon(
                                        Icons.restaurant_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 22.0,
                                      ),
                                      subtitle: 'Dining',
                                      title: 'Sweetgreen',
                                      is_income: false,
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Yesterday',
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
                                    model: _model.transactionItemModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: TransactionItem4Widget(
                                      amount: '+\$8,500.00',
                                      date: 'Oct 26',
                                      icon: Icon(
                                        Icons.payments_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 22.0,
                                      ),
                                      subtitle: 'NeoVault Inc.',
                                      title: 'Salary Deposit',
                                      is_income: true,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.transactionItemModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: TransactionItem4Widget(
                                      amount: '-\$142.00',
                                      date: 'Oct 26',
                                      icon: Icon(
                                        Icons.help,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 22.0,
                                      ),
                                      subtitle: 'Utilities',
                                      title: 'Grid Services',
                                      is_income: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.transactionItemModel5,
                                    updateCallback: () => safeSetState(() {}),
                                    child: TransactionItem4Widget(
                                      amount: '-\$65.00',
                                      date: 'Oct 26',
                                      icon: Icon(
                                        Icons.local_gas_station_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 22.0,
                                      ),
                                      subtitle: 'Transport',
                                      title: 'Shell Station',
                                      is_income: false,
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'October 24',
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
                                    model: _model.transactionItemModel6,
                                    updateCallback: () => safeSetState(() {}),
                                    child: TransactionItem4Widget(
                                      amount: '-\$1,200.00',
                                      date: 'Oct 24',
                                      icon: Icon(
                                        Icons.flight_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 22.0,
                                      ),
                                      subtitle: 'Travel',
                                      title: 'Emirates',
                                      is_income: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.transactionItemModel7,
                                    updateCallback: () => safeSetState(() {}),
                                    child: TransactionItem4Widget(
                                      amount: '-\$15.99',
                                      date: 'Oct 24',
                                      icon: Icon(
                                        Icons.smart_display_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 22.0,
                                      ),
                                      subtitle: 'Subscription',
                                      title: 'Netflix',
                                      is_income: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.transactionItemModel8,
                                    updateCallback: () => safeSetState(() {}),
                                    child: TransactionItem4Widget(
                                      amount: '+\$450.00',
                                      date: 'Oct 24',
                                      icon: Icon(
                                        Icons.account_balance_wallet_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 22.0,
                                      ),
                                      subtitle: 'Investment',
                                      title: 'Crypto Transfer',
                                      is_income: true,
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                              Container(
                                height: 80.0,
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
