import '/flutter_flow/flutter_flow_util.dart';
import 'physics_widget.dart' show PhysicsWidget;
import 'package:flutter/material.dart';

class PhysicsModel extends FlutterFlowModel<PhysicsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
