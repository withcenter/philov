import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class SmsVerificationWidget extends StatefulWidget {
  const SmsVerificationWidget({Key? key}) : super(key: key);

  @override
  _SmsVerificationWidgetState createState() => _SmsVerificationWidgetState();
}

class _SmsVerificationWidgetState extends State<SmsVerificationWidget> {
  TextEditingController? pinCodeController;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      GoRouter.of(context).prepareAuthEvent();
      final smsCodeVal = pinCodeController!.text;
      if (smsCodeVal == null || smsCodeVal.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(FFLocalizations.of(context).getText(
              'll98wnua' /* Enter SMS verification code. */,
            )),
          ),
        );
        return;
      }
      final phoneVerifiedUser = await verifySmsCode(
        context: context,
        smsCode: smsCodeVal,
      );
      if (phoneVerifiedUser == null) {
        return;
      }

      context.goNamedAuth('Home', mounted);
    });

    pinCodeController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    pinCodeController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          FFLocalizations.of(context).getText(
            'kw8rchyl' /* SMS Verification */,
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    '4gszsorg' /* Input SMS code. */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
                PinCodeTextField(
                  appContext: context,
                  length: 6,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  enableActiveFill: true,
                  autoFocus: true,
                  showCursor: true,
                  cursorColor: FlutterFlowTheme.of(context).primaryColor,
                  obscureText: false,
                  hintCharacter: '●',
                  pinTheme: PinTheme(
                    fieldHeight: 54,
                    fieldWidth: 54,
                    borderWidth: 2,
                    borderRadius: BorderRadius.circular(12),
                    shape: PinCodeFieldShape.box,
                    activeColor: Color(0x3339D2C0),
                    inactiveColor: Color(0x3457636C),
                    selectedColor: FlutterFlowTheme.of(context).secondaryText,
                    activeFillColor: Color(0x3339D2C0),
                    inactiveFillColor: Color(0x3457636C),
                    selectedFillColor:
                        FlutterFlowTheme.of(context).secondaryText,
                  ),
                  controller: pinCodeController,
                  onChanged: (_) => {},
                  onCompleted: (_) async {
                    GoRouter.of(context).prepareAuthEvent();
                    final smsCodeVal = pinCodeController!.text;
                    if (smsCodeVal == null || smsCodeVal.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(FFLocalizations.of(context).getText(
                            'll98wnua' /* Enter SMS verification code. */,
                          )),
                        ),
                      );
                      return;
                    }
                    final phoneVerifiedUser = await verifySmsCode(
                      context: context,
                      smsCode: smsCodeVal,
                    );
                    if (phoneVerifiedUser == null) {
                      return;
                    }

                    context.goNamedAuth('Home', mounted);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
