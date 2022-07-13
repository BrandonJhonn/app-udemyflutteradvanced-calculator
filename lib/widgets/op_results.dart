import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/calculator_controller.dart';
import '../widgets/line_separator.dart';
import '../widgets/main_result.dart';
import '../widgets/sub_result.dart';

class MathResults extends StatelessWidget {
  MathResults({Key? key}) : super(key: key);

  final calculatorCtrl = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
      children: [
        SubResult( text: '${ calculatorCtrl.firstNumber }' ),
        SubResult( text: '${ calculatorCtrl.operator }' ),
        SubResult( text: '${ calculatorCtrl.secondNumber }' ),
        LineSeparator(),
        MainResultText( text: '${ calculatorCtrl.mathResult }' ),
      ],
    ));
  }
}