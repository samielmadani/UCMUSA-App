import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChristchurchWidget extends StatefulWidget {
  ChristchurchWidget({Key key}) : super(key: key);

  @override
  _ChristchurchWidgetState createState() => _ChristchurchWidgetState();
}

class _ChristchurchWidgetState extends State<ChristchurchWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Navigate',
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                        child: Text(
                          'Find the UC Musallah at: \n37 Creyke Road, Ilam, Christchurch, 8041',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Poppins',
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
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Text(
                          'Come down the 35 or 41 Creyke Road driveway to find parking \n\n PRESS MAP FOR DIRECTIONS',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
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
                        padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                        child: Container(
                          width: 100,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://goo.gl/maps/RfRWg9Rtbivb2vCV8');
                            },
                            child: Image.asset(
                              'assets/images/Loc.jpg',
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.height * 0.8,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Text(
                    'Some other places the rest of Christchurch has to offer:',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.subtitle1.override(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: StreamBuilder<List<PlacesRecord>>(
                    stream: queryPlacesRecord(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(child: CircularProgressIndicator());
                      }
                      List<PlacesRecord> columnPlacesRecordList = snapshot.data;
                      // Customize what your widget looks like with no query results.
                      if (snapshot.data.isEmpty) {
                        return Container(
                          height: 100,
                          child: Center(
                            child: Text('More locations will be added soon.'),
                          ),
                        );
                      }
                      return SingleChildScrollView(
                        primary: false,
                        physics: const NeverScrollableScrollPhysics(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(columnPlacesRecordList.length,
                              (columnIndex) {
                            final columnPlacesRecord =
                                columnPlacesRecordList[columnIndex];
                            return Padding(
                              padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                              child: InkWell(
                                onTap: () async {
                                  await launchURL(columnPlacesRecord.gps);
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(8, 8, 8, 8),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.network(
                                                columnPlacesRecord.image,
                                                width: 74,
                                                height: 74,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 1, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    columnPlacesRecord.title,
                                                    style: FlutterFlowTheme
                                                        .subtitle1
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFF15212B),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    columnPlacesRecord.address,
                                                    style: FlutterFlowTheme
                                                        .bodyText2
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 8, 0),
                                              child: Icon(
                                                Icons.location_on,
                                                color: Color(0xFF95A1AC),
                                                size: 24,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
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
