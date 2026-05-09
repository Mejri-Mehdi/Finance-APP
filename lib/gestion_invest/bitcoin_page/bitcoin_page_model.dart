import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bitcoin_page_widget.dart' show BitcoinPageWidget;
import 'package:flutter/material.dart';

class BitcoinPageModel extends FlutterFlowModel<BitcoinPageWidget> {
  ///  Local state fields for this page.

  String btcPrice = 'Loading...';

  String btcChange = 'Loading...';

  String btcAmount = '0.01';

  String btcConverted = '0.01 BTC = ...';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getBitcoinPrice)] action in BitcoinPage widget.
  ApiCallResponse? apiResult0pq;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
