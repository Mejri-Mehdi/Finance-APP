import '/components/otp_box_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'premium_v_rification_page_widget.dart'
    show PremiumVRificationPageWidget;
import 'package:flutter/material.dart';

class PremiumVRificationPageModel
    extends FlutterFlowModel<PremiumVRificationPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for OtpBox.
  late OtpBoxModel otpBoxModel1;
  // Model for OtpBox.
  late OtpBoxModel otpBoxModel2;
  // Model for OtpBox.
  late OtpBoxModel otpBoxModel3;
  // Model for OtpBox.
  late OtpBoxModel otpBoxModel4;
  // Model for OtpBox.
  late OtpBoxModel otpBoxModel5;
  // Model for OtpBox.
  late OtpBoxModel otpBoxModel6;

  @override
  void initState(BuildContext context) {
    otpBoxModel1 = createModel(context, () => OtpBoxModel());
    otpBoxModel2 = createModel(context, () => OtpBoxModel());
    otpBoxModel3 = createModel(context, () => OtpBoxModel());
    otpBoxModel4 = createModel(context, () => OtpBoxModel());
    otpBoxModel5 = createModel(context, () => OtpBoxModel());
    otpBoxModel6 = createModel(context, () => OtpBoxModel());
  }

  @override
  void dispose() {
    otpBoxModel1.dispose();
    otpBoxModel2.dispose();
    otpBoxModel3.dispose();
    otpBoxModel4.dispose();
    otpBoxModel5.dispose();
    otpBoxModel6.dispose();
  }
}
