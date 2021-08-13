import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_widget.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SignUpWidget extends StatefulWidget {
  SignUpWidget({Key key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  TextEditingController confirmPasswordTextController;
  bool passwordVisibility2;
  TextEditingController emailTextController;
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController passwordTextController;
  bool passwordVisibility1;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmPasswordTextController = TextEditingController();
    passwordVisibility2 = false;
    emailTextController = TextEditingController();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility1 = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        key: scaffoldKey,
        body: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment(0, -1),
                child: Image.asset(
                  'assets/images/favicon.png',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.fitHeight,
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
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(30),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(4, 0, 5, 5),
                                            child: Container(
                                              width: 140,
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
                                                  controller: textController1,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText: 'First Name',
                                                    hintStyle:
                                                        GoogleFonts.getFont(
                                                      'Open Sans',
                                                      color: Color(0xFF455A64),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Open Sans',
                                                    color: Color(0xFF455A64),
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                  keyboardType:
                                                      TextInputType.name,
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
                                                EdgeInsets.fromLTRB(9, 0, 0, 5),
                                            child: Container(
                                              width: 140,
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
                                                  controller: textController2,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText: 'Last Name',
                                                    hintStyle:
                                                        GoogleFonts.getFont(
                                                      'Open Sans',
                                                      color: Color(0xFF455A64),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Open Sans',
                                                    color: Color(0xFF455A64),
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                  keyboardType:
                                                      TextInputType.name,
                                                  validator: (val) {
                                                    if (val.isEmpty) {
                                                      return 'Field is required';
                                                    }

                                                    return null;
                                                  },
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
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
                                              controller: textController3,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText: 'Phone Number',
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
                                              keyboardType: TextInputType.phone,
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
                                                hintText: 'Email Address',
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
                                              keyboardType:
                                                  TextInputType.emailAddress,
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
                                              obscureText: !passwordVisibility1,
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
                                                    () => passwordVisibility1 =
                                                        !passwordVisibility1,
                                                  ),
                                                  child: Icon(
                                                    passwordVisibility1
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
                                                if (val.length < 8) {
                                                  return 'Password should be at least 8 characters';
                                                }
                                                return null;
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(4, 0, 4, 10),
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
                                                  confirmPasswordTextController,
                                              obscureText: !passwordVisibility2,
                                              decoration: InputDecoration(
                                                hintText: 'Re-Enter Password',
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
                                                    () => passwordVisibility2 =
                                                        !passwordVisibility2,
                                                  ),
                                                  child: Icon(
                                                    passwordVisibility2
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
                                            EdgeInsets.fromLTRB(0, 0, 0, 40),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            if (!formKey.currentState
                                                .validate()) {
                                              return;
                                            }
                                            if (passwordTextController.text !=
                                                confirmPasswordTextController
                                                    .text) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    "Passwords don't match!",
                                                  ),
                                                ),
                                              );
                                              return;
                                            }

                                            final user =
                                                await createAccountWithEmail(
                                              context,
                                              emailTextController.text,
                                              passwordTextController.text,
                                            );
                                            if (user == null) {
                                              return;
                                            }

                                            final usersCreateData =
                                                createUsersRecordData(
                                              email: emailTextController.text,
                                              displayName: textController1.text,
                                              uid: '',
                                              createdTime: getCurrentTimestamp,
                                              phoneNumber: textController3.text,
                                              firstName: textController1.text,
                                              lastName: textController2.text,
                                            );
                                            await UsersRecord.collection
                                                .doc(user.uid)
                                                .update(usersCreateData);

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
                                          text: 'Sign Up',
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
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 5),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [

                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                   0, 0, 0, 0),
                                              child: Container(
                                                width: 110,
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
                                                      text: 'Sign Up',
                                                      icon: Icon(
                                                        Icons.add,
                                                        color:
                                                            Colors.transparent,
                                                        size: 20,
                                                      ),
                                                      options: FFButtonOptions(
                                                        width: 110,
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
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 10),
                                        child: InkWell(
                                          onTap: () async {
                                            await Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginWidget(),
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
                                                  'Already have an account?',
                                                  style: GoogleFonts.getFont(
                                                    'Open Sans',
                                                    color: Color(0xFFADADAD),
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Log In',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              )
                                            ],
                                          ),
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
