import '/flutter_flow/flutter_flow_util.dart';
import '/gestion_cartes/button5/button5_widget.dart';
import '/gestion_cartes/card_transaction/card_transaction_widget.dart';
import '/gestion_wallet/button/button_widget.dart';
import '/index.dart';
import 'b_a_s_e_digital_cards_wallet_widget.dart'
    show BASEDigitalCardsWalletWidget;
import 'package:flutter/material.dart';

class BASEDigitalCardsWalletModel
    extends FlutterFlowModel<BASEDigitalCardsWalletWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late Button5Model buttonModel;
  // Model for CardTransaction.
  late CardTransactionModel cardTransactionModel1;
  // Model for CardTransaction.
  late CardTransactionModel cardTransactionModel2;
  // Model for CardTransaction.
  late CardTransactionModel cardTransactionModel3;
  // Model for CardTransaction.
  late CardTransactionModel cardTransactionModel4;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button5Model());
    cardTransactionModel1 = createModel(context, () => CardTransactionModel());
    cardTransactionModel2 = createModel(context, () => CardTransactionModel());
    cardTransactionModel3 = createModel(context, () => CardTransactionModel());
    cardTransactionModel4 = createModel(context, () => CardTransactionModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    buttonModel.dispose();
    cardTransactionModel1.dispose();
    cardTransactionModel2.dispose();
    cardTransactionModel3.dispose();
    cardTransactionModel4.dispose();
    buttonModel.dispose();
  }
}
