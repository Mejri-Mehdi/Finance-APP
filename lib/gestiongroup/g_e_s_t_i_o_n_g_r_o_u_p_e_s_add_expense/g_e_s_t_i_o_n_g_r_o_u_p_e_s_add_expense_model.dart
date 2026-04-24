import '/flutter_flow/flutter_flow_util.dart';
import '/gestiongroup/button/button_widget.dart';
import 'g_e_s_t_i_o_n_g_r_o_u_p_e_s_add_expense_widget.dart'
    show GESTIONGROUPESAddExpenseWidget;
import 'package:flutter/material.dart';

class GESTIONGROUPESAddExpenseModel
    extends FlutterFlowModel<GESTIONGROUPESAddExpenseWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
