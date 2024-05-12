import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'who_model.dart';
export 'who_model.dart';

class WhoWidget extends StatefulWidget {
  const WhoWidget({super.key});

  @override
  State<WhoWidget> createState() => _WhoWidgetState();
}

class _WhoWidgetState extends State<WhoWidget> {
  late WhoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WhoModel());

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
          title: Text(
            'Choose your field',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Urbanist',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 0.0),
                  child: GradientText(
                    'Who are you?',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Manrope',
                          fontSize: 34.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                    colors: [
                      FlutterFlowTheme.of(context).primary,
                      FlutterFlowTheme.of(context).warning
                    ],
                    gradientDirection: GradientDirection.ltr,
                    gradientType: GradientType.linear,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi9jeTtTWWQPcq8wVRDJLdTkqTcoLmN_mdhOntHSI-VbsEBQHoVsSvnlM9hDD70dp3OB98A70k5zTRjAR2cuklZxqSnO7zh6XqFnFaYkYK19t8U7zf_K6MA0uY7op3VyTNneP2rD-8goGIuu173dmDaQ6FymPfQSapetr9tXVkhWmgBEMPATfoZuOoGehI/s320/White%20Circular%20Initial%20RS%20Logo%20(1).png',
                    width: 215.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('ProfileEnter');
                  },
                  text: 'Freelancer',
                  options: FFButtonOptions(
                    height: 50.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Manrope',
                          color: Colors.white,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Text(
                  'or',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Manrope',
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('ProfileForm');
                  },
                  text: 'Client',
                  options: FFButtonOptions(
                    height: 50.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Manrope',
                          color: Colors.white,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
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
