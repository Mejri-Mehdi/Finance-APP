import '/flutter_flow/flutter_flow_util.dart';
import '/o_l_d_gestion_budget/button2/button2_widget.dart';
import '/o_l_d_gestion_budget/transaction_item2/transaction_item2_widget.dart';
import 'g_e_s_t_i_o_n_b_u_d_g_e_t_budget_details_widget.dart'
    show GESTIONBUDGETBudgetDetailsWidget;
import 'package:flutter/material.dart';

class GESTIONBUDGETBudgetDetailsModel
    extends FlutterFlowModel<GESTIONBUDGETBudgetDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TransactionItem.
  late TransactionItem2Model transactionItemModel1;
  // Model for TransactionItem.
  late TransactionItem2Model transactionItemModel2;
  // Model for TransactionItem.
  late TransactionItem2Model transactionItemModel3;
  // Model for TransactionItem.
  late TransactionItem2Model transactionItemModel4;
  // Model for Button.
  late Button2Model buttonModel;

  @override
  void initState(BuildContext context) {
    transactionItemModel1 = createModel(context, () => TransactionItem2Model());
    transactionItemModel2 = createModel(context, () => TransactionItem2Model());
    transactionItemModel3 = createModel(context, () => TransactionItem2Model());
    transactionItemModel4 = createModel(context, () => TransactionItem2Model());
    buttonModel = createModel(context, () => Button2Model());
  }

  @override
  void dispose() {
    transactionItemModel1.dispose();
    transactionItemModel2.dispose();
    transactionItemModel3.dispose();
    transactionItemModel4.dispose();
    buttonModel.dispose();
  }
}
