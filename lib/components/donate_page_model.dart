import '/flutter_flow/flutter_flow_util.dart';
import 'donate_page_widget.dart' show DonatePageWidget;
import 'package:flutter/material.dart';

class DonatePageModel extends FlutterFlowModel<DonatePageWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
