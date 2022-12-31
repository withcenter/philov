import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatRoomEmptyWidget extends StatefulWidget {
  const ChatRoomEmptyWidget({Key? key}) : super(key: key);

  @override
  _ChatRoomEmptyWidgetState createState() => _ChatRoomEmptyWidgetState();
}

class _ChatRoomEmptyWidgetState extends State<ChatRoomEmptyWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Material(
        color: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 320,
          ),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(0),
            border: Border.all(
              color: Colors.transparent,
              width: 0,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.comments,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 90,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(32, 32, 32, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'j2f3davr' /* No messages. */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '8r7u2xrw' /* Send a chat message. */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).subtitle2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
