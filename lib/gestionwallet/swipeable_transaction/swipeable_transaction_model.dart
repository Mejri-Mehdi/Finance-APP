import '/flutter_flow/flutter_flow_util.dart';
import '/gestionwallet/transaction_item/transaction_item_widget.dart';
import 'swipeable_transaction_widget.dart' show SwipeableTransactionWidget;
import 'package:flutter/material.dart';

class SwipeableTransactionModel
    extends FlutterFlowModel<SwipeableTransactionWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for TransactionItem.
  late TransactionItemModel transactionItemModel;

  @override
  void initState(BuildContext context) {
    transactionItemModel = createModel(context, () => TransactionItemModel());
  }

  @override
  void dispose() {
    transactionItemModel.dispose();
  }
}
