import '/flutter_flow/flutter_flow_util.dart';
import '/gestionbudget/button3/button3_widget.dart';
import '/gestionbudget/category_item/category_item_widget.dart';
import '/gestionbudget/switch_component/switch_component_widget.dart';
import '/gestionbudget/text_field3/text_field3_widget.dart';
import 'g_e_s_t_i_o_n_b_u_d_g_e_t_set_new_budget_widget.dart'
    show GESTIONBUDGETSetNewBudgetWidget;
import 'package:flutter/material.dart';

class GESTIONBUDGETSetNewBudgetModel
    extends FlutterFlowModel<GESTIONBUDGETSetNewBudgetWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel1;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel2;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel3;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel4;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel5;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel6;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel7;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel8;
  // Model for TextField.
  late TextField3Model textFieldModel1;
  // Model for TextField.
  late TextField3Model textFieldModel2;
  // Model for TextField.
  late TextField3Model textFieldModel3;
  // Model for SwitchComponent.
  late SwitchComponentModel switchComponentModel;
  // Model for Button.
  late Button3Model buttonModel;

  @override
  void initState(BuildContext context) {
    categoryItemModel1 = createModel(context, () => CategoryItemModel());
    categoryItemModel2 = createModel(context, () => CategoryItemModel());
    categoryItemModel3 = createModel(context, () => CategoryItemModel());
    categoryItemModel4 = createModel(context, () => CategoryItemModel());
    categoryItemModel5 = createModel(context, () => CategoryItemModel());
    categoryItemModel6 = createModel(context, () => CategoryItemModel());
    categoryItemModel7 = createModel(context, () => CategoryItemModel());
    categoryItemModel8 = createModel(context, () => CategoryItemModel());
    textFieldModel1 = createModel(context, () => TextField3Model());
    textFieldModel2 = createModel(context, () => TextField3Model());
    textFieldModel3 = createModel(context, () => TextField3Model());
    switchComponentModel = createModel(context, () => SwitchComponentModel());
    buttonModel = createModel(context, () => Button3Model());
  }

  @override
  void dispose() {
    categoryItemModel1.dispose();
    categoryItemModel2.dispose();
    categoryItemModel3.dispose();
    categoryItemModel4.dispose();
    categoryItemModel5.dispose();
    categoryItemModel6.dispose();
    categoryItemModel7.dispose();
    categoryItemModel8.dispose();
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    textFieldModel3.dispose();
    switchComponentModel.dispose();
    buttonModel.dispose();
  }
}
