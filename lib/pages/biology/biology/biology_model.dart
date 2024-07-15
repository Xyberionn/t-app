import '/flutter_flow/flutter_flow_util.dart';
import 'biology_widget.dart' show BiologyWidget;
import 'package:flutter/material.dart';

class BiologyModel extends FlutterFlowModel<BiologyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
