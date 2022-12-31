import '../backend/backend.dart';
import '../components/chat_message_menu_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatMyMessageWidget extends StatefulWidget {
  const ChatMyMessageWidget({
    Key? key,
    this.chatRoomMessageDocument,
  }) : super(key: key);

  final ChatRoomMessagesRecord? chatRoomMessageDocument;

  @override
  _ChatMyMessageWidgetState createState() => _ChatMyMessageWidgetState();
}

class _ChatMyMessageWidgetState extends State<ChatMyMessageWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.of(context).viewInsets,
                      child: ChatMessageMenuWidget(
                        chatRoomMessageDocument: widget.chatRoomMessageDocument,
                      ),
                    );
                  },
                ).then((value) => setState(() {}));
              },
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.7,
                ),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (widget.chatRoomMessageDocument!.photoUrl != null &&
                        widget.chatRoomMessageDocument!.photoUrl != '')
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 3),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16),
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(0),
                              ),
                              child: CachedNetworkImage(
                                imageUrl: valueOrDefault<String>(
                                  widget.chatRoomMessageDocument!.photoUrl,
                                  'https://picsum.photos/seed/636/600',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              dateTimeFormat(
                                'M/d H:mm',
                                widget.chatRoomMessageDocument!.sentAt!,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 3),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0x67FFD095),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              if (widget.chatRoomMessageDocument!.text !=
                                      null &&
                                  widget.chatRoomMessageDocument!.text != '')
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Text(
                                    widget.chatRoomMessageDocument!.text!,
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                              Text(
                                dateTimeFormat(
                                  'M/d H:mm',
                                  widget.chatRoomMessageDocument!.sentAt!,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
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
    );
  }
}
