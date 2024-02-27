import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'shiplist_model.dart';
export 'shiplist_model.dart';

class ShiplistWidget extends StatefulWidget {
  const ShiplistWidget({
    super.key,
    String? shopimage,
    String? shopname,
    String? shopcategory,
  })  : this.shopimage = shopimage ?? '',
        this.shopname = shopname ?? 'Item Name',
        this.shopcategory = shopcategory ?? 'Category';

  final String shopimage;
  final String shopname;
  final String shopcategory;

  @override
  State<ShiplistWidget> createState() => _ShiplistWidgetState();
}

class _ShiplistWidgetState extends State<ShiplistWidget> {
  late ShiplistModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShiplistModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  widget.shopimage,
                  width: 862,
                  height: 230,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 4),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.shopname,
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: Color(0xFF15161E),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 4),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    widget.shopcategory,
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF606A85),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 4, 4, 0),
                  child: Text(
                    '4.25',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF606A85),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
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
    );
  }
}
