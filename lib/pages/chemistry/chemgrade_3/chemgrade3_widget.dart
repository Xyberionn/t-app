import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'chemgrade3_model.dart';
export 'chemgrade3_model.dart';

class Chemgrade3Widget extends StatefulWidget {
  const Chemgrade3Widget({super.key});

  @override
  State<Chemgrade3Widget> createState() => _Chemgrade3WidgetState();
}

class _Chemgrade3WidgetState extends State<Chemgrade3Widget> {
  late Chemgrade3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Chemgrade3Model());
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
          backgroundColor: const Color(0xFF267EAD),
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
              '5rw0x0wt' /* Junior Year */,
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
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      ListTile(
                        title: Text(
                          FFLocalizations.of(context).getText(
                            'lp70oaoc' /* Chemical Thermodynamics */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        subtitle: Text(
                          FFLocalizations.of(context).getText(
                            'svxkmkow' /* -Energy changes and enthalpy
-... */
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
                            'x6f8lbzk' /* Chemical Kinetics */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        subtitle: Text(
                          FFLocalizations.of(context).getText(
                            '3v55hq1t' /* -Reaction rates and mechanisms... */,
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
                            'vhu6jb4e' /* Chemical Bonds */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        subtitle: Text(
                          FFLocalizations.of(context).getText(
                            'b7e43v8r' /* -Ionic, covalent, and metallic... */,
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
                            'loconupd' /* Chemical Reactions */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        subtitle: Text(
                          FFLocalizations.of(context).getText(
                            'z44aimd6' /* -Types of reactions (synthesis... */,
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
                            enText: 'English',
                            trText: '',
                          ) ==
                          'English')
                        ListTile(
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'mgc4rie9' /* States of Matter */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          subtitle: Text(
                            FFLocalizations.of(context).getText(
                              'bph2f0nv' /* -Properties of solids, liquids... */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
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
                    ].divide(const SizedBox(height: 10.0)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
