import '/flutter_flow/flutter_flow_util.dart';
import '/gestioncartes/button4/button4_widget.dart';
import '/gestioncartes/card_transaction/card_transaction_widget.dart';
import '/gestioncartes/spending_limit_indicator/spending_limit_indicator_widget.dart';
import 'g_e_s_t_i_o_n_c_a_r_t_e_s_card_details_overview_widget.dart'
    show GESTIONCARTESCardDetailsOverviewWidget;
import 'package:flutter/material.dart';

class GESTIONCARTESCardDetailsOverviewModel
    extends FlutterFlowModel<GESTIONCARTESCardDetailsOverviewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SpendingLimitIndicator.
  late SpendingLimitIndicatorModel spendingLimitIndicatorModel;
  // Model for Button.
  late Button4Model buttonModel1;
  // Model for Button.
  late Button4Model buttonModel2;
  // Model for CardTransaction.
  late CardTransactionModel cardTransactionModel1;
  // Model for CardTransaction.
  late CardTransactionModel cardTransactionModel2;
  // Model for CardTransaction.
  late CardTransactionModel cardTransactionModel3;
  // Model for CardTransaction.
  late CardTransactionModel cardTransactionModel4;
  // Model for CardTransaction.
  late CardTransactionModel cardTransactionModel5;

  @override
  void initState(BuildContext context) {
    spendingLimitIndicatorModel =
        createModel(context, () => SpendingLimitIndicatorModel());
    buttonModel1 = createModel(context, () => Button4Model());
    buttonModel2 = createModel(context, () => Button4Model());
    cardTransactionModel1 = createModel(context, () => CardTransactionModel());
    cardTransactionModel2 = createModel(context, () => CardTransactionModel());
    cardTransactionModel3 = createModel(context, () => CardTransactionModel());
    cardTransactionModel4 = createModel(context, () => CardTransactionModel());
    cardTransactionModel5 = createModel(context, () => CardTransactionModel());
  }

  @override
  void dispose() {
    spendingLimitIndicatorModel.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
    cardTransactionModel1.dispose();
    cardTransactionModel2.dispose();
    cardTransactionModel3.dispose();
    cardTransactionModel4.dispose();
    cardTransactionModel5.dispose();
  }
}
