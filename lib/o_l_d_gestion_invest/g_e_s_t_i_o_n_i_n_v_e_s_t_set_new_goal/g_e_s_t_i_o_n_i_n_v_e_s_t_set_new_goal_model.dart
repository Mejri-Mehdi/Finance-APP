import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/o_l_d_gestion_invest/button4/button4_widget.dart';
import '/o_l_d_gestion_invest/switch_component2/switch_component2_widget.dart';
import '/o_l_d_gestion_invest/text_field4/text_field4_widget.dart';
import 'g_e_s_t_i_o_n_i_n_v_e_s_t_set_new_goal_widget.dart'
    show GESTIONINVESTSetNewGoalWidget;
import 'package:flutter/material.dart';

class GESTIONINVESTSetNewGoalModel
    extends FlutterFlowModel<GESTIONINVESTSetNewGoalWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextField4Model textFieldModel1;
  // State field(s) for Dropdown widget.
  String? dropdownValue;
  FormFieldController<String>? dropdownValueController;
  // Model for TextField.
  late TextField4Model textFieldModel2;
  // Model for TextField.
  late TextField4Model textFieldModel3;
  // Model for SwitchComponent.
  late SwitchComponent2Model switchComponentModel;
  // Model for Button.
  late Button4Model buttonModel;

  @override
  void initState(BuildContext context) {
    textFieldModel1 = createModel(context, () => TextField4Model());
    textFieldModel2 = createModel(context, () => TextField4Model());
    textFieldModel3 = createModel(context, () => TextField4Model());
    switchComponentModel = createModel(context, () => SwitchComponent2Model());
    buttonModel = createModel(context, () => Button4Model());
  }

  @override
  void dispose() {
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    textFieldModel3.dispose();
    switchComponentModel.dispose();
    buttonModel.dispose();
  }
}
