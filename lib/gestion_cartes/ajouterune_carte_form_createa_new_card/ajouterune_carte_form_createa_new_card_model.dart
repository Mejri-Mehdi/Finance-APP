import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'ajouterune_carte_form_createa_new_card_widget.dart'
    show AjouteruneCarteFormCreateaNewCardWidget;
import 'package:flutter/material.dart';

class AjouteruneCarteFormCreateaNewCardModel
    extends FlutterFlowModel<AjouteruneCarteFormCreateaNewCardWidget> {
  ///  Local state fields for this page.

  String? tempnumber;

  String? tempcvv;

  String? tempdate;

  String? scannedCardNumber;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ex: Jean Dupont is required';
    }

    if (val.length < 3) {
      return 'Too little';
    }
    if (val.length > 30) {
      return 'Too much';
    }
    if (!RegExp('^[A-Za-z]+(?: [A-Za-z]+)+\$').hasMatch(val)) {
      return 'Invalid Name';
    }
    return null;
  }

  // State field(s) for TextFieldnum widget.
  FocusNode? textFieldnumFocusNode;
  TextEditingController? textFieldnumTextController;
  String? Function(BuildContext, String?)? textFieldnumTextControllerValidator;
  String? _textFieldnumTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '0000 0000 0000 0000 is required';
    }

    if (val.length < 12) {
      return 'Please Enter a Valid Card Number';
    }
    if (val.length > 15) {
      return 'Please Enter a Valid Card Number';
    }
    if (!RegExp('^\\d{4}\\s?\\d{4}\\s?\\d{4}\$').hasMatch(val)) {
      return 'Invalid Number';
    }
    return null;
  }

  bool isDataUploading_cardPhoto = false;
  FFUploadedFile uploadedLocalFile_cardPhoto =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Custom Action - extract12DigitCard] action in IconButton widget.
  String? ocrResult;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'MM/YY is required';
    }

    if (val.length < 4) {
      return 'Please Enter a valid Date';
    }
    if (val.length > 5) {
      return 'Please Enter a valid Date';
    }
    if (!RegExp('^(0[1-9]|1[0-2])\\/\\d{2}\$').hasMatch(val)) {
      return 'Invalid Date';
    }
    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textController4Validator;
  String? _textController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '••• is required';
    }

    if (val.length < 3) {
      return 'Please Enter a valid CVV Number';
    }
    if (val.length > 3) {
      return 'Please Enter a valid CVV Number';
    }
    if (!RegExp('^\\d{3,4}\$').hasMatch(val)) {
      return 'Invalid CVV';
    }
    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textFieldnumTextControllerValidator = _textFieldnumTextControllerValidator;
    textController3Validator = _textController3Validator;
    passwordVisibility = false;
    textController4Validator = _textController4Validator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldnumFocusNode?.dispose();
    textFieldnumTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();
  }
}
