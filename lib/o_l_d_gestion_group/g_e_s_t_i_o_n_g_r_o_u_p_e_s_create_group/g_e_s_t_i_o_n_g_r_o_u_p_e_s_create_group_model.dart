import '/flutter_flow/flutter_flow_util.dart';
import '/o_l_d_gestion_group/button3/button3_widget.dart';
import '/o_l_d_gestion_group/text_field3/text_field3_widget.dart';
import 'g_e_s_t_i_o_n_g_r_o_u_p_e_s_create_group_widget.dart'
    show GESTIONGROUPESCreateGroupWidget;
import 'package:flutter/material.dart';

class GESTIONGROUPESCreateGroupModel
    extends FlutterFlowModel<GESTIONGROUPESCreateGroupWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextField3Model textFieldModel1;
  // Model for TextField.
  late TextField3Model textFieldModel2;
  // Model for Button.
  late Button3Model buttonModel;

  @override
  void initState(BuildContext context) {
    textFieldModel1 = createModel(context, () => TextField3Model());
    textFieldModel2 = createModel(context, () => TextField3Model());
    buttonModel = createModel(context, () => Button3Model());
  }

  @override
  void dispose() {
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    buttonModel.dispose();
  }
}
