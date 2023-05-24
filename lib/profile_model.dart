import '/flutter_flow/flutter_flow_model.dart';
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel {
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textController?.dispose();
  }
}
