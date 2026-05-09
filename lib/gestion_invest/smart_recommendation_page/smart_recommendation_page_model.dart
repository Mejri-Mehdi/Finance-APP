import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'smart_recommendation_page_widget.dart'
    show SmartRecommendationPageWidget;
import 'package:flutter/material.dart';

class SmartRecommendationPageModel
    extends FlutterFlowModel<SmartRecommendationPageWidget> {
  ///  Local state fields for this page.

  String selectedCurrency = 'EU EUR — Euro';

  int? dureeAns = 5;

  double? tauxDevise;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (ConvertTNDToDevice)] action in DropDown widget.
  ApiCallResponse? apiResultcxu;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
