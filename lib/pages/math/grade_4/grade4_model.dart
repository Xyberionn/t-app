import '/flutter_flow/flutter_flow_util.dart';
import 'grade4_widget.dart' show Grade4Widget;
import 'package:flutter/material.dart';

class Grade4Model extends FlutterFlowModel<Grade4Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
