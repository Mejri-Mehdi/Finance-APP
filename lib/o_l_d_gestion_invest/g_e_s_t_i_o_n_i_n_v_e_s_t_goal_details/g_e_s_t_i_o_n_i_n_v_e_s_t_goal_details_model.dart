import '/flutter_flow/flutter_flow_util.dart';
import '/o_l_d_gestion_invest/button4/button4_widget.dart';
import '/o_l_d_gestion_invest/transaction_item3/transaction_item3_widget.dart';
import 'g_e_s_t_i_o_n_i_n_v_e_s_t_goal_details_widget.dart'
    show GESTIONINVESTGoalDetailsWidget;
import 'package:flutter/material.dart';

class GESTIONINVESTGoalDetailsModel
    extends FlutterFlowModel<GESTIONINVESTGoalDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late Button4Model buttonModel1;
  // Model for Button.
  late Button4Model buttonModel2;
  // Model for Button.
  late Button4Model buttonModel3;
  // Model for TransactionItem.
  late TransactionItem3Model transactionItemModel1;
  // Model for TransactionItem.
  late TransactionItem3Model transactionItemModel2;
  // Model for TransactionItem.
  late TransactionItem3Model transactionItemModel3;
  // Model for TransactionItem.
  late TransactionItem3Model transactionItemModel4;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => Button4Model());
    buttonModel2 = createModel(context, () => Button4Model());
    buttonModel3 = createModel(context, () => Button4Model());
    transactionItemModel1 = createModel(context, () => TransactionItem3Model());
    transactionItemModel2 = createModel(context, () => TransactionItem3Model());
    transactionItemModel3 = createModel(context, () => TransactionItem3Model());
    transactionItemModel4 = createModel(context, () => TransactionItem3Model());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    buttonModel2.dispose();
    buttonModel3.dispose();
    transactionItemModel1.dispose();
    transactionItemModel2.dispose();
    transactionItemModel3.dispose();
    transactionItemModel4.dispose();
  }
}
