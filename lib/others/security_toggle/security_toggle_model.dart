import '/flutter_flow/flutter_flow_util.dart';
import '/others/switch_component3/switch_component3_widget.dart';
import 'security_toggle_widget.dart' show SecurityToggleWidget;
import 'package:flutter/material.dart';

class SecurityToggleModel extends FlutterFlowModel<SecurityToggleWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for SwitchComponent.
  late SwitchComponent3Model switchComponentModel;

  @override
  void initState(BuildContext context) {
    switchComponentModel = createModel(context, () => SwitchComponent3Model());
  }

  @override
  void dispose() {
    switchComponentModel.dispose();
  }
}
