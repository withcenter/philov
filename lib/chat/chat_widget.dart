import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/profile_photo_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  _ChatWidgetState createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
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
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          FFLocalizations.of(context).getText(
            'a2zza5od' /* Chat */,
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
          child: StreamBuilder<List<ChatRoomsRecord>>(
            stream: queryChatRoomsRecord(
              queryBuilder: (chatRoomsRecord) => chatRoomsRecord
                  .where('userDocumentReferences',
                      arrayContains: currentUserReference)
                  .orderBy('lastMessageSentAt', descending: true),
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      color: FlutterFlowTheme.of(context).primaryColor,
                    ),
                  ),
                );
              }
              List<ChatRoomsRecord> listViewGetChatRoomsChatRoomsRecordList =
                  snapshot.data!;
              return ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: listViewGetChatRoomsChatRoomsRecordList.length,
                itemBuilder: (context, listViewGetChatRoomsIndex) {
                  final listViewGetChatRoomsChatRoomsRecord =
                      listViewGetChatRoomsChatRoomsRecordList[
                          listViewGetChatRoomsIndex];
                  return Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (listViewGetChatRoomsChatRoomsRecord
                                  .moderatorUserDocumentReference ==
                              null)
                            StreamBuilder<List<UsersPublicDataRecord>>(
                              stream: queryUsersPublicDataRecord(
                                queryBuilder: (usersPublicDataRecord) =>
                                    usersPublicDataRecord.where(
                                        'userDocumentReference',
                                        isEqualTo:
                                            listViewGetChatRoomsChatRoomsRecord
                                                .lastMessageSentBy),
                                singleRecord: true,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                List<UsersPublicDataRecord>
                                    singleChatUsersPublicDataRecordList =
                                    snapshot.data!;
                                // Return an empty Container when the item does not exist.
                                if (snapshot.data!.isEmpty) {
                                  return Container();
                                }
                                final singleChatUsersPublicDataRecord =
                                    singleChatUsersPublicDataRecordList
                                            .isNotEmpty
                                        ? singleChatUsersPublicDataRecordList
                                            .first
                                        : null;
                                return InkWell(
                                  onTap: () async {
                                    context.pushNamed(
                                      'ChatRoom',
                                      queryParams: {
                                        'otherUserPublicDataDocument':
                                            serializeParam(
                                          singleChatUsersPublicDataRecord,
                                          ParamType.Document,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        'otherUserPublicDataDocument':
                                            singleChatUsersPublicDataRecord,
                                      },
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ProfilePhotoWidget(
                                          key: UniqueKey(),
                                          width: 54.0,
                                          height: 54.0,
                                          userPublicDataDocument:
                                              singleChatUsersPublicDataRecord,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 16, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  singleChatUsersPublicDataRecord!
                                                      .displayName!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText2,
                                                ),
                                                Text(
                                                  listViewGetChatRoomsChatRoomsRecord
                                                      .lastMessage!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle2,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              dateTimeFormat(
                                                'relative',
                                                listViewGetChatRoomsChatRoomsRecord
                                                    .lastMessageSentAt!,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2,
                                            ),
                                            Container(
                                              width: 4,
                                              height: 4,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'lzeerkgp' /* Group Chat */,
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
