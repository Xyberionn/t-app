import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'temel11_model.dart';
export 'temel11_model.dart';

class Temel11Widget extends StatefulWidget {
  const Temel11Widget({super.key});

  @override
  State<Temel11Widget> createState() => _Temel11WidgetState();
}

class _Temel11WidgetState extends State<Temel11Widget> {
  late Temel11Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Temel11Model());
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFF5C5E5E),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.chevron_left_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              '3ntqcbfl' /* Page Title */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Readex Pro',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    ListTile(
                      title: Text(
                        FFLocalizations.of(context).getText(
                          'dvuds1b0' /* Title */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                      ),
                      subtitle: Text(
                        FFLocalizations.of(context).getText(
                          'ihoyl1bc' /* Subtitle goes here... */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 20.0,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                    ),
                    ListTile(
                      title: Text(
                        FFLocalizations.of(context).getText(
                          'djcenpgy' /* Title */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                      ),
                      subtitle: Text(
                        FFLocalizations.of(context).getText(
                          'gypze4fk' /* Subtitle goes here... */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 20.0,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                    ),
                    ListTile(
                      title: Text(
                        FFLocalizations.of(context).getText(
                          '5ppze14g' /* Title */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                      ),
                      subtitle: Text(
                        FFLocalizations.of(context).getText(
                          '44s8hlp7' /* Subtitle goes here... */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 20.0,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                    ),
                    ListTile(
                      title: Text(
                        FFLocalizations.of(context).getText(
                          '3oslf8fh' /* Title */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                      ),
                      subtitle: Text(
                        FFLocalizations.of(context).getText(
                          'vtgn8p4c' /* Subtitle goes here... */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 20.0,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                    ),
                  ].divide(const SizedBox(height: 5.0)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
