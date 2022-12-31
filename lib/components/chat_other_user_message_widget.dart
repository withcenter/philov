import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatOtherUserMessageWidget extends StatefulWidget {
  const ChatOtherUserMessageWidget({
    Key? key,
    this.chatRoomDocument,
    this.chatRoomMessageDocument,
  }) : super(key: key);

  final ChatRoomsRecord? chatRoomDocument;
  final ChatRoomMessagesRecord? chatRoomMessageDocument;

  @override
  _ChatOtherUserMessageWidgetState createState() =>
      _ChatOtherUserMessageWidgetState();
}

class _ChatOtherUserMessageWidgetState
    extends State<ChatOtherUserMessageWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.network(
              'https://picsum.photos/seed/410/600',
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8, 3, 0, 3),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.75,
            ),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(6, 3, 0, 3),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.chatRoomMessageDocument!.photoUrl != null &&
                      widget.chatRoomMessageDocument!.photoUrl != '')
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(16),
                          ),
                          child: CachedNetworkImage(
                            imageUrl: valueOrDefault<String>(
                              widget.chatRoomMessageDocument!.photoUrl,
                              'https://i.picsum.photos/id/402/400/400.jpg?hmac=JLZGmOdZkhGgmJC_G5nUbvSoohKjlMexKLpslddbNq8',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          dateTimeFormat(
                            'relative',
                            widget.chatRoomMessageDocument!.sentAt!,
                            locale: FFLocalizations.of(context).languageCode,
                          ),
                          style:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                  ),
                        ),
                      ],
                    ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0x98E2E4E8),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (widget.chatRoomMessageDocument!.text != null &&
                              widget.chatRoomMessageDocument!.text != '')
                            SelectionArea(
                                child: Text(
                              widget.chatRoomMessageDocument!.text!,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                  ),
                            )),
                          Text(
                            dateTimeFormat(
                              'relative',
                              widget.chatRoomMessageDocument!.sentAt!,
                              locale: FFLocalizations.of(context).languageCode,
                            ),
                            style:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
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
        ),
      ],
    );
  }
}
