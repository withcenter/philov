import '../auth/auth_util.dart';
import '../auth/firebase_user_provider.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              FFLocalizations.of(context).getText(
                'u4s3i1gm' /* Logged in?  */,
              ),
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
            Text(
              loggedIn ? 'Yes' : 'No',
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ],
        ),
        if (loggedIn)
          StreamBuilder<List<UsersPublicDataRecord>>(
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
              List<UsersPublicDataRecord> columnUsersPublicDataRecordList =
                  snapshot.data!;
              // Return an empty Container when the item does not exist.
              if (snapshot.data!.isEmpty) {
                return Container();
              }
              final columnUsersPublicDataRecord =
                  columnUsersPublicDataRecordList.isNotEmpty
                      ? columnUsersPublicDataRecordList.first
                      : null;
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    columnUsersPublicDataRecord!.displayName!,
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  Text(
                    currentUserUid,
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ],
              );
            },
          ),
        FFButtonWidget(
          onPressed: () async {
            context.pushNamed('Login');
          },
          text: FFLocalizations.of(context).getText(
            'h47rmugw' /* Register */,
          ),
          options: FFButtonOptions(
            width: 130,
            height: 40,
            color: FlutterFlowTheme.of(context).primaryColor,
            textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
        FFButtonWidget(
          onPressed: () async {
            GoRouter.of(context).prepareAuthEvent();
            await signOut();

            context.goNamedAuth('Entry', mounted);
          },
          text: FFLocalizations.of(context).getText(
            '89czqcbo' /* Logout */,
          ),
          options: FFButtonOptions(
            width: 130,
            height: 40,
            color: FlutterFlowTheme.of(context).primaryColor,
            textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
        FFButtonWidget(
          onPressed: () async {
            context.pushNamed('UserSearch');
          },
          text: FFLocalizations.of(context).getText(
            'l0ejydpc' /* User List */,
          ),
          options: FFButtonOptions(
            width: 130,
            height: 40,
            color: FlutterFlowTheme.of(context).primaryColor,
            textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
        FFButtonWidget(
          onPressed: () async {
            context.pushNamed('Profile');
          },
          text: FFLocalizations.of(context).getText(
            '1neh66ue' /* Profile */,
          ),
          options: FFButtonOptions(
            width: 130,
            height: 40,
            color: FlutterFlowTheme.of(context).primaryColor,
            textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
        FFButtonWidget(
          onPressed: () async {
            context.pushNamed('Chat');
          },
          text: FFLocalizations.of(context).getText(
            'vt0u7plg' /* Chat */,
          ),
          options: FFButtonOptions(
            width: 130,
            height: 40,
            color: FlutterFlowTheme.of(context).primaryColor,
            textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
      ],
    );
  }
}
