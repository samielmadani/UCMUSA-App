import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../reset_password/reset_password_widget.dart';
import '../sign_up/sign_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class LoginWidget extends StatefulWidget {
  LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController emailTextController;
  TextEditingController passwordTextController;
  bool passwordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment(0, -1),
                child: Image.asset(
                  'assets/images/70581_hbc_dv_b_FB.png',
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              Align(
                alignment: Alignment(0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 230, 0, 0),
                        child: Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: SingleChildScrollView(
                              primary: false,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 10, 0, 15),
                                    child: Image.asset(
                                      'assets/images/favicon.png',
                                      width: 150,
                                      height: 100,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(4, 0, 0, 5),
                                        child: Container(
                                          width: 300,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFE0E0E0),
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                20, 0, 20, 0),
                                            child: TextFormField(
                                              controller: emailTextController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText: 'Email',
                                                hintStyle: GoogleFonts.getFont(
                                                  'Open Sans',
                                                  color: Color(0xFF455A64),
                                                  fontWeight: FontWeight.normal,
                                                ),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Open Sans',
                                                color: Color(0xFF455A64),
                                                fontWeight: FontWeight.normal,
                                              ),
                                              validator: (val) {
                                                if (val.isEmpty) {
                                                  return 'Field is required';
                                                }

                                                return null;
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(4, 0, 4, 5),
                                        child: Container(
                                          width: 300,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFE0E0E0),
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                20, 0, 20, 0),
                                            child: TextFormField(
                                              controller:
                                                  passwordTextController,
                                              obscureText: !passwordVisibility,
                                              decoration: InputDecoration(
                                                hintText: 'Password',
                                                hintStyle: GoogleFonts.getFont(
                                                  'Open Sans',
                                                  color: Color(0xFF455A64),
                                                  fontWeight: FontWeight.normal,
                                                ),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                                suffixIcon: InkWell(
                                                  onTap: () => setState(
                                                    () => passwordVisibility =
                                                        !passwordVisibility,
                                                  ),
                                                  child: Icon(
                                                    passwordVisibility
                                                        ? Icons
                                                            .visibility_outlined
                                                        : Icons
                                                            .visibility_off_outlined,
                                                    size: 22,
                                                  ),
                                                ),
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Open Sans',
                                                color: Color(0xFF455A64),
                                                fontWeight: FontWeight.normal,
                                              ),
                                              validator: (val) {
                                                if (val.isEmpty) {
                                                  return 'Field is required';
                                                }

                                                return null;
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 10),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            if (!formKey.currentState
                                                .validate()) {
                                              return;
                                            }
                                            final user = await signInWithEmail(
                                              context,
                                              emailTextController.text,
                                              passwordTextController.text,
                                            );
                                            if (user == null) {
                                              return;
                                            }

                                            await Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    NavBarPage(
                                                        initialPage: 'Main'),
                                              ),
                                              (r) => false,
                                            );
                                          },
                                          text: 'Sign in',
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
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 30),
                                        child: InkWell(
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ResetPasswordWidget(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            'Forgot password?',
                                            style: GoogleFonts.getFont(
                                              'Open Sans',
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [

                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 0),
                                              child: Container(
                                                width: 100,
                                                height: 38,
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment: Alignment(
                                                          -0.7, -0.01),
                                                      child: Container(
                                                        width: 18,
                                                        height: 18,
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Image.network(
                                                          'https://i0.wp.com/nanophorm.com/wp-content/uploads/2018/04/google-logo-icon-PNG-Transparent-Background.png?w=1000&ssl=1',
                                                          fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                    ),
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        final user =
                                                            await signInWithGoogle(
                                                                context);
                                                        if (user == null) {
                                                          return;
                                                        }
                                                        await Navigator
                                                            .pushAndRemoveUntil(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                NavBarPage(
                                                                    initialPage:
                                                                        'Main'),
                                                          ),
                                                          (r) => false,
                                                        );
                                                      },
                                                      text: 'Sign in',
                                                      icon: Icon(
                                                        Icons.add,
                                                        color:
                                                            Colors.transparent,
                                                        size: 20,
                                                      ),
                                                      options: FFButtonOptions(
                                                        width: 100,
                                                        height: 38,
                                                        color:
                                                            Colors.transparent,
                                                        textStyle:
                                                            GoogleFonts.getFont(
                                                          'Open Sans',
                                                          color:
                                                              Color(0xFF616161),
                                                          fontSize: 14,
                                                        ),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFAAAAAA),
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
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  SignUpWidget(),
                                            ),
                                            (r) => false,
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 10, 0),
                                              child: Text(
                                                'Don\'t have an account?',
                                                style: GoogleFonts.getFont(
                                                  'Open Sans',
                                                  color: Color(0xFFADADAD),
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Sign Up',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
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
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
