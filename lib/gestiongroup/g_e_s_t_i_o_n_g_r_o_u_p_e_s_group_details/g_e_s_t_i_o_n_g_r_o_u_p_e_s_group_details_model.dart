import '/flutter_flow/flutter_flow_util.dart';
import '/gestiongroup/button/button_widget.dart';
import '/gestiongroup/group_expense_item/group_expense_item_widget.dart';
import '/gestiongroup/member_avatar/member_avatar_widget.dart';
import 'g_e_s_t_i_o_n_g_r_o_u_p_e_s_group_details_widget.dart'
    show GESTIONGROUPESGroupDetailsWidget;
import 'package:flutter/material.dart';

class GESTIONGROUPESGroupDetailsModel
    extends FlutterFlowModel<GESTIONGROUPESGroupDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;
  // Model for MemberAvatar.
  late MemberAvatarModel memberAvatarModel1;
  // Model for MemberAvatar.
  late MemberAvatarModel memberAvatarModel2;
  // Model for MemberAvatar.
  late MemberAvatarModel memberAvatarModel3;
  // Model for MemberAvatar.
  late MemberAvatarModel memberAvatarModel4;
  // Model for MemberAvatar.
  late MemberAvatarModel memberAvatarModel5;
  // Model for GroupExpenseItem.
  late GroupExpenseItemModel groupExpenseItemModel1;
  // Model for GroupExpenseItem.
  late GroupExpenseItemModel groupExpenseItemModel2;
  // Model for GroupExpenseItem.
  late GroupExpenseItemModel groupExpenseItemModel3;
  // Model for GroupExpenseItem.
  late GroupExpenseItemModel groupExpenseItemModel4;
  // Model for GroupExpenseItem.
  late GroupExpenseItemModel groupExpenseItemModel5;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    memberAvatarModel1 = createModel(context, () => MemberAvatarModel());
    memberAvatarModel2 = createModel(context, () => MemberAvatarModel());
    memberAvatarModel3 = createModel(context, () => MemberAvatarModel());
    memberAvatarModel4 = createModel(context, () => MemberAvatarModel());
    memberAvatarModel5 = createModel(context, () => MemberAvatarModel());
    groupExpenseItemModel1 =
        createModel(context, () => GroupExpenseItemModel());
    groupExpenseItemModel2 =
        createModel(context, () => GroupExpenseItemModel());
    groupExpenseItemModel3 =
        createModel(context, () => GroupExpenseItemModel());
    groupExpenseItemModel4 =
        createModel(context, () => GroupExpenseItemModel());
    groupExpenseItemModel5 =
        createModel(context, () => GroupExpenseItemModel());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    buttonModel2.dispose();
    memberAvatarModel1.dispose();
    memberAvatarModel2.dispose();
    memberAvatarModel3.dispose();
    memberAvatarModel4.dispose();
    memberAvatarModel5.dispose();
    groupExpenseItemModel1.dispose();
    groupExpenseItemModel2.dispose();
    groupExpenseItemModel3.dispose();
    groupExpenseItemModel4.dispose();
    groupExpenseItemModel5.dispose();
  }
}
