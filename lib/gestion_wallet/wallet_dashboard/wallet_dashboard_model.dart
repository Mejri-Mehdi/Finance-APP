import '/flutter_flow/flutter_flow_util.dart';
import '/gestion_wallet/revenu_chart/revenu_chart_widget.dart';
import '/index.dart';
import 'wallet_dashboard_widget.dart' show WalletDashboardWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class WalletDashboardModel extends FlutterFlowModel<WalletDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;
  AudioPlayer? soundPlayer3;
  AudioPlayer? soundPlayer4;
  // Model for RevenuChart component.
  late RevenuChartModel revenuChartModel;

  @override
  void initState(BuildContext context) {
    revenuChartModel = createModel(context, () => RevenuChartModel());
  }

  @override
  void dispose() {
    revenuChartModel.dispose();
  }
}
