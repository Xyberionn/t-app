import '/flutter_flow/flutter_flow_util.dart';
import 'grade2_widget.dart' show Grade2Widget;
import 'package:flutter/material.dart';

class Grade2Model extends FlutterFlowModel<Grade2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
