import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_wallet_widget.dart' show AddWalletWidget;
import 'package:flutter/material.dart';

class AddWalletModel extends FlutterFlowModel<AddWalletWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nom widget.
  FocusNode? nomFocusNode;
  TextEditingController? nomTextController;
  String? Function(BuildContext, String?)? nomTextControllerValidator;
  String? _nomTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Le nom du wallet est obligatoire';
    }

    if (val.length < 3) {
      return 'Le nom doit contenir au moins 3 caractères';
    }
    if (val.length > 30) {
      return 'Maximum 30 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for solde widget.
  FocusNode? soldeFocusNode;
  TextEditingController? soldeTextController;
  String? Function(BuildContext, String?)? soldeTextControllerValidator;
  String? _soldeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Le solde actuel est obligatoire';
    }

    if (val.length < 1) {
      return 'Veuillez saisir un montant valide';
    }
    if (val.length > 12) {
      return 'Maximum 12 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for budget widget.
  FocusNode? budgetFocusNode;
  TextEditingController? budgetTextController;
  String? Function(BuildContext, String?)? budgetTextControllerValidator;
  String? _budgetTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Le budget limite est obligatoire';
    }

    if (val.length < 1) {
      return 'Veuillez saisir un budget valide';
    }
    if (val.length > 12) {
      return 'Maximum 12 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for objetif widget.
  FocusNode? objetifFocusNode;
  TextEditingController? objetifTextController;
  String? Function(BuildContext, String?)? objetifTextControllerValidator;
  String? _objetifTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'L’objectif d’épargne est obligatoire';
    }

    if (val.length < 1) {
      return 'Veuillez saisir un objectif valide';
    }
    if (val.length > 12) {
      return 'Maximum 12 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for depense widget.
  FocusNode? depenseFocusNode;
  TextEditingController? depenseTextController;
  String? Function(BuildContext, String?)? depenseTextControllerValidator;
  // State field(s) for revenu widget.
  FocusNode? revenuFocusNode;
  TextEditingController? revenuTextController;
  String? Function(BuildContext, String?)? revenuTextControllerValidator;

  @override
  void initState(BuildContext context) {
    nomTextControllerValidator = _nomTextControllerValidator;
    soldeTextControllerValidator = _soldeTextControllerValidator;
    budgetTextControllerValidator = _budgetTextControllerValidator;
    objetifTextControllerValidator = _objetifTextControllerValidator;
  }

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
