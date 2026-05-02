import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'ajouterune_transaction_widget.dart' show AjouteruneTransactionWidget;
import 'package:flutter/material.dart';

class AjouteruneTransactionModel
    extends FlutterFlowModel<AjouteruneTransactionWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ex: Carrefour, Netflix... is required';
    }

    if (val.length < 2) {
      return 'Too little';
    }

    if (!RegExp('^[A-Za-zÀ-ÿ0-9]+(?:[ ,.\'-][A-Za-zÀ-ÿ0-9]+)*\$')
        .hasMatch(val)) {
      return 'Invalid';
    }
    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for DropDownCategorie widget.
  String? dropDownCategorieValue;
  FormFieldController<String>? dropDownCategorieValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ex: 27/4/2026 is required';
    }

    if (val.length < 4) {
      return 'Invalid date';
    }

    if (!RegExp('^(0?[1-9]|[12]\\d|3[01])\\/(0?[1-9]|1[0-2])\\/\\d{4}\$')
        .hasMatch(val)) {
      return 'Invalid date';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    textController2Validator = _textController2Validator;
    textController3Validator = _textController3Validator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }
}
