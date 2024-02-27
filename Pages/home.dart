import '/components/category_widget.dart';
import '/components/popular_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'home_page2_model.dart';
export 'home_page2_model.dart';

class HomePage2Widget extends StatefulWidget {
  const HomePage2Widget({super.key});

  @override
  State<HomePage2Widget> createState() => _HomePage2WidgetState();
}

class _HomePage2WidgetState extends State<HomePage2Widget>
    with TickerProviderStateMixin {
  late HomePage2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textFieldOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1, 1),
          end: Offset(1, 1),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(30, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 40),
          end: Offset(0, 0),
        ),
      ],
    ),
    'listViewOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 80),
          end: Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePage2Model());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  height: 500,
                  child: Stack(
                    alignment: AlignmentDirectional(0, -1),
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.05, -1),
                        child: Image.asset(
                          'assets/images/nahil-naseer-xljtGZ2-P3Y-unsplash_1.png',
                          width: double.infinity,
                          height: 500,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 500,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 100),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 20, 16, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.textController,
                                          focusNode: _model.textFieldFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textController',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Find Solution',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: Color(0xFF57636C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            hintText:
                                                'Plants, Seeds, Pesticide',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: Color(0xFF57636C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            prefixIcon: Icon(
                                              Icons.search,
                                              color: Color(0xFF14181B),
                                              size: 16,
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: Color(0xFF14181B),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          validator: _model
                                              .textControllerValidator
                                              .asValidator(context),
                                        ).animateOnPageLoad(animationsMap[
                                            'textFieldOnPageLoadAnimation']!),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      18, 32, 18, 32),
                                  child: Container(
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      height: 128,
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 24),
                                            child: PageView(
                                              controller:
                                                  _model.pageViewController ??=
                                                      PageController(
                                                          initialPage: 0),
                                              scrollDirection: Axis.horizontal,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  child: Image.network(
                                                    'https://picsum.photos/seed/131/600',
                                                    width: 300,
                                                    height: 200,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 0, 0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    child: Image.network(
                                                      'https://picsum.photos/seed/221/600',
                                                      width: 300,
                                                      height: 200,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 0, 0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    child: Image.network(
                                                      'https://picsum.photos/seed/616/600',
                                                      width: 300,
                                                      height: 200,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 1),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 0, 16),
                                              child: smooth_page_indicator
                                                  .SmoothPageIndicator(
                                                controller: _model
                                                        .pageViewController ??=
                                                    PageController(
                                                        initialPage: 0),
                                                count: 3,
                                                axisDirection: Axis.horizontal,
                                                onDotClicked: (i) async {
                                                  await _model
                                                      .pageViewController!
                                                      .animateToPage(
                                                    i,
                                                    duration: Duration(
                                                        milliseconds: 500),
                                                    curve: Curves.ease,
                                                  );
                                                },
                                                effect: smooth_page_indicator
                                                    .ExpandingDotsEffect(
                                                  expansionFactor: 2,
                                                  spacing: 8,
                                                  radius: 16,
                                                  dotWidth: 6,
                                                  dotHeight: 6,
                                                  dotColor: FlutterFlowTheme.of(
                                                          context)
                                                      .accent1,
                                                  activeDotColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  paintStyle:
                                                      PaintingStyle.fill,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 650,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 22),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Divider(
                                            height: 8,
                                            thickness: 4,
                                            indent: 140,
                                            endIndent: 140,
                                            color: Color(0xFFE0E3E7),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 16, 16, 0),
                                            child: Text(
                                              'Popular Plants',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFF14181B),
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ).animateOnPageLoad(animationsMap[
                                                'textOnPageLoadAnimation1']!),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 12, 0, 0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 210,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: ListView(
                                                padding: EdgeInsets.fromLTRB(
                                                  0,
                                                  0,
                                                  16,
                                                  0,
                                                ),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                children: [
                                                  wrapWithModel(
                                                    model: _model.popularModel1,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: PopularWidget(
                                                      productimage:
                                                          'https://images.unsplash.com/photo-1446292532430-3e76f6ab6444?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1864&q=80',
                                                      productname: 'Papaya',
                                                      productprice: '123.33',
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model.popularModel2,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: PopularWidget(
                                                      productimage:
                                                          'https://images.unsplash.com/photo-1446292532430-3e76f6ab6444?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1864&q=80',
                                                      productname: 'appapa',
                                                      productprice: '123.33',
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model.popularModel3,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: PopularWidget(
                                                      productimage:
                                                          'https://images.unsplash.com/photo-1446292532430-3e76f6ab6444?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1864&q=80',
                                                      productname: 'appapa',
                                                      productprice: '123.33',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 16, 16, 0),
                                            child: Text(
                                              'Environment Based',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFF14181B),
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ).animateOnPageLoad(animationsMap[
                                                'textOnPageLoadAnimation2']!),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 24),
                                            child: ListView(
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                wrapWithModel(
                                                  model: _model.categoryModel1,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: CategoryWidget(
                                                    catoimage:
                                                        'https://images.unsplash.com/photo-1446292532430-3e76f6ab6444?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1864&q=80',
                                                    catoname: 'Garden',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.categoryModel2,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: CategoryWidget(
                                                    catoimage:
                                                        'https://images.unsplash.com/photo-1446292532430-3e76f6ab6444?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1864&q=80',
                                                    catoname: 'Garden',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.categoryModel3,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: CategoryWidget(
                                                    catoimage:
                                                        'https://images.unsplash.com/photo-1446292532430-3e76f6ab6444?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1864&q=80',
                                                    catoname: 'Garden',
                                                  ),
                                                ),
                                              ],
                                            ).animateOnPageLoad(animationsMap[
                                                'listViewOnPageLoadAnimation']!),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
