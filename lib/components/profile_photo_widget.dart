import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfilePhotoWidget extends StatefulWidget {
  const ProfilePhotoWidget({
    Key? key,
    this.width,
    this.height,
    this.userPublicDataDocument,
  }) : super(key: key);

  final double? width;
  final double? height;
  final UsersPublicDataRecord? userPublicDataDocument;

  @override
  _ProfilePhotoWidgetState createState() => _ProfilePhotoWidgetState();
}

class _ProfilePhotoWidgetState extends State<ProfilePhotoWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.network(
        widget.userPublicDataDocument!.photoUrl != null &&
                widget.userPublicDataDocument!.photoUrl != ''
            ? valueOrDefault<String>(
                widget.userPublicDataDocument!.photoUrl,
                'https://picsum.photos/seed/100/600',
              )
            : valueOrDefault<String>(
                widget.userPublicDataDocument!.gender == 'F'
                    ? FFAppState().anonymousFemaleUrl
                    : FFAppState().anonymousMaleUrl,
                'https://picsum.photos/seed/100/600',
              ),
        width: widget.width,
        height: widget.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
