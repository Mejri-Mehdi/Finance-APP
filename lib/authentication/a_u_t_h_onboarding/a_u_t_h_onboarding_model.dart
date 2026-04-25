import '/authentication/button8/button8_widget.dart';
import '/authentication/onboarding_slide/onboarding_slide_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'a_u_t_h_onboarding_widget.dart' show AUTHOnboardingWidget;
import 'package:flutter/material.dart';

class AUTHOnboardingModel extends FlutterFlowModel<AUTHOnboardingWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for OnboardingSlide.
  late OnboardingSlideModel onboardingSlideModel;
  // Model for Button.
  late Button8Model buttonModel1;
  // Model for Button.
  late Button8Model buttonModel2;

  @override
  void initState(BuildContext context) {
    onboardingSlideModel = createModel(context, () => OnboardingSlideModel());
    buttonModel1 = createModel(context, () => Button8Model());
    buttonModel2 = createModel(context, () => Button8Model());
  }

  @override
  void dispose() {
    onboardingSlideModel.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
