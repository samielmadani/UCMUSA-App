import '../feedback/feedback_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class AboutWidget extends StatefulWidget {
  AboutWidget({Key key}) : super(key: key);

  @override
  _AboutWidgetState createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'About Us',
          style: FlutterFlowTheme.title1.override(
            fontFamily: 'Poppins',
          ),
        ),
        actions: [
          Image.asset(
            'assets/images/Cropped Logo-1.png',
            width: 100,
            height: 100,
            fit: BoxFit.fitHeight,
          )
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Color(0xFFEAF9EE),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Text(
                    'UCMUSA is the University of Canterbury Muslim Students association club that welcomes all local and international students. We have events planned already for the entire year. Our events range from sports events to Islamic workshops. From boys/girls trips to social community events. We always ensure that all of our members and attendees feel welcome and have the best time at all our events!',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 2),
                  child: InkWell(
                    onTap: () async {
                      await launchURL(
                          'https://ucsa.org.nz/find-a-club/university-of-canterbury-muslim-student-association-ucmusa/');
                    },
                    child: Text(
                      'Find us on the UCSA website \n PRESS HERE',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 12, 0, 12),
                          child: Text(
                            'Contact Us',
                            style: FlutterFlowTheme.subtitle1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: FlutterFlowTheme.tertiaryColor,
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(12, 4, 12, 4),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 4, 0, 0),
                                          child: Text(
                                            'Feedback & Queries',
                                            style: FlutterFlowTheme.bodyText2
                                                .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.85,
                                    height: 1,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFDBE2E7),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(12, 4, 12, 4),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'To ask us a question or give feedback on how we are doing just press the button below',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.bodyText2
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(12, 4, 12, 4),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    FeedbackWidget(),
                                              ),
                                            );
                                          },
                                          text: 'Feedback & Queries',
                                          options: FFButtonOptions(
                                            width: 250,
                                            height: 40,
                                            color: Color(0xFFCDDBD1),
                                            textStyle: FlutterFlowTheme
                                                .subtitle2
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                            ),
                                            elevation: 6,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius: 12,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(12, 4, 12, 4),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Or find us on our social media!',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.bodyText2
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 140,
                                          height: 38,
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment:
                                                    Alignment(-0.7, -0.01),
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
                                                  size: 18,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 140,
                                                  height: 38,
                                                  color: Colors.transparent,
                                                  textStyle:
                                                      GoogleFonts.getFont(
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
                                          padding:
                                              EdgeInsets.fromLTRB(20, 0, 0, 0),
                                          child: Container(
                                            width: 140,
                                            height: 38,
                                            child: Stack(
                                              alignment: Alignment(0, 0),
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment(-0.7, -0.01),
                                                  child: Container(
                                                    width: 18,
                                                    height: 18,
                                                    clipBehavior:
                                                        Clip.antiAlias,
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
                                                    size: 18,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 140,
                                                    height: 38,
                                                    color: Colors.transparent,
                                                    textStyle:
                                                        GoogleFonts.getFont(
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
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: FlutterFlowTheme.tertiaryColor,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 4, 0, 0),
                                            child: Text(
                                              'Donations',
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.85,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFDBE2E7),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Remember we are only a university club, so we are appreciative of any donations. If you would like to help us out our details are below:',
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 4, 0, 0),
                                            child: Text(
                                              'Bank: ANZ',
                                              style: FlutterFlowTheme.subtitle1
                                                  .override(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 4, 0, 0),
                                            child: Text(
                                              'Name: The Treasurer',
                                              style: FlutterFlowTheme.subtitle1
                                                  .override(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 4, 0, 0),
                                            child: Text(
                                              'Number: 01-0811-0090556-00',
                                              style: FlutterFlowTheme.subtitle1
                                                  .override(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
