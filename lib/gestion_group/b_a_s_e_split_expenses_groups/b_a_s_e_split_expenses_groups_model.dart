import '/flutter_flow/flutter_flow_util.dart';
import '/gestion_group/balance_summary_card/balance_summary_card_widget.dart';
import '/gestion_group/group_card/group_card_widget.dart';
import '/gestion_wallet/button/button_widget.dart';
import '/index.dart';
import 'b_a_s_e_split_expenses_groups_widget.dart'
    show BASESplitExpensesGroupsWidget;
import 'package:flutter/material.dart';

class BASESplitExpensesGroupsModel
    extends FlutterFlowModel<BASESplitExpensesGroupsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BalanceSummaryCard.
  late BalanceSummaryCardModel balanceSummaryCardModel1;
  // Model for BalanceSummaryCard.
  late BalanceSummaryCardModel balanceSummaryCardModel2;
  // Model for GroupCard.
  late GroupCardModel groupCardModel1;
  // Model for GroupCard.
  late GroupCardModel groupCardModel2;
  // Model for GroupCard.
  late GroupCardModel groupCardModel3;
  // Model for GroupCard.
  late GroupCardModel groupCardModel4;
  // Model for GroupCard.
  late GroupCardModel groupCardModel5;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    balanceSummaryCardModel1 =
        createModel(context, () => BalanceSummaryCardModel());
    balanceSummaryCardModel2 =
        createModel(context, () => BalanceSummaryCardModel());
    groupCardModel1 = createModel(context, () => GroupCardModel());
    groupCardModel2 = createModel(context, () => GroupCardModel());
    groupCardModel3 = createModel(context, () => GroupCardModel());
    groupCardModel4 = createModel(context, () => GroupCardModel());
    groupCardModel5 = createModel(context, () => GroupCardModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    balanceSummaryCardModel1.dispose();
    balanceSummaryCardModel2.dispose();
    groupCardModel1.dispose();
    groupCardModel2.dispose();
    groupCardModel3.dispose();
    groupCardModel4.dispose();
    groupCardModel5.dispose();
    buttonModel.dispose();
  }
}
