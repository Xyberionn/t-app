import '/flutter_flow/flutter_flow_util.dart';
import 'grade1_widget.dart' show Grade1Widget;
import 'package:flutter/material.dart';

class Grade1Model extends FlutterFlowModel<Grade1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
