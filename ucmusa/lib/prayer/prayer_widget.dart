import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrayerWidget extends StatefulWidget {
  PrayerWidget({Key key}) : super(key: key);

  @override
  _PrayerWidgetState createState() => _PrayerWidgetState();
}

class _PrayerWidgetState extends State<PrayerWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Prayer Times',
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
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 15, 8, 0),
                  child: Text(
                    'These are the rough Iqamah times for the UC Musallah. They rarely change over the years (apart from during Ramadan), and are based around the FIANZ athan times, which can be found in the link below:',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await launchURL('https://fianz.com/prayer-times/');
                    },
                    text: 'FIANZ Athan Times',
                    options: FFButtonOptions(
                      width: 180,
                      height: 40,
                      color: Color(0xFFEAF9EE),
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      elevation: 6,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 2,
                      ),
                      borderRadius: 12,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 25, 0, 5),
                      child: Text(
                        'UC Musallah Iqamah Times',
                        textAlign: TextAlign.start,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 3,
                        decoration: BoxDecoration(
                          color: Color(0x93000000),
                          border: Border.all(
                            color: Color(0x93000000),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: StreamBuilder<List<PrayerMonthRecord>>(
                    stream: queryPrayerMonthRecord(
                      queryBuilder: (prayerMonthRecord) =>
                          prayerMonthRecord.orderBy('time'),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(child: CircularProgressIndicator());
                      }
                      List<PrayerMonthRecord> listViewPrayerMonthRecordList =
                          snapshot.data;
                      // Customize what your widget looks like with no query results.
                      if (snapshot.data.isEmpty) {
                        return Container(
                          height: 100,
                          child: Center(
                            child: Text('No times added.'),
                          ),
                        );
                      }
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: listViewPrayerMonthRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewPrayerMonthRecord =
                              listViewPrayerMonthRecordList[listViewIndex];
                          return Row(
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
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image.network(
                                          listViewPrayerMonthRecord.image,
                                          fit: BoxFit.fitWidth,
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width *
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 4, 0, 0),
                                                child: Text(
                                                  listViewPrayerMonthRecord.month,
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme
                                                      .subtitle1
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
                          );
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
