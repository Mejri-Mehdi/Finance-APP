import '/flutter_flow/flutter_flow_util.dart';
import '/others/filter_chip/filter_chip_widget.dart';
import '/others/text_field6/text_field6_widget.dart';
import '/others/transaction_item4/transaction_item4_widget.dart';
import 'transaction_history_widget.dart' show TransactionHistoryWidget;
import 'package:flutter/material.dart';

class TransactionHistoryModel
    extends FlutterFlowModel<TransactionHistoryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextField6Model textFieldModel;
  // Model for FilterChip.
  late FilterChipModel filterChipModel1;
  // Model for FilterChip.
  late FilterChipModel filterChipModel2;
  // Model for FilterChip.
  late FilterChipModel filterChipModel3;
  // Model for FilterChip.
  late FilterChipModel filterChipModel4;
  // Model for FilterChip.
  late FilterChipModel filterChipModel5;
  // Model for TransactionItem.
  late TransactionItem4Model transactionItemModel1;
  // Model for TransactionItem.
  late TransactionItem4Model transactionItemModel2;
  // Model for TransactionItem.
  late TransactionItem4Model transactionItemModel3;
  // Model for TransactionItem.
  late TransactionItem4Model transactionItemModel4;
  // Model for TransactionItem.
  late TransactionItem4Model transactionItemModel5;
  // Model for TransactionItem.
  late TransactionItem4Model transactionItemModel6;
  // Model for TransactionItem.
  late TransactionItem4Model transactionItemModel7;
  // Model for TransactionItem.
  late TransactionItem4Model transactionItemModel8;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextField6Model());
    filterChipModel1 = createModel(context, () => FilterChipModel());
    filterChipModel2 = createModel(context, () => FilterChipModel());
    filterChipModel3 = createModel(context, () => FilterChipModel());
    filterChipModel4 = createModel(context, () => FilterChipModel());
    filterChipModel5 = createModel(context, () => FilterChipModel());
    transactionItemModel1 = createModel(context, () => TransactionItem4Model());
    transactionItemModel2 = createModel(context, () => TransactionItem4Model());
    transactionItemModel3 = createModel(context, () => TransactionItem4Model());
    transactionItemModel4 = createModel(context, () => TransactionItem4Model());
    transactionItemModel5 = createModel(context, () => TransactionItem4Model());
    transactionItemModel6 = createModel(context, () => TransactionItem4Model());
    transactionItemModel7 = createModel(context, () => TransactionItem4Model());
    transactionItemModel8 = createModel(context, () => TransactionItem4Model());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    filterChipModel1.dispose();
    filterChipModel2.dispose();
    filterChipModel3.dispose();
    filterChipModel4.dispose();
    filterChipModel5.dispose();
    transactionItemModel1.dispose();
    transactionItemModel2.dispose();
    transactionItemModel3.dispose();
    transactionItemModel4.dispose();
    transactionItemModel5.dispose();
    transactionItemModel6.dispose();
    transactionItemModel7.dispose();
    transactionItemModel8.dispose();
  }
}
