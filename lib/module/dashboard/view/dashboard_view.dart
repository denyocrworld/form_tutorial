import 'package:flutter/material.dart';
import 'package:form_tutorial/core.dart';
import 'package:form_tutorial/shared/widget/button/disabled_button.dart';
import 'package:form_tutorial/shared/widget/button/warning_button.dart';
import 'package:form_tutorial/shared/widget/button_outline/success_button.dart';
import '../../../shared/util/validator/validator.dart';
import '../../../shared/widget/button/danger_button.dart';
import '../../../shared/widget/button/info_button.dart';
import '../../../shared/widget/button/success_button.dart';
import '../../../shared/widget/button_outline/danger_button.dart';
import '../../../shared/widget/datefield/datefield.dart';
import '../../../shared/widget/image_picker/image_picker.dart';
import '../../../shared/widget/textfield/textfield.dart';
import '../controller/dashboard_controller.dart';

/*
UI KIT Flutter
- Harus dalam bentuk Reuseable Widget
- Harus menggunakan Prefix, prefix-nya bebas
- Tentukan Nama-nya misalnya:
  "Anthony UI KIT"
  "Anthony Express UI"
  "Anthony Dev Kit"
- Upload ke Github
- Tag saya di grup, nanti saya bantu review dan kasih feedback


Button
  Success Button
  Danger Button
  Warning Button
  Info Button
  Disabled Button
  Primary Button (Optional)
  Secondary Button (Optional)

Outline Button
  Outline Success Button
  Outline Danger Button
  Outline Warning Button
  Outline Info Button
  Outline Primary Button
  Outline Secondary Button

Form
  TextField
  Textfield Numeric
  Textfield Password
  Textfield Multilines (TextArea|MemoField)
  Dropdown
  CheckField
  RadioField
  ImagePicker
  Autocomplete (Optional)
  DropdownSearch (Optional)
*/
class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Button",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                SuccessButton(
                  label: "Save",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 8.0,
                ),
                DangerButton(
                  label: "Save",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 8.0,
                ),
                WarningButton(
                  label: "Save",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 8.0,
                ),
                InfoButton(
                  label: "Save",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 8.0,
                ),
                DisabledButton(
                  label: "Save",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "Button Outline",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                OutlineSuccessButton(
                  label: "Save",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 6.0,
                ),
                OutlineDangerButton(
                  label: "Save",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "Form",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                QTextField(
                  label: "Name",
                  hint: "Name",
                  validator: Validator.required,
                  value: "John Doe",
                  onChanged: (value) {},
                ),
                QDatePicker(
                  label: "Birth date",
                  hint: "Your birth date",
                  validator: Validator.required,
                  onChanged: (value) {
                    print("value: $value");
                  },
                ),
                QImagePicker(
                  label: "Photo",
                  hint: "Your photo",
                  validator: Validator.required,
                  value: null,
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
