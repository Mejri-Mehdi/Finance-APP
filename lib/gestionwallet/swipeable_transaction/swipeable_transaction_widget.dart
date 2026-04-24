import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/gestionwallet/transaction_item/transaction_item_widget.dart';
import 'package:flutter/material.dart';
import 'swipeable_transaction_model.dart';
export 'swipeable_transaction_model.dart';

class SwipeableTransactionWidget extends StatefulWidget {
  const SwipeableTransactionWidget({
    super.key,
    double? amount,
    String? date,
    this.icon,
    String? is_income,
    String? subtitle,
    String? title,
  })  : this.amount = amount ?? 0.0,
        this.date = date ?? '10:24 AM',
        this.is_income = is_income ?? 'false',
        this.subtitle = subtitle ?? 'Entertainment',
        this.title = title ?? 'Apple Store';

  final double amount;
  final String date;
  final Widget? icon;
  final String is_income;
  final String subtitle;
  final String title;

  @override
  State<SwipeableTransactionWidget> createState() =>
      _SwipeableTransactionWidgetState();
}

class _SwipeableTransactionWidgetState
    extends State<SwipeableTransactionWidget> {
  late SwipeableTransactionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwipeableTransactionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.0,
      child: Stack(
        alignment: AlignmentDirectional(-1.0, -1.0),
        children: [
          Align(
            alignment: AlignmentDirectional(1.0, -1.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 70.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).alternate,
                    shape: BoxShape.rectangle,
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Icon(
                    Icons.edit_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 22.0,
                  ),
                ),
                Container(
                  width: 70.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).error,
                    shape: BoxShape.rectangle,
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Icon(
                    Icons.delete_outline_rounded,
                    color: FlutterFlowTheme.of(context).onError,
                    size: 22.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              shape: BoxShape.rectangle,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              child: Container(
                child: wrapWithModel(
                  model: _model.transactionItemModel,
                  updateCallback: () => safeSetState(() {}),
                  child: TransactionItemWidget(
                    amount: valueOrDefault<String>(
                      widget.amount.toString(),
                      '-\$199.00',
                    ),
                    date: valueOrDefault<String>(
                      widget.date,
                      '10:24 AM',
                    ),
                    icon: widget.icon,
                    subtitle: valueOrDefault<String>(
                      widget.subtitle,
                      'Entertainment',
                    ),
                    title: valueOrDefault<String>(
                      widget.title,
                      'Apple Store',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
