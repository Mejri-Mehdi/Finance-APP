import '/flutter_flow/flutter_flow_util.dart';
import '/o_l_d_gestion_wallet/button/button_widget.dart';
import '/o_l_d_gestion_wallet/text_field/text_field_widget.dart';
import '/o_l_d_gestion_wallet/transaction_toggle/transaction_toggle_widget.dart';
import 'g_e_s_t_i_o_n_w_a_l_l_e_t_add_transaction_widget.dart'
    show GESTIONWALLETAddTransactionWidget;
import 'package:flutter/material.dart';

class GESTIONWALLETAddTransactionModel
    extends FlutterFlowModel<GESTIONWALLETAddTransactionWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TransactionToggle.
  late TransactionToggleModel transactionToggleModel;
  // Model for TextField.
  late TextFieldModel textFieldModel;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    transactionToggleModel =
        createModel(context, () => TransactionToggleModel());
    textFieldModel = createModel(context, () => TextFieldModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    transactionToggleModel.dispose();
    textFieldModel.dispose();
    buttonModel.dispose();
  }
}
