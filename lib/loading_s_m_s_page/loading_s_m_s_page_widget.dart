import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
import 'loading_s_m_s_page_model.dart';
export 'loading_s_m_s_page_model.dart';

class LoadingSMSPageWidget extends StatefulWidget {
  const LoadingSMSPageWidget({super.key});

  static String routeName = 'LoadingSMSPage';
  static String routePath = '/loadingSMSPage';

  @override
  State<LoadingSMSPageWidget> createState() => _LoadingSMSPageWidgetState();
}

class _LoadingSMSPageWidgetState extends State<LoadingSMSPageWidget> {
  late LoadingSMSPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingSMSPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      final phoneNumberVal = _model.tempPhone;
      if (phoneNumberVal == null ||
          phoneNumberVal.isEmpty ||
          !phoneNumberVal.startsWith('+')) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Phone Number is required and has to start with +.'),
          ),
        );
        return;
      }
      await authManager.beginPhoneAuth(
        context: context,
        phoneNumber: phoneNumberVal,
        onCodeSent: (context) async {
          context.goNamedAuth(
            PremiumVRificationPageWidget.routeName,
            context.mounted,
            queryParameters: {
              'phoneNumber': serializeParam(
                _model.tempPhone,
                ParamType.String,
              ),
              'userEmail': serializeParam(
                _model.tempEmail,
                ParamType.String,
              ),
              'userPassword': serializeParam(
                _model.tempPassword,
                ParamType.String,
              ),
            }.withoutNulls,
            ignoreRedirect: true,
          );
        },
      );
    });

    authManager.handlePhoneAuthStateChanges(context);
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Lottie.network(
                'https://lottie.host/2498d03a-d775-4d85-8b19-bba628542fe7/Tp1aSFKrW9.json',
                width: 386.6,
                height: 850.82,
                fit: BoxFit.contain,
                animate: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
