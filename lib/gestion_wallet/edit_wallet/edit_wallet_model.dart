import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_wallet_widget.dart' show EditWalletWidget;
import 'package:flutter/material.dart';

class EditWalletModel extends FlutterFlowModel<EditWalletWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Read Document] action in EditWallet widget.
  WalletRecord? getWallet;
  // State field(s) for nom widget.
  FocusNode? nomFocusNode;
  TextEditingController? nomTextController;
  String? Function(BuildContext, String?)? nomTextControllerValidator;
  // State field(s) for solde widget.
  FocusNode? soldeFocusNode;
  TextEditingController? soldeTextController;
  String? Function(BuildContext, String?)? soldeTextControllerValidator;
  // State field(s) for budget widget.
  FocusNode? budgetFocusNode;
  TextEditingController? budgetTextController;
  String? Function(BuildContext, String?)? budgetTextControllerValidator;
  // State field(s) for objetif widget.
  FocusNode? objetifFocusNode;
  TextEditingController? objetifTextController;
  String? Function(BuildContext, String?)? objetifTextControllerValidator;
  // State field(s) for depense widget.
  FocusNode? depenseFocusNode;
  TextEditingController? depenseTextController;
  String? Function(BuildContext, String?)? depenseTextControllerValidator;
  // State field(s) for revenu widget.
  FocusNode? revenuFocusNode;
  TextEditingController? revenuTextController;
  String? Function(BuildContext, String?)? revenuTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomFocusNode?.dispose();
    nomTextController?.dispose();

    soldeFocusNode?.dispose();
    soldeTextController?.dispose();

    budgetFocusNode?.dispose();
    budgetTextController?.dispose();

    objetifFocusNode?.dispose();
    objetifTextController?.dispose();

    depenseFocusNode?.dispose();
    depenseTextController?.dispose();

    revenuFocusNode?.dispose();
    revenuTextController?.dispose();
  }
}
