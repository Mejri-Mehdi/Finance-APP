import '/authentication/button7/button7_widget.dart';
import '/authentication/goal_selection_item/goal_selection_item_widget.dart';
import '/authentication/text_field7/text_field7_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'a_u_t_h_profile_setup_widget.dart' show AUTHProfileSetupWidget;
import 'package:flutter/material.dart';

class AUTHProfileSetupModel extends FlutterFlowModel<AUTHProfileSetupWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadData1gp = false;
  FFUploadedFile uploadedLocalFile_uploadData1gp =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Custom Action - imageToBase64] action in Button widget.
  String? convertedImage;
  // Model for TextField.
  late TextField7Model textFieldModel;
  // Model for GoalSelectionItem.
  late GoalSelectionItemModel goalSelectionItemModel1;
  // Model for GoalSelectionItem.
  late GoalSelectionItemModel goalSelectionItemModel2;
  // Model for GoalSelectionItem.
  late GoalSelectionItemModel goalSelectionItemModel3;
  // Model for Button.
  late Button7Model buttonModel;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextField7Model());
    goalSelectionItemModel1 =
        createModel(context, () => GoalSelectionItemModel());
    goalSelectionItemModel2 =
        createModel(context, () => GoalSelectionItemModel());
    goalSelectionItemModel3 =
        createModel(context, () => GoalSelectionItemModel());
    buttonModel = createModel(context, () => Button7Model());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    goalSelectionItemModel1.dispose();
    goalSelectionItemModel2.dispose();
    goalSelectionItemModel3.dispose();
    buttonModel.dispose();
  }
}
