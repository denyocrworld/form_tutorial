import 'package:form_tutorial/state_util.dart';
import 'package:flutter/material.dart';

import 'module/dashboard/view/dashboard_view.dart';

/*
TextField
TextField Password
TextField Numeric
MemoField/TextArea
Dropdown
Radio
CheckField
Autocomplete
ImagePicker

---

CategoryPicker

---

Button
Form Validation
*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const DashboardView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
