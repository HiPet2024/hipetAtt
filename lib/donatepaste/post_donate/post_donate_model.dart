import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'post_donate_widget.dart' show PostDonateWidget;
import 'package:flutter/material.dart';

class PostDonateModel extends FlutterFlowModel<PostDonateWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for textdonatedes widget.
  FocusNode? textdonatedesFocusNode;
  TextEditingController? textdonatedesTextController;
  String? Function(BuildContext, String?)? textdonatedesTextControllerValidator;
  // State field(s) for DropDown_tipoanimal widget.
  String? dropDownTipoanimalValue;
  FormFieldController<String>? dropDownTipoanimalValueController;
  // State field(s) for DropDown_porte widget.
  String? dropDownPorteValue;
  FormFieldController<String>? dropDownPorteValueController;
  // State field(s) for DropDown_genero widget.
  String? dropDownGeneroValue;
  FormFieldController<String>? dropDownGeneroValueController;
  // State field(s) for TextFlild_formadecontato widget.
  FocusNode? textFlildFormadecontatoFocusNode;
  TextEditingController? textFlildFormadecontatoTextController;
  String? Function(BuildContext, String?)?
      textFlildFormadecontatoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textdonatedesFocusNode?.dispose();
    textdonatedesTextController?.dispose();

    textFlildFormadecontatoFocusNode?.dispose();
    textFlildFormadecontatoTextController?.dispose();
  }
}
