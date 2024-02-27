import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'profile_page_model.dart';
export 'profile_page_model.dart';

class ProfilePageWidget extends StatefulWidget {
  const ProfilePageWidget({super.key});

  @override
  State<ProfilePageWidget> createState() => _ProfilePageWidgetState();
}

class _ProfilePageWidgetState extends State<ProfilePageWidget> {
  late ProfilePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfilePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xA4FFFFFF),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 234,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FlutterFlowTheme.of(context).primary,
                      FlutterFlowTheme.of(context).secondary
                    ],
                    stops: [0, 1],
                    begin: AlignmentDirectional(0, -1),
                    end: AlignmentDirectional(0, 1),
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          StreamBuilder<List<UsersRecord>>(
                            stream: queryUsersRecord(
                              singleRecord: true,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<UsersRecord> circleImageUsersRecordList =
                                  snapshot.data!;
                              // Return an empty Container when the item does not exist.
                              if (snapshot.data!.isEmpty) {
                                return Container();
                              }
                              final circleImageUsersRecord =
                                  circleImageUsersRecordList.isNotEmpty
                                      ? circleImageUsersRecordList.first
                                      : null;
                              return Container(
                                width: 120,
                                height: 120,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    circleImageUsersRecord?.photoUrl,
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Windows_10_Default_Profile_Picture.svg/2048px-Windows_10_Default_Profile_Picture.svg.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        valueOrDefault<String>(
                                          currentUserDisplayName,
                                          'Name Here',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 0),
                                      child: Text(
                                        currentUserEmail,
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xB4FFFFFF),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ].addToStart(SizedBox(height: 20)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('edit_profile');
                  },
                  child: Material(
                    color: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      width: 852,
                      height: 60,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            color: Color(0x33000000),
                            offset: Offset(0, 1),
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          width: 0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 4, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Text(
                                'Edit Profile',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context).bodyLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: 852,
                    height: 60,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: Color(0x33000000),
                          offset: Offset(0, 1),
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        width: 0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 4, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Change Password',
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: 852,
                    height: 60,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: Color(0x33000000),
                          offset: Offset(0, 1),
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        width: 0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 4, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Notification Settings',
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: 852,
                    height: 60,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: Color(0x33000000),
                          offset: Offset(0, 1),
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        width: 0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 4, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Terms of Services',
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 40),
                child: FFButtonWidget(
                  onPressed: () async {
                    GoRouter.of(context).prepareAuthEvent();
                    await authManager.signOut();
                    GoRouter.of(context).clearRedirectLocation();

                    context.goNamedAuth('login_page', context.mounted);
                  },
                  text: 'Log Out',
                  options: FFButtonOptions(
                    width: 110,
                    height: 50,
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    textStyle: FlutterFlowTheme.of(context).bodyLarge,
                    elevation: 3,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
