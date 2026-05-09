import '/authentication/button7/button7_widget.dart';
import '/authentication/switch_component4/switch_component4_widget.dart';
import '/authentication/text_field7/text_field7_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'a_u_t_h_login_widget.dart' show AUTHLoginWidget;
import 'package:flutter/material.dart';

class AUTHLoginModel extends FlutterFlowModel<AUTHLoginWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextField7Model textFieldModel1;
  // Model for TextField.
  late TextField7Model textFieldModel2;
  // Model for Button.
  late Button7Model buttonModel;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? loggedInUser;
  // Model for SwitchComponent.
  late SwitchComponent4Model switchComponentModel;

  @override
  void initState(BuildContext context) {
    textFieldModel1 = createModel(context, () => TextField7Model());
    textFieldModel2 = createModel(context, () => TextField7Model());
    buttonModel = createModel(context, () => Button7Model());
    switchComponentModel = createModel(context, () => SwitchComponent4Model());
  }

  @override
  void dispose() {
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    buttonModel.dispose();
    switchComponentModel.dispose();
  }
}
