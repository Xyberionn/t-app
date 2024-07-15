import '/flutter_flow/flutter_flow_util.dart';
import 'chemistry_widget.dart' show ChemistryWidget;
import 'package:flutter/material.dart';

class ChemistryModel extends FlutterFlowModel<ChemistryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
