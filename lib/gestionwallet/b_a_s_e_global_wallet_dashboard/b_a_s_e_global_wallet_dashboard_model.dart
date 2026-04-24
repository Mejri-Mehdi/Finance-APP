import '/flutter_flow/flutter_flow_util.dart';
import '/gestionwallet/module_chip/module_chip_widget.dart';
import '/gestionwallet/transaction_item/transaction_item_widget.dart';
import 'b_a_s_e_global_wallet_dashboard_widget.dart'
    show BASEGlobalWalletDashboardWidget;
import 'package:flutter/material.dart';

class BASEGlobalWalletDashboardModel
    extends FlutterFlowModel<BASEGlobalWalletDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ModuleChip.
  late ModuleChipModel moduleChipModel1;
  // Model for ModuleChip.
  late ModuleChipModel moduleChipModel2;
  // Model for ModuleChip.
  late ModuleChipModel moduleChipModel3;
  // Model for ModuleChip.
  late ModuleChipModel moduleChipModel4;
  // Model for ModuleChip.
  late ModuleChipModel moduleChipModel5;
  // Model for TransactionItem.
  late TransactionItemModel transactionItemModel1;
  // Model for TransactionItem.
  late TransactionItemModel transactionItemModel2;
  // Model for TransactionItem.
  late TransactionItemModel transactionItemModel3;
  // Model for TransactionItem.
  late TransactionItemModel transactionItemModel4;

  @override
  void initState(BuildContext context) {
    moduleChipModel1 = createModel(context, () => ModuleChipModel());
    moduleChipModel2 = createModel(context, () => ModuleChipModel());
    moduleChipModel3 = createModel(context, () => ModuleChipModel());
    moduleChipModel4 = createModel(context, () => ModuleChipModel());
    moduleChipModel5 = createModel(context, () => ModuleChipModel());
    transactionItemModel1 = createModel(context, () => TransactionItemModel());
    transactionItemModel2 = createModel(context, () => TransactionItemModel());
    transactionItemModel3 = createModel(context, () => TransactionItemModel());
    transactionItemModel4 = createModel(context, () => TransactionItemModel());
  }

  @override
  void dispose() {
    moduleChipModel1.dispose();
    moduleChipModel2.dispose();
    moduleChipModel3.dispose();
    moduleChipModel4.dispose();
    moduleChipModel5.dispose();
    transactionItemModel1.dispose();
    transactionItemModel2.dispose();
    transactionItemModel3.dispose();
    transactionItemModel4.dispose();
  }
}
