import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'the_main_mes_cartes_dashboard_view_cards_transactions_widget.dart'
    show TheMainMesCartesDashboardViewCardsTransactionsWidget;
import 'package:flutter/material.dart';

class TheMainMesCartesDashboardViewCardsTransactionsModel
    extends FlutterFlowModel<
        TheMainMesCartesDashboardViewCardsTransactionsWidget> {
  ///  Local state fields for this page.

  double? currentRate = 1.0;

  String currencyMode = '\"TND\"';

  ///  State fields for stateful widgets in this page.

  bool authResult = false;
  // Stores action output result for [Backend Call - API (getExchangeRates)] action in Button widget.
  ApiCallResponse? apiResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
