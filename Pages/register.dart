import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'register_page_model.dart';
export 'register_page_model.dart';

class RegisterPageWidget extends StatefulWidget {
  const RegisterPageWidget({super.key});

  @override
  State<RegisterPageWidget> createState() => _RegisterPageWidgetState();
}

class _RegisterPageWidgetState extends State<RegisterPageWidget>
    with TickerProviderStateMixin {
  late RegisterPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0, 140),
          end: Offset(0, 0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.9, 0.9),
          end: Offset(1, 1),
        ),
        TiltEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(-0.349, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisterPageModel());

    _model.emailAddressController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    _model.confirmpasswordController ??= TextEditingController();
    _model.confirmpasswordFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/WhatsApp_Image_2023-09-17_at_15.58.45.jpg',
                ).image,
              ),
            ),
            alignment: AlignmentDirectional(0, -1),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 32),
                    child: Container(
                      width: 200,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      alignment: AlignmentDirectional(0, 0),
                      child: Text(
                        'PLATHO.',
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: 'Josefin Sans',
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Container(
                      width: double.infinity,
                      constraints: BoxConstraints(
                        maxWidth: 570,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFCEDEBD),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsets.all(32),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Get Started',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Colors.black,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 12, 0, 24),
                                child: Text(
                                  'Let\'s get started by filling out the form below.',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF57636C),
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.emailAddressController,
                                    focusNode: _model.emailAddressFocusNode,
                                    onFieldSubmitted: (_) async {
                                      GoRouter.of(context).prepareAuthEvent();
                                      if (_model.passwordController.text !=
                                          _model
                                              .confirmpasswordController.text) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Passwords don\'t match!',
                                            ),
                                          ),
                                        );
                                        return;
                                      }

                                      final user = await authManager
                                          .createAccountWithEmail(
                                        context,
                                        _model.emailAddressController.text,
                                        _model.passwordController.text,
                                      );
                                      if (user == null) {
                                        return;
                                      }

                                      context.goNamedAuth(
                                          'home_page2', context.mounted);
                                    },
                                    autofocus: true,
                                    autofillHints: [AutofillHints.email],
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Email',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelLarge,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFFF1F4F8),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyLarge,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: _model
                                        .emailAddressControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.passwordController,
                                    focusNode: _model.passwordFocusNode,
                                    autofocus: true,
                                    autofillHints: [AutofillHints.password],
                                    obscureText: !_model.passwordVisibility,
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelLarge,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFFF1F4F8),
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => _model.passwordVisibility =
                                              !_model.passwordVisibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          _model.passwordVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyLarge,
                                    validator: _model
                                        .passwordControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller:
                                        _model.confirmpasswordController,
                                    focusNode: _model.confirmpasswordFocusNode,
                                    autofocus: true,
                                    autofillHints: [AutofillHints.password],
                                    obscureText:
                                        !_model.confirmpasswordVisibility,
                                    decoration: InputDecoration(
                                      labelText: 'Confirm Password',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelLarge,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFFF1F4F8),
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => _model
                                                  .confirmpasswordVisibility =
                                              !_model.confirmpasswordVisibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          _model.confirmpasswordVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyLarge,
                                    validator: _model
                                        .confirmpasswordControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    GoRouter.of(context).prepareAuthEvent();
                                    if (_model.passwordController.text !=
                                        _model.confirmpasswordController.text) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Passwords don\'t match!',
                                          ),
                                        ),
                                      );
                                      return;
                                    }

                                    final user = await authManager
                                        .createAccountWithEmail(
                                      context,
                                      _model.emailAddressController.text,
                                      _model.passwordController.text,
                                    );
                                    if (user == null) {
                                      return;
                                    }

                                    context.goNamedAuth(
                                        'home_page2', context.mounted);
                                  },
                                  text: 'Create Account',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 50,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    color: Color(0xFF0D986A),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                        ),
                                    elevation: 3,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('login_page');
                                },
                                text: 'Have an account? Sign In',
                                options: FFButtonOptions(
                                  height: 40,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24, 0, 24, 10),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 0),
                                  color: Color(0xFFCEDEBD),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF001AFF),
                                      ),
                                  elevation: 0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation']!),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
