import '/flutter_flow/flutter_flow_util.dart';
import 'math_widget.dart' show MathWidget;
import 'package:flutter/material.dart';

class MathModel extends FlutterFlowModel<MathWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
