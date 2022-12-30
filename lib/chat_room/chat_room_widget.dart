import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatRoomWidget extends StatefulWidget {
  const ChatRoomWidget({
    Key? key,
    this.otherUserPublicDataDocument,
    this.chatRoomDocument,
  }) : super(key: key);

  final UsersPublicDataRecord? otherUserPublicDataDocument;
  final ChatRoomsRecord? chatRoomDocument;

  @override
  _ChatRoomWidgetState createState() => _ChatRoomWidgetState();
}

class _ChatRoomWidgetState extends State<ChatRoomWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          valueOrDefault<String>(
            widget.otherUserPublicDataDocument != null
                ? widget.otherUserPublicDataDocument!.displayName
                : widget.chatRoomDocument!.title,
            '...',
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: custom_widgets.ChatRoomMessages(
              width: double.infinity,
              height: double.infinity,
              otherUserPublicDataDocument: widget.otherUserPublicDataDocument,
              chatRoomDocument: widget.chatRoomDocument,
            ),
          ),
        ),
      ),
    );
  }
}
