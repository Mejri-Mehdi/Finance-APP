import '/flutter_flow/flutter_flow_util.dart';
import '/gestion_budget/budget_card/budget_card_widget.dart';
import '/index.dart';
import 'b_a_s_e_budget_management_widget.dart' show BASEBudgetManagementWidget;
import 'package:flutter/material.dart';

class BASEBudgetManagementModel
    extends FlutterFlowModel<BASEBudgetManagementWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BudgetCard.
  late BudgetCardModel budgetCardModel1;
  // Model for BudgetCard.
  late BudgetCardModel budgetCardModel2;
  // Model for BudgetCard.
  late BudgetCardModel budgetCardModel3;
  // Model for BudgetCard.
  late BudgetCardModel budgetCardModel4;

  @override
  void initState(BuildContext context) {
    budgetCardModel1 = createModel(context, () => BudgetCardModel());
    budgetCardModel2 = createModel(context, () => BudgetCardModel());
    budgetCardModel3 = createModel(context, () => BudgetCardModel());
    budgetCardModel4 = createModel(context, () => BudgetCardModel());
  }

  @override
  void dispose() {
    budgetCardModel1.dispose();
    budgetCardModel2.dispose();
    budgetCardModel3.dispose();
    budgetCardModel4.dispose();
  }
}
