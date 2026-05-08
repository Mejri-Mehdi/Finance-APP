import '/flutter_flow/flutter_flow_util.dart';
import '/o_l_d_gestion_group/button3/button3_widget.dart';
import 'g_e_s_t_i_o_n_g_r_o_u_p_e_s_add_expense_widget.dart'
    show GESTIONGROUPESAddExpenseWidget;
import 'package:flutter/material.dart';

class GESTIONGROUPESAddExpenseModel
    extends FlutterFlowModel<GESTIONGROUPESAddExpenseWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late Button3Model buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button3Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
