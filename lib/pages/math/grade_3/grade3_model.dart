import '/flutter_flow/flutter_flow_util.dart';
import 'grade3_widget.dart' show Grade3Widget;
import 'package:flutter/material.dart';

class Grade3Model extends FlutterFlowModel<Grade3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
