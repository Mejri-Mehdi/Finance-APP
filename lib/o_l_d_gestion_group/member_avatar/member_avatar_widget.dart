import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'member_avatar_model.dart';
export 'member_avatar_model.dart';

class MemberAvatarWidget extends StatefulWidget {
  const MemberAvatarWidget({
    super.key,
    String? img,
    String? initials,
    String? name,
    bool? is_admin,
  })  : this.img = img ??
            'https://dimg.dreamflow.cloud/v1/image/young%20man%20smiling',
        this.initials = initials ?? 'ME',
        this.name = name ?? 'You',
        this.is_admin = is_admin ?? true;

  final String img;
  final String initials;
  final String name;
  final bool is_admin;

  @override
  State<MemberAvatarWidget> createState() => _MemberAvatarWidgetState();
}

class _MemberAvatarWidgetState extends State<MemberAvatarWidget> {
  late MemberAvatarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MemberAvatarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 56.0,
          height: 56.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9999.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: widget.is_admin
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).alternate,
              width: widget.is_admin ? 2.0 : 2.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(2.0),
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(26.0),
                child: CachedNetworkImage(
                  fadeInDuration: Duration(milliseconds: 0),
                  fadeOutDuration: Duration(milliseconds: 0),
                  imageUrl: valueOrDefault<String>(
                    widget.img,
                    'https://dimg.dreamflow.cloud/v1/image/young%20man%20smiling',
                  ),
                  width: 52.0,
                  height: 52.0,
                  fit: BoxFit.cover,
                  alignment: Alignment(0.0, 0.0),
                ),
              ),
            ),
          ),
        ),
        Text(
          valueOrDefault<String>(
            widget.name,
            'You',
          ),
          style: FlutterFlowTheme.of(context).labelSmall.override(
                font: GoogleFonts.outfit(
                  fontWeight:
                      FlutterFlowTheme.of(context).labelSmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                ),
                color: widget.is_admin
                    ? FlutterFlowTheme.of(context).primary
                    : FlutterFlowTheme.of(context).secondaryText,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).labelSmall.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                lineHeight: 1.27,
              ),
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
