import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'add_payments_widget.dart' show AddPaymentsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class AddPaymentsModel extends FlutterFlowModel<AddPaymentsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for plateNumber widget.
  FocusNode? plateNumberFocusNode;
  TextEditingController? plateNumberTextController;
  String? Function(BuildContext, String?)? plateNumberTextControllerValidator;
  String? _plateNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the patients full name.';
    }

    return null;
  }

  // State field(s) for model widget.
  FocusNode? modelFocusNode;
  TextEditingController? modelTextController;
  String? Function(BuildContext, String?)? modelTextControllerValidator;
  String? _modelTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter an age for the patient.';
    }

    return null;
  }

  // State field(s) for color widget.
  FocusNode? colorFocusNode;
  TextEditingController? colorTextController;
  final colorMask = MaskTextInputFormatter(mask: '##/##');
  String? Function(BuildContext, String?)? colorTextControllerValidator;
  // State field(s) for comment widget.
  FocusNode? commentFocusNode;
  TextEditingController? commentTextController;
  late bool commentVisibility;
  String? Function(BuildContext, String?)? commentTextControllerValidator;
  String? _commentTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the date of birth of the patient.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    plateNumberTextControllerValidator = _plateNumberTextControllerValidator;
    modelTextControllerValidator = _modelTextControllerValidator;
    commentVisibility = false;
    commentTextControllerValidator = _commentTextControllerValidator;
  }

  @override
  void dispose() {
    plateNumberFocusNode?.dispose();
    plateNumberTextController?.dispose();

    modelFocusNode?.dispose();
    modelTextController?.dispose();

    colorFocusNode?.dispose();
    colorTextController?.dispose();

    commentFocusNode?.dispose();
    commentTextController?.dispose();
  }
}
