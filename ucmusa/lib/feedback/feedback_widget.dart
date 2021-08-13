import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class FeedbackWidget extends StatefulWidget {
  FeedbackWidget({Key key}) : super(key: key);

  @override
  _FeedbackWidgetState createState() => _FeedbackWidgetState();
}

class _FeedbackWidgetState extends State<FeedbackWidget> {
  TextEditingController textController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.tertiaryColor,
          automaticallyImplyLeading: false,
          title: Text(
            'Feedback & Queries',
            style: FlutterFlowTheme.title1.override(
              fontFamily: 'Poppins',
            ),
          ),
          actions: [
            Align(
              alignment: Alignment(0, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavBarPage(initialPage: 'About'),
                      ),
                      (r) => false,
                    );
                  },
                  child: Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            )
          ],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                          child: Text(
                            'Got something to say? Let us know below:',
                            style: GoogleFonts.getFont(
                              'Open Sans',
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(4, 0, 0, 20),
                          child: Container(
                            width: 300,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Color(0xFFE0E0E0),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: TextFormField(
                                expands: true,
                                maxLines: null,
                                minLines: null,
                                controller: textController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Feedback or Query...',
                                  hintStyle: GoogleFonts.getFont(
                                    'Open Sans',
                                    color: Color(0xFF455A64),
                                    fontWeight: FontWeight.normal,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: GoogleFonts.getFont(
                                  'Open Sans',
                                  color: Color(0xFF455A64),
                                  fontWeight: FontWeight.normal,
                                ),
                                validator: (val) {
                                  if (val.length < 10) {
                                    return 'Please include at least 10 characters';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (!formKey.currentState.validate()) {
                                return;
                              }
                              final feedbackCreateData =
                                  createFeedbackRecordData(
                                message: textController.text,
                                time: getCurrentTimestamp,
                                email: currentUserEmail,
                              );
                              await FeedbackRecord.collection
                                  .doc()
                                  .set(feedbackCreateData);
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    content:
                                        Text('Thank you for your feedback!'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                              await Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      NavBarPage(initialPage: 'About'),
                                ),
                                (r) => false,
                              );
                            },
                            text: 'Send Feedback or Query',
                            options: FFButtonOptions(
                              width: 300,
                              height: 50,
                              color: Color(0xFF292C3B),
                              textStyle: GoogleFonts.getFont(
                                'Open Sans',
                                color: Color(0xFFDEDEDE),
                                fontSize: 16,
                              ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 0,
                              ),
                              borderRadius: 25,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 1, 10),
                            child: Text(
                              'Ask us on our social media!',
                              style: GoogleFonts.getFont(
                                'Open Sans',
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 130,
                            height: 38,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment(-0.7, -0.01),
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://facebookbrand.com/wp-content/uploads/2019/04/f_logo_RGB-Hex-Blue_512.png?w=512&h=512',
                                    ),
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    await launchURL(
                                        'https://www.facebook.com/media.ucmusa/');
                                  },
                                  text: 'Facebook',
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.transparent,
                                    size: 20,
                                  ),
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 38,
                                    color: Colors.transparent,
                                    textStyle: GoogleFonts.getFont(
                                      'Open Sans',
                                      color: Color(0xFF616161),
                                      fontSize: 14,
                                    ),
                                    borderSide: BorderSide(
                                      color: Color(0xFFAAAAAA),
                                      width: 0.5,
                                    ),
                                    borderRadius: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Container(
                              width: 130,
                              height: 38,
                              child: Stack(
                                alignment: Alignment(0, 0),
                                children: [
                                  Align(
                                    alignment: Alignment(-0.7, -0.01),
                                    child: Container(
                                      width: 18,
                                      height: 18,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        'assets/images/ig.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await launchURL(
                                          'https://www.instagram.com/media.ucmusa/?hl=en');
                                    },
                                    text: 'Instagram',
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.transparent,
                                      size: 20,
                                    ),
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 38,
                                      color: Colors.transparent,
                                      textStyle: GoogleFonts.getFont(
                                        'Open Sans',
                                        color: Color(0xFF616161),
                                        fontSize: 14,
                                      ),
                                      borderSide: BorderSide(
                                        color: Color(0xFFAAAAAA),
                                        width: 0.5,
                                      ),
                                      borderRadius: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
