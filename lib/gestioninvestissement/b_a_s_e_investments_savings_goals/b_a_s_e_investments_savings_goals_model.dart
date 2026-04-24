import '/flutter_flow/flutter_flow_util.dart';
import '/gestioninvestissement/goal_card/goal_card_widget.dart';
import '/gestioninvestissement/investment_stat/investment_stat_widget.dart';
import 'b_a_s_e_investments_savings_goals_widget.dart'
    show BASEInvestmentsSavingsGoalsWidget;
import 'package:flutter/material.dart';

class BASEInvestmentsSavingsGoalsModel
    extends FlutterFlowModel<BASEInvestmentsSavingsGoalsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for InvestmentStat.
  late InvestmentStatModel investmentStatModel1;
  // Model for InvestmentStat.
  late InvestmentStatModel investmentStatModel2;
  // Model for InvestmentStat.
  late InvestmentStatModel investmentStatModel3;
  // Model for GoalCard.
  late GoalCardModel goalCardModel1;
  // Model for GoalCard.
  late GoalCardModel goalCardModel2;
  // Model for GoalCard.
  late GoalCardModel goalCardModel3;
  // Model for GoalCard.
  late GoalCardModel goalCardModel4;

  @override
  void initState(BuildContext context) {
    investmentStatModel1 = createModel(context, () => InvestmentStatModel());
    investmentStatModel2 = createModel(context, () => InvestmentStatModel());
    investmentStatModel3 = createModel(context, () => InvestmentStatModel());
    goalCardModel1 = createModel(context, () => GoalCardModel());
    goalCardModel2 = createModel(context, () => GoalCardModel());
    goalCardModel3 = createModel(context, () => GoalCardModel());
    goalCardModel4 = createModel(context, () => GoalCardModel());
  }

  @override
  void dispose() {
    investmentStatModel1.dispose();
    investmentStatModel2.dispose();
    investmentStatModel3.dispose();
    goalCardModel1.dispose();
    goalCardModel2.dispose();
    goalCardModel3.dispose();
    goalCardModel4.dispose();
  }
}
