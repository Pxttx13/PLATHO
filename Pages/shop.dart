import '/components/shiplist_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'shop_page_model.dart';
export 'shop_page_model.dart';

class ShopPageWidget extends StatefulWidget {
  const ShopPageWidget({super.key});

  @override
  State<ShopPageWidget> createState() => _ShopPageWidgetState();
}

class _ShopPageWidgetState extends State<ShopPageWidget>
    with TickerProviderStateMixin {
  late ShopPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShopPageModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    _model.tabbarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x33000000),
                        offset: Offset(0, 1),
                      )
                    ],
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      color: Color(0xFFE5E7EB),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 12, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.search_rounded,
                          color: Color(0xFF606A85),
                          size: 24,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                            child: Container(
                              width: 200,
                              child: TextFormField(
                                controller: _model.textController,
                                focusNode: _model.textFieldFocusNode,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Search listings...',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF606A85),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF606A85),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFF15161E),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                cursorColor: Color(0xFF6F61EF),
                                validator: _model.textControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Color(0xFFE5E7EB),
                          borderRadius: 20,
                          borderWidth: 1,
                          buttonSize: 40,
                          fillColor: Colors.white,
                          icon: Icon(
                            Icons.tune_rounded,
                            color: Color(0xFF15161E),
                            size: 24,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment(0, 0),
                      child: FlutterFlowButtonTabBar(
                        useToggleButtonStyle: false,
                        isScrollable: true,
                        labelStyle:
                            FlutterFlowTheme.of(context).labelSmall.override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF606A85),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                        unselectedLabelStyle: TextStyle(),
                        labelColor: Color(0xFF15161E),
                        unselectedLabelColor: Color(0xFF606A85),
                        backgroundColor: Color(0x4D9489F5),
                        unselectedBackgroundColor: Color(0xFFE5E7EB),
                        borderColor: Color(0xFF6F61EF),
                        unselectedBorderColor: Color(0xFFE5E7EB),
                        borderWidth: 2,
                        borderRadius: 25,
                        elevation: 0,
                        labelPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        buttonMargin:
                            EdgeInsetsDirectional.fromSTEB(8, 6, 8, 0),
                        padding: EdgeInsets.all(4),
                        tabs: [
                          Tab(
                            text: '#Plants',
                          ),
                          Tab(
                            text: '#Seeds',
                          ),
                          Tab(
                            text: '#Pots & Planters',
                          ),
                          Tab(
                            text: '#Pesticides',
                          ),
                        ],
                        controller: _model.tabbarController,
                        onTap: (i) async {
                          [
                            () async {},
                            () async {},
                            () async {},
                            () async {}
                          ][i]();
                        },
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabbarController,
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Container(
                                      width: 862,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: wrapWithModel(
                                        model: _model.shiplistModel,
                                        updateCallback: () => setState(() {}),
                                        updateOnChange: true,
                                        child: ShiplistWidget(
                                          shopname: 'Flowering',
                                          shopcategory: 'Easy care, Non-Toxic',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      constraints: BoxConstraints(
                                        maxWidth: 570,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 12),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 8, 16, 12),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.network(
                                                  'https://images.unsplash.com/photo-1446292532430-3e76f6ab6444?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fExvdyUyMG1haW50YW5jZSUyMHBsYW50c3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                                                  width: double.infinity,
                                                  height: 230,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Low Maintainence \nPlants',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF15161E),
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Easy care, Non-Toxic',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 4, 4, 0),
                                                    child: Text(
                                                      '4.25',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFF606A85),
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 12),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 8, 16, 12),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.network(
                                                  'https://plus.unsplash.com/premium_photo-1670344891799-c40f8a0b449e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YWlyJTIwcHVyaWZ5aW5nJTIwcGxhbnRzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
                                                  width: double.infinity,
                                                  height: 230,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Air Purifying \nPlants',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF15161E),
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Easy care, Non-Toxic',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 4, 4, 0),
                                                    child: Text(
                                                      '4.25',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFF606A85),
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 12),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 8, 16, 12),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.network(
                                                  'https://images.unsplash.com/photo-1540420828642-fca2c5c18abe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fE1lZGljaW5hbCUyMHBsYW50c3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                                                  width: double.infinity,
                                                  height: 230,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Medicinal & Aromatic\nPlants',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF15161E),
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Easy care, Non-Toxic',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 4, 4, 0),
                                                    child: Text(
                                                      '4.25',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFF606A85),
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 12),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 8, 16, 12),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.network(
                                                  'https://images.unsplash.com/photo-1551893133-a7c2b58f59b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aGFuZ2luZyUyMHBsYW50c3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                                                  width: double.infinity,
                                                  height: 230,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Hanging Plants',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF15161E),
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Easy care, Non-Toxic',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 4, 4, 0),
                                                    child: Text(
                                                      '4.25',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFF606A85),
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 12),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 8, 16, 12),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.network(
                                                  'https://media.istockphoto.com/id/1280856062/photo/variety-of-fresh-organic-vegetables-and-fruits-in-the-garden.jpg?s=1024x1024&w=is&k=20&c=ZJyLIXEa10DQTtvH8vVLQh3ZDqxmt4soKhPRaQE23k8=',
                                                  width: double.infinity,
                                                  height: 230,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Fruits Plants',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF15161E),
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Easy care, Non-Toxic',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 4, 4, 0),
                                                    child: Text(
                                                      '4.25',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFF606A85),
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 100),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 12),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 8, 16, 12),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                  child: Image.network(
                                                    'https://images.unsplash.com/photo-1519289776718-d7becf12a9f0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fENhY3RpJTIwJTI2JTIwU3VjY3VsZW50cyUyMFBsYW50c3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                                                    width: double.infinity,
                                                    height: 230,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 0, 16, 4),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Cacti & Succulents\nPlants',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            color: Color(
                                                                0xFF15161E),
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 0, 16, 4),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Easy care, Non-Toxic',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: Color(
                                                                      0xFF606A85),
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16, 4, 4, 0),
                                                      child: Text(
                                                        '4.25',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: Color(
                                                                      0xFF606A85),
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.star_rounded,
                                                      color: Color(0xFF606A85),
                                                      size: 24,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 12),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 8, 16, 12),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.network(
                                                  'https://plus.unsplash.com/premium_photo-1678652879090-316f6298e9e7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGZsb3dlciUyMHBsYW50JTIwc2VlZHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
                                                  width: double.infinity,
                                                  height: 230,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Flower Seeds',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF15161E),
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Easy care, Non-Toxic',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 4, 4, 0),
                                                    child: Text(
                                                      '4.25',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFF606A85),
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 12),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 8, 16, 12),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.network(
                                                  'https://images.unsplash.com/photo-1587930812660-7580b333fc6e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHZlZ2V0YWJsZXMlMjBzZWVkc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                                                  width: double.infinity,
                                                  height: 230,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Vegetable Seeds',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF15161E),
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Easy care, Non-Toxic',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 4, 4, 0),
                                                    child: Text(
                                                      '4.25',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFF606A85),
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 12),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 8, 16, 12),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.network(
                                                  'https://images.unsplash.com/photo-1653654630422-c9dd3a2ca659?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bWljcm9ncmVlbiUyMHBsYW50c3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                                                  width: double.infinity,
                                                  height: 230,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Microgreen Seeds',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF15161E),
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Easy care, Non-Toxic',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 4, 4, 0),
                                                    child: Text(
                                                      '4.25',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFF606A85),
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 12),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 8, 16, 12),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.network(
                                                  'https://images.unsplash.com/photo-1592285091448-92a1a9cfced1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjF8fGhlcmJzJTIwc2VlZHMlMjBwbGFudHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
                                                  width: double.infinity,
                                                  height: 230,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Herb Seeds',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF15161E),
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Easy care, Non-Toxic',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 4, 4, 0),
                                                    child: Text(
                                                      '4.25',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFF606A85),
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 12),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 8, 16, 12),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.network(
                                                  'https://plus.unsplash.com/premium_photo-1678371210267-44e0aeee4b72?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzF8fGhlcmJzJTIwc2VlZHMlMjBwbGFudHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
                                                  width: double.infinity,
                                                  height: 230,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Fruit Seeds',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF15161E),
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Easy care, Non-Toxic',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 4, 4, 0),
                                                    child: Text(
                                                      '4.25',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFF606A85),
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 100),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 12),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 8, 16, 12),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                  child: Image.network(
                                                    'https://images.unsplash.com/photo-1628516516924-d07a5ffb8573?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Z3Jhc3MlMjBzZWVkc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                                                    width: double.infinity,
                                                    height: 230,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 0, 16, 4),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Tree & Grass Seeds',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            color: Color(
                                                                0xFF15161E),
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 0, 16, 4),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Easy care, Non-Toxic',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: Color(
                                                                      0xFF606A85),
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16, 4, 4, 0),
                                                      child: Text(
                                                        '4.25',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: Color(
                                                                      0xFF606A85),
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.star_rounded,
                                                      color: Color(0xFF606A85),
                                                      size: 24,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 12),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 8, 16, 12),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.network(
                                                  'https://plus.unsplash.com/premium_photo-1673468196475-6ff05c0d2910?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGxhc3RpYyUyMHBvdHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
                                                  width: double.infinity,
                                                  height: 230,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Plastic Pots',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF15161E),
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Easy care, Non-Toxic',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 4, 4, 0),
                                                    child: Text(
                                                      '4.25',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFF606A85),
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 12),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 8, 16, 12),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.network(
                                                  'https://plus.unsplash.com/premium_photo-1681751857902-3cc26dbbbf4a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Y2VyYW1pYyUyMHBvdHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
                                                  width: double.infinity,
                                                  height: 230,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Ceramic pots',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF15161E),
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Easy care, Non-Toxic',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 4, 4, 0),
                                                    child: Text(
                                                      '4.25',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFF606A85),
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 12),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 8, 16, 12),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.network(
                                                  'https://www.ugaoo.com/cdn/shop/products/dove-with-plant.png?v=1661278971&width=375',
                                                  width: double.infinity,
                                                  height: 230,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Metal Planters',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF15161E),
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Easy care, Non-Toxic',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 4, 4, 0),
                                                    child: Text(
                                                      '4.25',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFF606A85),
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 12),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 8, 16, 12),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.network(
                                                  'https://www.ugaoo.com/cdn/shop/products/new-planter-10-with-plant.png?v=1661283242&width=375',
                                                  width: double.infinity,
                                                  height: 230,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Hanging Planters',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF15161E),
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Easy care, Non-Toxic',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 4, 4, 0),
                                                    child: Text(
                                                      '4.25',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFF606A85),
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 100),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 12),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 8, 16, 12),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                  child: Image.network(
                                                    'https://www.ugaoo.com/cdn/shop/products/reusable-50-holes-seedling-tray-set-of-3-31256328175748.png?v=1675613697&width=375',
                                                    width: double.infinity,
                                                    height: 230,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 0, 16, 4),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Seedling Trays',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            color: Color(
                                                                0xFF15161E),
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 0, 16, 4),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Easy care, Non-Toxic',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: Color(
                                                                      0xFF606A85),
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16, 4, 4, 0),
                                                      child: Text(
                                                        '4.25',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: Color(
                                                                      0xFF606A85),
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.star_rounded,
                                                      color: Color(0xFF606A85),
                                                      size: 24,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Tab View 4',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 32,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
