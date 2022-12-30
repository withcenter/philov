import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  bool isMediaUploading1 = false;
  String uploadedFileUrl1 = '';

  bool isMediaUploading2 = false;
  String uploadedFileUrl2 = '';

  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String? genderValue;
  TextEditingController? displayNameController;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    displayNameController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(400),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          iconTheme: IconThemeData(color: Colors.white),
          automaticallyImplyLeading: true,
          title: StreamBuilder<List<UsersPublicDataRecord>>(
            stream: queryUsersPublicDataRecord(
              queryBuilder: (usersPublicDataRecord) =>
                  usersPublicDataRecord.where('userDocumentReference',
                      isEqualTo: currentUserReference),
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
                      color: FlutterFlowTheme.of(context).primaryColor,
                    ),
                  ),
                );
              }
              List<UsersPublicDataRecord> getUserUsersPublicDataRecordList =
                  snapshot.data!;
              // Return an empty Container when the item does not exist.
              if (snapshot.data!.isEmpty) {
                return Container();
              }
              final getUserUsersPublicDataRecord =
                  getUserUsersPublicDataRecordList.isNotEmpty
                      ? getUserUsersPublicDataRecordList.first
                      : null;
              return Text(
                getUserUsersPublicDataRecord!.displayName!,
                style: FlutterFlowTheme.of(context).title2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 22,
                    ),
              );
            },
          ),
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            background: StreamBuilder<List<UsersPublicDataRecord>>(
              stream: queryUsersPublicDataRecord(
                queryBuilder: (usersPublicDataRecord) =>
                    usersPublicDataRecord.where('userDocumentReference',
                        isEqualTo: currentUserReference),
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
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  );
                }
                List<UsersPublicDataRecord>
                    coverPhotoGetUserUsersPublicDataRecordList = snapshot.data!;
                // Return an empty Container when the item does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final coverPhotoGetUserUsersPublicDataRecord =
                    coverPhotoGetUserUsersPublicDataRecordList.isNotEmpty
                        ? coverPhotoGetUserUsersPublicDataRecordList.first
                        : null;
                return Image.network(
                  valueOrDefault<String>(
                    coverPhotoGetUserUsersPublicDataRecord!.coverPhotoUrl,
                    'https://picsum.photos/id/115/600',
                  ),
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(140),
            child: StreamBuilder<List<UsersPublicDataRecord>>(
              stream: queryUsersPublicDataRecord(
                queryBuilder: (usersPublicDataRecord) =>
                    usersPublicDataRecord.where('userDocumentReference',
                        isEqualTo: currentUserReference),
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
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  );
                }
                List<UsersPublicDataRecord>
                    stackGetUserUsersPublicDataRecordList = snapshot.data!;
                // Return an empty Container when the item does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final stackGetUserUsersPublicDataRecord =
                    stackGetUserUsersPublicDataRecordList.isNotEmpty
                        ? stackGetUserUsersPublicDataRecordList.first
                        : null;
                return Container(
                  width: double.infinity,
                  height: 140,
                  child: Stack(
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.transparent, Colors.black],
                              stops: [0, 1],
                              begin: AlignmentDirectional(0, -1),
                              end: AlignmentDirectional(0, 1),
                            ),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 0,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 1.1),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Container(
                            width: double.infinity,
                            height: 68,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              border: Border.all(
                                color: Colors.transparent,
                                width: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: InkWell(
                          onTap: () async {
                            final selectedMedia =
                                await selectMediaWithSourceBottomSheet(
                              context: context,
                              maxWidth: 360.00,
                              maxHeight: 360.00,
                              imageQuality: 100,
                              allowPhoto: true,
                            );
                            if (selectedMedia != null &&
                                selectedMedia.every((m) => validateFileFormat(
                                    m.storagePath, context))) {
                              setState(() => isMediaUploading1 = true);
                              var downloadUrls = <String>[];
                              try {
                                showUploadMessage(
                                  context,
                                  'Uploading file...',
                                  showLoading: true,
                                );
                                downloadUrls = (await Future.wait(
                                  selectedMedia.map(
                                    (m) async => await uploadData(
                                        m.storagePath, m.bytes),
                                  ),
                                ))
                                    .where((u) => u != null)
                                    .map((u) => u!)
                                    .toList();
                              } finally {
                                ScaffoldMessenger.of(context)
                                    .hideCurrentSnackBar();
                                isMediaUploading1 = false;
                              }
                              if (downloadUrls.length == selectedMedia.length) {
                                setState(() =>
                                    uploadedFileUrl1 = downloadUrls.first);
                                showUploadMessage(context, 'Success!');
                              } else {
                                setState(() {});
                                showUploadMessage(
                                    context, 'Failed to upload media');
                                return;
                              }
                            }

                            await actions.afterProfilePhotoUpload(
                              uploadedFileUrl1,
                            );
                          },
                          child: Container(
                            width: 140,
                            height: 140,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(70),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      stackGetUserUsersPublicDataRecord!
                                          .photoUrl,
                                      'https://picsum.photos/seed/997/600',
                                    ),
                                    width: 140,
                                    height: 140,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1, 1),
                                  child: Icon(
                                    Icons.photo_camera,
                                    color: Colors.black,
                                    size: 32,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(1, -0.7),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () async {
                            final selectedMedia =
                                await selectMediaWithSourceBottomSheet(
                              context: context,
                              maxWidth: 700.00,
                              maxHeight: 1200.00,
                              allowPhoto: true,
                            );
                            if (selectedMedia != null &&
                                selectedMedia.every((m) => validateFileFormat(
                                    m.storagePath, context))) {
                              setState(() => isMediaUploading2 = true);
                              var downloadUrls = <String>[];
                              try {
                                downloadUrls = (await Future.wait(
                                  selectedMedia.map(
                                    (m) async => await uploadData(
                                        m.storagePath, m.bytes),
                                  ),
                                ))
                                    .where((u) => u != null)
                                    .map((u) => u!)
                                    .toList();
                              } finally {
                                isMediaUploading2 = false;
                              }
                              if (downloadUrls.length == selectedMedia.length) {
                                setState(() =>
                                    uploadedFileUrl2 = downloadUrls.first);
                              } else {
                                setState(() {});
                                return;
                              }
                            }

                            await actions.afterCoverPhotoUpload(
                              uploadedFileUrl2,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          centerTitle: false,
          elevation: 0,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 36, 24, 0),
            child: FutureBuilder<List<UsersPublicDataRecord>>(
              future: queryUsersPublicDataRecordOnce(
                queryBuilder: (usersPublicDataRecord) =>
                    usersPublicDataRecord.where('userDocumentReference',
                        isEqualTo: currentUserReference),
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
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  );
                }
                List<UsersPublicDataRecord>
                    listViewGetUserUsersPublicDataRecordList = snapshot.data!;
                // Return an empty Container when the item does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final listViewGetUserUsersPublicDataRecord =
                    listViewGetUserUsersPublicDataRecordList.isNotEmpty
                        ? listViewGetUserUsersPublicDataRecordList.first
                        : null;
                return ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                              child: SelectionArea(
                                  child: Text(
                                FFLocalizations.of(context).getText(
                                  'a812b9l5' /* Input name. */,
                                ),
                                style: FlutterFlowTheme.of(context).subtitle2,
                              )),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                              child: TextFormField(
                                controller: displayNameController ??=
                                    TextEditingController(
                                  text: listViewGetUserUsersPublicDataRecord!
                                      .displayName,
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'j6hvf1gz' /* Name */,
                                  ),
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFE2E2E3),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFE2E2E3),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '52buidnl' /* Select gender. */,
                                ),
                                style: FlutterFlowTheme.of(context).subtitle2,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: FlutterFlowDropDown<String>(
                                initialOption: genderValue ??=
                                    listViewGetUserUsersPublicDataRecord!
                                        .gender,
                                options: ['M', 'F'],
                                optionLabels: [
                                  FFLocalizations.of(context).getText(
                                    '8wle9o9h' /* Male */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    '5j3tk4id' /* Female */,
                                  )
                                ],
                                onChanged: (val) =>
                                    setState(() => genderValue = val),
                                width: double.infinity,
                                height: 50,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  'i0t6x9mz' /* gender */,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2,
                                borderColor: Color(0x4C57636C),
                                borderWidth: 1,
                                borderRadius: 8,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 4),
                                hidesUnderline: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          final usersPublicDataUpdateData =
                              createUsersPublicDataRecordData(
                            displayName: displayNameController?.text ?? '',
                            gender: genderValue,
                          );
                          await listViewGetUserUsersPublicDataRecord!.reference
                              .update(usersPublicDataUpdateData);
                        },
                        text: FFLocalizations.of(context).getText(
                          '3qylmpep' /* Update profile */,
                        ),
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
