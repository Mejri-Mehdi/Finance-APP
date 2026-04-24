import '/flutter_flow/flutter_flow_util.dart';
import '/others/button6/button6_widget.dart';
import '/others/security_toggle/security_toggle_widget.dart';
import '/others/settings_group_header/settings_group_header_widget.dart';
import '/others/settings_item/settings_item_widget.dart';
import 'profile_security_widget.dart' show ProfileSecurityWidget;
import 'package:flutter/material.dart';

class ProfileSecurityModel extends FlutterFlowModel<ProfileSecurityWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SettingsGroupHeader.
  late SettingsGroupHeaderModel settingsGroupHeaderModel1;
  // Model for SettingsItem.
  late SettingsItemModel settingsItemModel1;
  // Model for SettingsItem.
  late SettingsItemModel settingsItemModel2;
  // Model for SettingsItem.
  late SettingsItemModel settingsItemModel3;
  // Model for SettingsGroupHeader.
  late SettingsGroupHeaderModel settingsGroupHeaderModel2;
  // Model for SecurityToggle.
  late SecurityToggleModel securityToggleModel1;
  // Model for SecurityToggle.
  late SecurityToggleModel securityToggleModel2;
  // Model for SettingsItem.
  late SettingsItemModel settingsItemModel4;
  // Model for SettingsGroupHeader.
  late SettingsGroupHeaderModel settingsGroupHeaderModel3;
  // Model for SecurityToggle.
  late SecurityToggleModel securityToggleModel3;
  // Model for SettingsItem.
  late SettingsItemModel settingsItemModel5;
  // Model for Button.
  late Button6Model buttonModel;

  @override
  void initState(BuildContext context) {
    settingsGroupHeaderModel1 =
        createModel(context, () => SettingsGroupHeaderModel());
    settingsItemModel1 = createModel(context, () => SettingsItemModel());
    settingsItemModel2 = createModel(context, () => SettingsItemModel());
    settingsItemModel3 = createModel(context, () => SettingsItemModel());
    settingsGroupHeaderModel2 =
        createModel(context, () => SettingsGroupHeaderModel());
    securityToggleModel1 = createModel(context, () => SecurityToggleModel());
    securityToggleModel2 = createModel(context, () => SecurityToggleModel());
    settingsItemModel4 = createModel(context, () => SettingsItemModel());
    settingsGroupHeaderModel3 =
        createModel(context, () => SettingsGroupHeaderModel());
    securityToggleModel3 = createModel(context, () => SecurityToggleModel());
    settingsItemModel5 = createModel(context, () => SettingsItemModel());
    buttonModel = createModel(context, () => Button6Model());
  }

  @override
  void dispose() {
    settingsGroupHeaderModel1.dispose();
    settingsItemModel1.dispose();
    settingsItemModel2.dispose();
    settingsItemModel3.dispose();
    settingsGroupHeaderModel2.dispose();
    securityToggleModel1.dispose();
    securityToggleModel2.dispose();
    settingsItemModel4.dispose();
    settingsGroupHeaderModel3.dispose();
    securityToggleModel3.dispose();
    settingsItemModel5.dispose();
    buttonModel.dispose();
  }
}
