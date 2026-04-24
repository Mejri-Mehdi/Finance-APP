import '/flutter_flow/flutter_flow_util.dart';
import '/gestiongroup/button/button_widget.dart';
import '/gestiongroup/text_field/text_field_widget.dart';
import 'g_e_s_t_i_o_n_g_r_o_u_p_e_s_create_group_widget.dart'
    show GESTIONGROUPESCreateGroupWidget;
import 'package:flutter/material.dart';

class GESTIONGROUPESCreateGroupModel
    extends FlutterFlowModel<GESTIONGROUPESCreateGroupWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextFieldModel textFieldModel1;
  // Model for TextField.
  late TextFieldModel textFieldModel2;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    textFieldModel1 = createModel(context, () => TextFieldModel());
    textFieldModel2 = createModel(context, () => TextFieldModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    buttonModel.dispose();
  }
}
