import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_view_model.dart';
export 'profile_view_model.dart';

class ProfileViewWidget extends StatefulWidget {
  const ProfileViewWidget({super.key});

  @override
  State<ProfileViewWidget> createState() => _ProfileViewWidgetState();
}

class _ProfileViewWidgetState extends State<ProfileViewWidget> {
  late ProfileViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileViewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            buttonSize: 48.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).info,
              size: 25.0,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: Text(
            'Profile Status',
            style: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: 'Manrope',
                  fontSize: 20.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                      child: Container(
                        width: 80.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              FlutterFlowTheme.of(context).primary,
                              FlutterFlowTheme.of(context).tertiary
                            ],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(1.0, -1.0),
                            end: AlignmentDirectional(-1.0, 1.0),
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                                    width: 100.0,
                                    height: 100.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jayakanth',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Urbanist',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 0.0),
                            child: Text(
                              'jai06032005@gmail.com',
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 400.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            -1.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 8.0),
                                  child: Text(
                                    'Activity',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Urbanist',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Text(
                                  'Bio',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Manrope',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Text(
                                    'I exist to design pixels, beyond that my life is void and meaningless... i\'m just kidding I live to make other peoples lives easier.',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Manrope',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 0.0, 0.0, 8.0),
                                                child: Text(
                                                  '1',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Urbanist',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                'Project',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 8.0),
                                                child: Text(
                                                  '3',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Urbanist',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                'Levels',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 0.0, 0.0, 8.0),
                                                child: Text(
                                                  '0',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Urbanist',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                'Teamlance',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 32.0,
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                                Text(
                                  'Badges',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Manrope',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 1.0),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 0.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              offset: Offset(
                                                0.0,
                                                1.0,
                                              ),
                                            )
                                          ],
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(4.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 8.0,
                                                                8.0, 4.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      4.0,
                                                                      0.0,
                                                                      4.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Certified Freelancer',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              RichText(
                                                                textScaler: MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text:
                                                                          'On 12-05-2024',
                                                                      style:
                                                                          TextStyle(),
                                                                    )
                                                                  ],
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 8.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      4.0,
                                                                      4.0,
                                                                      12.0),
                                                          child: Text(
                                                            'Field: Machine Learning',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                          child: Image.network(
                                                            'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjlDom7_nDRU282-kLtDAeYVva_YcUuAiHZn7Xu4M2PKb0cgLHd9ZjNhABTX4gEGnp2FnmD7C-bKVlLxWfnN2g_HpRs3F7jLxqDCuzzu6BoU8MQ2JV59_5xQStQp0zdMCT3lJx7KNiwY7BdWRd4gKv-2SAWNNcC6mmxR536nk53d8sZONRNcvDEKzioyUc/s320/White%20and%20Purple%20Colorful%20Page%20Border%20Double-Sided%20Poster%20A3%20Landscape%20(6).png ',
                                                            width:
                                                                double.infinity,
                                                            height: 250.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(4.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 8.0,
                                                                8.0, 4.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      4.0,
                                                                      0.0,
                                                                      4.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Level 2',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              RichText(
                                                                textScaler: MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text:
                                                                          'On 11-05-2024',
                                                                      style:
                                                                          TextStyle(),
                                                                    )
                                                                  ],
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 8.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      4.0,
                                                                      4.0,
                                                                      12.0),
                                                          child: Text(
                                                            'Field: Machine Learning',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                          child: Image.network(
                                                            'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgnskpAMpqdt_cfzAmrEF77d2vYp6jEeWy5_F0gBmd2ccw1DLxuKoxzjw3YISUGbOiSDSRAAPJtvPckCvTo8G3pwVyIPZgFpvs-jUHAxFulU82hO157rxw4m9vxTpnuH3MahxrhaQQtpStk-5Ipp5OavynhtNtVH7nzRAH11Nmuo-r96Oyb-GXlSZlNfqY/s320/White%20and%20Purple%20Colorful%20Page%20Border%20Double-Sided%20Poster%20A3%20Landscape%20(5).png',
                                                            width:
                                                                double.infinity,
                                                            height: 192.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(4.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 8.0,
                                                                8.0, 4.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      4.0,
                                                                      0.0,
                                                                      4.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Level 1',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              RichText(
                                                                textScaler: MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text:
                                                                          'On 11-05-2024',
                                                                      style:
                                                                          TextStyle(),
                                                                    )
                                                                  ],
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 8.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      4.0,
                                                                      4.0,
                                                                      12.0),
                                                          child: Text(
                                                            'Field: Machine Learning',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                          child: Image.network(
                                                            'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgyw5nH4V8tSXVd20w3EORWxcD8DJUY4fxCqDVe_HnLaZORCOXyYWlxwXOLQjoakEGRgoIcvvLSqQWCOV_VGUCt2Nu7BqX6Ap6rcV0o8oOJmMs5g95Xpptaky-nuM8pyDyxlDJNt7T8_RKoWsyy6-D_pv_IUr32HSy8SS51ueyySTrBFaW4q3ehqtWfKtw/s320/White%20and%20Purple%20Colorful%20Page%20Border%20Double-Sided%20Poster%20A3%20Landscape%20(4).png ',
                                                            width:
                                                                double.infinity,
                                                            height: 190.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 1.0),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 0.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              offset: Offset(
                                                0.0,
                                                1.0,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
