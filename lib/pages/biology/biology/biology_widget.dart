import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'biology_model.dart';
export 'biology_model.dart';

class BiologyWidget extends StatefulWidget {
  const BiologyWidget({super.key});

  @override
  State<BiologyWidget> createState() => _BiologyWidgetState();
}

class _BiologyWidgetState extends State<BiologyWidget> {
  late BiologyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BiologyModel());
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
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.chevron_left_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'k8t7j68w' /* Biology Course */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Readex Pro',
                  color: FlutterFlowTheme.of(context).primaryText,
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
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1579165466991-467135ad3110?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyNHx8YmlvbG9neSUyMHRlc3R8ZW58MHx8fHwxNzE3NTk5NDI5fDA&ixlib=rb-4.0.3&q=80&w=1080',
                    width: double.infinity,
                    height: 300.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(
                      0,
                      5.0,
                      0,
                      0,
                    ),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('biograde_1');
                        },
                        child: ListTile(
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'ditkuz4f' /* Freshman Year */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
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
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('biograde_2');
                        },
                        child: ListTile(
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'hgxxsrhr' /* Sophomore Year */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
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
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('biograde_3');
                        },
                        child: ListTile(
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'bgbynxfw' /* Junior Year */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
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
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('biograde_4');
                        },
                        child: ListTile(
                          title: Text(
                            FFLocalizations.of(context).getText(
                              '3ufxvve7' /* Senior Year */,
                            ),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
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
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                      if (FFLocalizations.of(context).getVariableText(
                            enText: '',
                            trText: 'Türkçe',
                          ) ==
                          'Türkçe')
                        ListTile(
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'ev9lg99b' /* F */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
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
                    ].divide(const SizedBox(height: 12.0)),
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
