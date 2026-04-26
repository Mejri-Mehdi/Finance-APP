import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ajouterune_transaction_model.dart';
export 'ajouterune_transaction_model.dart';

/// Create a premium, minimalist addTransaction Use a clean white background
/// with vibrant purple primary accents and glassmorphism.
///
/// Structure the screen exactly as follows:
/// 1. **App Bar**: White background. Title "Nouvelle Transaction" in bold,
/// dark grey modern font. Include a back arrow icon on the left.
/// 2. **Amount Input**: At the top, a massive, centered TextField for typing
/// the amount. The text should be huge, bold, and purple. Add a label
/// "Montant" above it and a suffix "TND".
/// 3. **Transaction Details (Form)**: A slightly elevated white container
/// with soft shadows containing:
///    - "Nom du commerçant" (Merchant Name) TextField. Use a modern, subtle
/// border.
///    - A Dropdown menu for "Type de transaction" with two options: "Débit
/// (Achat)" and "Crédit (Revenu)".
///    -A Date Picker field labeled "Date de la transaction" with a calendar
/// icon.
/// 4. **Save Button**: A large, prominent, pill-shaped button at the very
/// bottom with a vibrant purple-to-pink gradient, labeled "Ajouter la
/// transaction".
class AjouteruneTransactionWidget extends StatefulWidget {
  const AjouteruneTransactionWidget({super.key});

  static String routeName = 'AjouteruneTransaction';
  static String routePath = '/ajouteruneTransaction';

  @override
  State<AjouteruneTransactionWidget> createState() =>
      _AjouteruneTransactionWidgetState();
}

class _AjouteruneTransactionWidgetState
    extends State<AjouteruneTransactionWidget> {
  late AjouteruneTransactionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AjouteruneTransactionModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

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
        backgroundColor: Color(0xFFF5F5F5),
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 22.0,
            buttonSize: 44.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF2D2D2D),
              size: 24.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Nouvelle Transaction',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
                  color: Color(0xFF2D2D2D),
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Montant',
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF9E9E9E),
                                  fontSize: 13.0,
                                  letterSpacing: 1.5,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 200.0,
                            child: TextFormField(
                              controller: _model.textController1,
                              focusNode: _model.textFieldFocusNode1,
                              autofocus: false,
                              textInputAction: TextInputAction.done,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: '0.00',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .displayLarge
                                    .override(
                                      font: GoogleFonts.outfit(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .displayLarge
                                            .fontStyle,
                                      ),
                                      color: Color(0xFFCFB3F7),
                                      fontSize: 56.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .displayLarge
                                          .fontStyle,
                                    ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .displayLarge
                                  .override(
                                    font: GoogleFonts.outfit(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .displayLarge
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF7C3AED),
                                    fontSize: 56.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .displayLarge
                                        .fontStyle,
                                  ),
                              textAlign: TextAlign.center,
                              cursorColor: Color(0xFF7C3AED),
                              validator: _model.textController1Validator
                                  .asValidator(context),
                            ),
                          ),
                          Text(
                            'TND',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF7C3AED),
                                  fontSize: 22.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                ),
                          ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                      Container(
                        width: 80.0,
                        height: 3.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF7C3AED), Color(0xFFEC4899)],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(1.0, 0.0),
                            end: AlignmentDirectional(-1.0, 0),
                          ),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ].divide(SizedBox(height: 6.0)),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20.0,
                          color: Color(0x1A7C3AED),
                          offset: Offset(
                            0.0,
                            4.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nom du commerçant',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF6B7280),
                                      fontSize: 12.0,
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF9F7FF),
                                  borderRadius: BorderRadius.circular(14.0),
                                  border: Border.all(
                                    color: Color(0xFFE9D5FF),
                                    width: 1.5,
                                  ),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.textController2,
                                    focusNode: _model.textFieldFocusNode2,
                                    autofocus: false,
                                    textInputAction: TextInputAction.next,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      hintText: 'Ex: Carrefour, Netflix...',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFFB0B8C8),
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16.0, 14.0, 16.0, 14.0),
                                      prefixIcon: Icon(
                                        Icons.storefront_outlined,
                                        color: Color(0xFF7C3AED),
                                        size: 20.0,
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF1F1F2E),
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                    cursorColor: Color(0xFF7C3AED),
                                    validator: _model.textController2Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Type de transaction',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF6B7280),
                                      fontSize: 12.0,
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF9F7FF),
                                  borderRadius: BorderRadius.circular(14.0),
                                  border: Border.all(
                                    color: Color(0xFFE9D5FF),
                                    width: 1.5,
                                  ),
                                ),
                                child: FlutterFlowDropDown<String>(
                                  controller: _model.dropDownValueController ??=
                                      FormFieldController<String>(null),
                                  options: ['Débit (Achat)', 'Crédit (Revenu)'],
                                  onChanged: (val) => safeSetState(
                                      () => _model.dropDownValue = val),
                                  width: double.infinity,
                                  height: 52.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF1F1F2E),
                                        fontSize: 15.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontStyle,
                                      ),
                                  hintText: 'Sélectionner un type',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Color(0xFF7C3AED),
                                    size: 22.0,
                                  ),
                                  fillColor: Colors.transparent,
                                  elevation: 0.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0.0,
                                  borderRadius: 14.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      4.0, 0.0, 4.0, 0.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Date de la transaction',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF6B7280),
                                      fontSize: 12.0,
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF9F7FF),
                                  borderRadius: BorderRadius.circular(14.0),
                                  border: Border.all(
                                    color: Color(0xFFE9D5FF),
                                    width: 1.5,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 14.0, 16.0, 14.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Sélectionner une date',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFFB0B8C8),
                                              fontSize: 15.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .fontStyle,
                                            ),
                                      ),
                                      Icon(
                                        Icons.calendar_today_rounded,
                                        color: Color(0xFF7C3AED),
                                        size: 22.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ].divide(SizedBox(height: 20.0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    child: Container(
                      width: double.infinity,
                      height: 58.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 18.0,
                            color: Color(0x557C3AED),
                            offset: Offset(
                              0.0,
                              6.0,
                            ),
                          )
                        ],
                        gradient: LinearGradient(
                          colors: [Color(0xFF7C3AED), Color(0xFFEC4899)],
                          stops: [0.0, 1.0],
                          begin: AlignmentDirectional(1.0, 0.0),
                          end: AlignmentDirectional(-1.0, 0),
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_circle_outline_rounded,
                            color: Colors.white,
                            size: 22.0,
                          ),
                          Text(
                            'Ajouter la transaction',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                          ),
                        ].divide(SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
                ),
              ]
                  .divide(SizedBox(height: 24.0))
                  .addToStart(SizedBox(height: 28.0))
                  .addToEnd(SizedBox(height: 40.0)),
            ),
          ),
        ),
      ),
    );
  }
}
