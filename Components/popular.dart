import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'popular_model.dart';
export 'popular_model.dart';

class PopularWidget extends StatefulWidget {
  const PopularWidget({
    super.key,
    required this.productimage,
    required this.productname,
    required this.productprice,
  });

  final String? productimage;
  final String? productname;
  final String? productprice;

  @override
  State<PopularWidget> createState() => _PopularWidgetState();
}

class _PopularWidgetState extends State<PopularWidget>
    with TickerProviderStateMixin {
  late PopularModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
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
          begin: Offset(60, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopularModel());

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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 12),
      child: Container(
        width: 270,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              color: Color(0x230F1113),
              offset: Offset(0, 4),
            )
          ],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Color(0xFFF1F4F8),
            width: 1,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: Image.network(
                widget.productimage!,
                width: double.infinity,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.productname!,
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF14181B),
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            RatingBarIndicator(
                              itemBuilder: (context, index) => Icon(
                                Icons.radio_button_checked_rounded,
                                color: Color(0xFF14181B),
                              ),
                              direction: Axis.horizontal,
                              rating: 4,
                              unratedColor: Color(0xFF57636C),
                              itemCount: 5,
                              itemSize: 16,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Text(
                                '4.7',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFF14181B),
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 32,
                    decoration: BoxDecoration(
                      color: Color(0xFF14181B),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                      child: Text(
                        widget.productprice!,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
