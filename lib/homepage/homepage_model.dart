import '/components/page_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:flutter/material.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for page dynamic component.
  late FlutterFlowDynamicModels<PageModel> pageModels;

  @override
  void initState(BuildContext context) {
    pageModels = FlutterFlowDynamicModels(() => PageModel());
  }

  @override
  void dispose() {
    pageModels.dispose();
  }
}
