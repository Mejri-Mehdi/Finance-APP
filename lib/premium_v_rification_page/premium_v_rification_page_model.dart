import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'premium_v_rification_page_widget.dart'
    show PremiumVRificationPageWidget;
import 'package:flutter/material.dart';

class PremiumVRificationPageModel
    extends FlutterFlowModel<PremiumVRificationPageWidget> {
  ///  Local state fields for this page.

  String? tempEmail;

  String? tempPassword;

  String? tempPhone;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
