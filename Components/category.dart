import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'category_model.dart';
export 'category_model.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({
    super.key,
    required this.catoimage,
    required this.catoname,
  });

  final String? catoimage;
  final String? catoname;

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  late CategoryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
      child: Container(
        width: 270,
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
            Hero(
              tag: widget.catoimage!,
              transitionOnUserGestures: true,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Image.network(
                  widget.catoimage!,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.catoname!,
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF14181B),
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 32,
                    decoration: BoxDecoration(
                      color: Color(0xFF14181B),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: AlignmentDirectional(0, 0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
