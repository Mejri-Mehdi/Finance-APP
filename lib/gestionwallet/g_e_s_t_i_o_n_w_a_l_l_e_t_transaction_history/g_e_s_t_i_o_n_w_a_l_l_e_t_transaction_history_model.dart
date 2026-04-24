import '/flutter_flow/flutter_flow_util.dart';
import '/gestionwallet/date_header/date_header_widget.dart';
import '/gestionwallet/swipeable_transaction/swipeable_transaction_widget.dart';
import '/gestionwallet/text_field2/text_field2_widget.dart';
import 'g_e_s_t_i_o_n_w_a_l_l_e_t_transaction_history_widget.dart'
    show GESTIONWALLETTransactionHistoryWidget;
import 'package:flutter/material.dart';

class GESTIONWALLETTransactionHistoryModel
    extends FlutterFlowModel<GESTIONWALLETTransactionHistoryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextField2Model textFieldModel;
  // Model for DateHeader.
  late DateHeaderModel dateHeaderModel1;
  // Model for SwipeableTransaction.
  late SwipeableTransactionModel swipeableTransactionModel1;
  // Model for SwipeableTransaction.
  late SwipeableTransactionModel swipeableTransactionModel2;
  // Model for SwipeableTransaction.
  late SwipeableTransactionModel swipeableTransactionModel3;
  // Model for DateHeader.
  late DateHeaderModel dateHeaderModel2;
  // Model for SwipeableTransaction.
  late SwipeableTransactionModel swipeableTransactionModel4;
  // Model for SwipeableTransaction.
  late SwipeableTransactionModel swipeableTransactionModel5;
  // Model for SwipeableTransaction.
  late SwipeableTransactionModel swipeableTransactionModel6;
  // Model for DateHeader.
  late DateHeaderModel dateHeaderModel3;
  // Model for SwipeableTransaction.
  late SwipeableTransactionModel swipeableTransactionModel7;
  // Model for SwipeableTransaction.
  late SwipeableTransactionModel swipeableTransactionModel8;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextField2Model());
    dateHeaderModel1 = createModel(context, () => DateHeaderModel());
    swipeableTransactionModel1 =
        createModel(context, () => SwipeableTransactionModel());
    swipeableTransactionModel2 =
        createModel(context, () => SwipeableTransactionModel());
    swipeableTransactionModel3 =
        createModel(context, () => SwipeableTransactionModel());
    dateHeaderModel2 = createModel(context, () => DateHeaderModel());
    swipeableTransactionModel4 =
        createModel(context, () => SwipeableTransactionModel());
    swipeableTransactionModel5 =
        createModel(context, () => SwipeableTransactionModel());
    swipeableTransactionModel6 =
        createModel(context, () => SwipeableTransactionModel());
    dateHeaderModel3 = createModel(context, () => DateHeaderModel());
    swipeableTransactionModel7 =
        createModel(context, () => SwipeableTransactionModel());
    swipeableTransactionModel8 =
        createModel(context, () => SwipeableTransactionModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    dateHeaderModel1.dispose();
    swipeableTransactionModel1.dispose();
    swipeableTransactionModel2.dispose();
    swipeableTransactionModel3.dispose();
    dateHeaderModel2.dispose();
    swipeableTransactionModel4.dispose();
    swipeableTransactionModel5.dispose();
    swipeableTransactionModel6.dispose();
    dateHeaderModel3.dispose();
    swipeableTransactionModel7.dispose();
    swipeableTransactionModel8.dispose();
  }
}
