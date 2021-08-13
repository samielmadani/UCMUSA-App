import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class MainWidget extends StatefulWidget {
  MainWidget({Key key}) : super(key: key);

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<PrayerMonthRecord>>(
      stream: queryPrayerMonthRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        List<PrayerMonthRecord> mainPrayerMonthRecordList = snapshot.data;
        // Customize what your widget looks like with no query results.
        if (snapshot.data.isEmpty) {
          return Container(
            height: 100,
            child: Center(
              child: Text('No results.'),
            ),
          );
        }
        final mainPrayerMonthRecord = mainPrayerMonthRecordList.first;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.tertiaryColor,
            automaticallyImplyLeading: false,
            title: Text(
              'Events',
              style: FlutterFlowTheme.title1.override(
                fontFamily: 'Poppins',
              ),
            ),
            actions: [
              Align(
                alignment: Alignment(0, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
                  child: Image.asset(
                    'assets/images/Cropped Logo-1.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              )
            ],
            centerTitle: false,
            elevation: 2,
          ),
          backgroundColor: Color(0xFFF1F4F8),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: Alignment(0, 0),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(16, 12, 0, 12),
                                child: Text(
                                  'Prayer Times',
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
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
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            NavBarPage(initialPage: 'Prayer'),
                                      ),
                                      (r) => false,
                                    );
                                  },
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Color(0x2AA8FFB7),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.hands,
                                          color:
                                              FlutterFlowTheme.secondaryColor,
                                          size: 70,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.85,
                                          height: 1,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFDBE2E7),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 4, 0, 0),
                                          child: Text(
                                            'Press for',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 4),
                                          child: Text(
                                            'Musallah Iqamah Times',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.subtitle1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(16, 12, 0, 12),
                              child: Text(
                                'Upcoming Events',
                                style: FlutterFlowTheme.subtitle1.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: StreamBuilder<List<EventsRecord>>(
                            stream: queryEventsRecord(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(child: CircularProgressIndicator());
                              }
                              List<EventsRecord> listViewEventsRecordList =
                                  snapshot.data;
                              // Customize what your widget looks like with no query results.
                              if (snapshot.data.isEmpty) {
                                return Container(
                                  height: 100,
                                  child: Center(
                                    child: Text('No results.'),
                                  ),
                                );
                              }
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                physics: const ScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                itemCount: listViewEventsRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewEventsRecord =
                                      listViewEventsRecordList[listViewIndex];
                                  return Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 0, 8, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(listViewEventsRecord
                                                  .linkToSignup);
                                            },
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color:
                                                  FlutterFlowTheme.tertiaryColor,
                                              elevation: 3,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(
                                                        12, 4, 12, 4),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.fromLTRB(
                                                                  0, 4, 0, 0),
                                                          child: Text(
                                                            listViewEventsRecord
                                                                .title,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color:
                                                                  FlutterFlowTheme
                                                                      .primaryColor,
                                                              fontWeight:
                                                                  FontWeight.w600,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    width: MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.85,
                                                    height: 1,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFDBE2E7),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(
                                                        12, 4, 12, 4),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.fromLTRB(
                                                                  0, 4, 0, 0),
                                                          child: Text(
                                                            listViewEventsRecord
                                                                .header,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .subtitle1
                                                                    .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(
                                                        12, 4, 12, 4),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            listViewEventsRecord
                                                                .description,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(
                                                        12, 4, 12, 8),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.fromLTRB(
                                                                  0, 0, 0, 4),
                                                          child: Icon(
                                                            Icons.schedule,
                                                            color:
                                                                FlutterFlowTheme
                                                                    .primaryColor,
                                                            size: 20,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.fromLTRB(
                                                                  4, 0, 0, 0),
                                                          child: Text(
                                                            listViewEventsRecord
                                                                .date,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color:
                                                                  FlutterFlowTheme
                                                                      .primaryColor,
                                                              fontWeight:
                                                                  FontWeight.w500,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.fromLTRB(
                                                                  24, 0, 0, 4),
                                                          child: Icon(
                                                            Icons
                                                                .location_on_sharp,
                                                            color:
                                                                FlutterFlowTheme
                                                                    .primaryColor,
                                                            size: 20,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.fromLTRB(
                                                                  4, 0, 0, 0),
                                                          child: Text(
                                                            listViewEventsRecord
                                                                .location,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color:
                                                                  FlutterFlowTheme
                                                                      .primaryColor,
                                                              fontWeight:
                                                                  FontWeight.w500,
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
                                        ),
                                      )
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
