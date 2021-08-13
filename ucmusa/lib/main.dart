import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'auth/firebase_user_provider.dart';
import 'package:ucmusa/login/login_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'main/main_widget.dart';
import 'prayer/prayer_widget.dart';
import 'christchurch/christchurch_widget.dart';
import 'about/about_widget.dart';
import 'profile/profile_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Stream<UcmusaFirebaseUser> userStream;
  UcmusaFirebaseUser initialUser;

  @override
  void initState() {
    super.initState();
    userStream = ucmusaFirebaseUserStream()
      ..listen((user) => initialUser ?? setState(() => initialUser = user));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UCMUSA',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: initialUser == null
          ? Center(
              child: Builder(
                builder: (context) => Image.asset(
                  'assets/images/invertedSlogan.png',
                  width: MediaQuery.of(context).size.width / 2,
                  fit: BoxFit.fitWidth,
                ),
              ),
            )
          : currentUser.loggedIn
              ? NavBarPage()
              : LoginWidget(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'Main';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'Main': MainWidget(),
      'Prayer': PrayerWidget(),
      'Christchurch': ChristchurchWidget(),
      'About': AboutWidget(),
      'Profile': ProfileWidget(),
    };
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 25,
            ),
            activeIcon: Icon(
              Icons.home_rounded,
              size: 31,
            ),
            label: 'Home & Events',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.hands,
              size: 20,
            ),
            activeIcon: FaIcon(
              FontAwesomeIcons.hands,
              size: 26,
            ),
            label: 'Prayer Times',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.mapMarkedAlt,
              size: 24,
            ),
            activeIcon: FaIcon(
              FontAwesomeIcons.mapMarkedAlt,
              size: 30,
            ),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info_outline,
              size: 24,
            ),
            activeIcon: Icon(
              Icons.info_rounded,
              size: 30,
            ),
            label: 'About Us',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.user,
              color: Color(0xFF9E9E9E),
              size: 20,
            ),
            activeIcon: FaIcon(
              FontAwesomeIcons.user,
              color: FlutterFlowTheme.primaryColor,
              size: 26,
            ),
            label: 'Account',
          )
        ],
        backgroundColor: Colors.white,
        currentIndex: tabs.keys.toList().indexOf(_currentPage),
        selectedItemColor: FlutterFlowTheme.secondaryColor,
        unselectedItemColor: Colors.black,
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
