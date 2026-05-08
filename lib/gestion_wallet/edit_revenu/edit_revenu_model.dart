import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_revenu_widget.dart' show EditRevenuWidget;
import 'package:flutter/material.dart';

class EditRevenuModel extends FlutterFlowModel<EditRevenuWidget> {
  ///  Local state fields for this page.

  String selectedType = 'revenu';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Read Document] action in EditRevenu widget.
  TransactionRecord? getRev;
  bool isDataUploading_uploadDataYtuuuuu = false;
  FFUploadedFile uploadedLocalFile_uploadDataYtuuuuu =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - API (scanRecuOCR)] action in Button widget.
  ApiCallResponse? ocrResult;
  // State field(s) for montant widget.
  FocusNode? montantFocusNode;
  TextEditingController? montantTextController;
  String? Function(BuildContext, String?)? montantTextControllerValidator;
  String? _montantTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Le montant est obligatoire';
    }

    if (val.length < 1) {
      return 'Veuillez saisir un montant valide';
    }
    if (val.length > 12) {
      return 'Le montant est trop long';
    }
    if (!RegExp('^\\d+(\\.\\d{1,2})?\$').hasMatch(val)) {
      return 'Veuillez saisir un montant valide positif.';
    }
    return null;
  }

  // Stores action output result for [Custom Action - detectCategorieWithApi] action in IconButton widget.
  String? resultCategorie;
  // State field(s) for categorie widget.
  FocusNode? categorieFocusNode;
  TextEditingController? categorieTextController;
  String? Function(BuildContext, String?)? categorieTextControllerValidator;
  String? _categorieTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Veuillez choisir un type de transaction';
    }

    if (val.length < 3) {
      return 'Veuillez choisir une catégorie valide';
    }
    if (val.length > 25) {
      return 'La catégorie est trop longue';
    }
    if (!RegExp('^[A-Za-zÀ-ÖØ-öø-ÿ\\s]+\$').hasMatch(val)) {
      return 'Catégorie invalide. Exp : Nourriture..';
    }
    return null;
  }

  // State field(s) for methode widget.
  FocusNode? methodeFocusNode;
  TextEditingController? methodeTextController;
  String? Function(BuildContext, String?)? methodeTextControllerValidator;
  String? _methodeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'methode de paiement .. is required';
    }

    if (!RegExp('^[A-Za-zÀ-ÖØ-öø-ÿ\\s]+\$').hasMatch(val)) {
      return 'Méthode de paiement invalide. Exp : Espèces..';
    }
    return null;
  }

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  String? get choiceChipsValue1 =>
      choiceChipsValueController1?.value?.firstOrNull;
  set choiceChipsValue1(String? val) =>
      choiceChipsValueController1?.value = val != null ? [val] : [];
  // State field(s) for descreption widget.
  FocusNode? descreptionFocusNode;
  TextEditingController? descreptionTextController;
  String? Function(BuildContext, String?)? descreptionTextControllerValidator;
  String? _descreptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'La description est obligatoire';
    }

    if (val.length < 3) {
      return 'La description doit contenir au moins 3 caractères';
    }
    if (val.length > 100) {
      return 'La description est trop longue';
    }
    if (!RegExp('^[A-Za-zÀ-ÖØ-öø-ÿ0-9\\s.,\'()\\-]+\$').hasMatch(val)) {
      return 'Description invalide.';
    }
    return null;
  }

  // State field(s) for localisation widget.
  FocusNode? localisationFocusNode;
  TextEditingController? localisationTextController;
  String? Function(BuildContext, String?)? localisationTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  String? get choiceChipsValue2 =>
      choiceChipsValueController2?.value?.firstOrNull;
  set choiceChipsValue2(String? val) =>
      choiceChipsValueController2?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {
    montantTextControllerValidator = _montantTextControllerValidator;
    categorieTextControllerValidator = _categorieTextControllerValidator;
    methodeTextControllerValidator = _methodeTextControllerValidator;
    descreptionTextControllerValidator = _descreptionTextControllerValidator;
  }

  @override
  void dispose() {
    montantFocusNode?.dispose();
    montantTextController?.dispose();

    categorieFocusNode?.dispose();
    categorieTextController?.dispose();

    methodeFocusNode?.dispose();
    methodeTextController?.dispose();

    descreptionFocusNode?.dispose();
    descreptionTextController?.dispose();

    localisationFocusNode?.dispose();
    localisationTextController?.dispose();
  }
}
