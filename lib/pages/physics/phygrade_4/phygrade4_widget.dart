import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'phygrade4_model.dart';
export 'phygrade4_model.dart';

class Phygrade4Widget extends StatefulWidget {
  const Phygrade4Widget({super.key});

  @override
  State<Phygrade4Widget> createState() => _Phygrade4WidgetState();
}

class _Phygrade4WidgetState extends State<Phygrade4Widget> {
  late Phygrade4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Phygrade4Model());
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
          backgroundColor: const Color(0xFF083E25),
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
              'qbuu8ww2' /* Senior Year */,
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
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
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
                          'cwh3z2dh' /* Modern Physics */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                      ),
                      subtitle: Text(
                        FFLocalizations.of(context).getText(
                          'ot66vbkd' /* -Theory of relativity
-Quantum... */
                          ,
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
                          '39hyx45g' /* Applied Physics */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                      ),
                      subtitle: Text(
                        FFLocalizations.of(context).getText(
                          'kih0r4hk' /* -Electronic circuits and semic... */,
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
                          'vetpjwb7' /* Astrophysics */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                      ),
                      subtitle: Text(
                        FFLocalizations.of(context).getText(
                          '9hqn888h' /* -Stars and galaxies
-Cosmology... */
                          ,
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
                    if (FFLocalizations.of(context).getVariableText(
                          enText: '',
                          trText: 'Türkçe',
                        ) ==
                        'Türkçe')
                      ListTile(
                        title: Text(
                          FFLocalizations.of(context).getText(
                            '0rc2n0rc' /* Title */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        subtitle: Text(
                          FFLocalizations.of(context).getText(
                            'nw346pth' /* Subtitle goes here... */,
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
