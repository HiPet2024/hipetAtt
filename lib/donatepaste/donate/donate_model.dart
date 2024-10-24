import '/components/donate_page_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'donate_widget.dart' show DonateWidget;
import 'package:flutter/material.dart';

class DonateModel extends FlutterFlowModel<DonateWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown_tipoanimal widget.
  String? dropDownTipoanimalValue;
  FormFieldController<String>? dropDownTipoanimalValueController;
  // State field(s) for DropDown_porte widget.
  String? dropDownPorteValue;
  FormFieldController<String>? dropDownPorteValueController;
  // State field(s) for DropDown_genero widget.
  String? dropDownGeneroValue;
  FormFieldController<String>? dropDownGeneroValueController;
  // Models for donate_page dynamic component.
  late FlutterFlowDynamicModels<DonatePageModel> donatePageModels;

  @override
  void initState(BuildContext context) {
    donatePageModels = FlutterFlowDynamicModels(() => DonatePageModel());
  }

  @override
  void dispose() {
    donatePageModels.dispose();
  }
}
