import 'package:flutter/material.dart';
import '../models/buttons_model.dart';

class Buttons extends StatefulWidget {
   Buttons({super.key, required this.calcButtons});

  final CalcButtonsModel calcButtons;

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  BtnValues buttonsValues = BtnValues();

   String operand = "";

   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            animationDuration: const Duration(microseconds: 123),
            disabledMouseCursor: MouseCursor.defer,
            backgroundColor: Colors.transparent,
            shape: LinearBorder.start(size: 1)),
        clipBehavior: Clip.hardEdge,
        onPressed: () {
          setState(() {

          });
                  },
        child: Text(widget.calcButtons.btnTxt,
            style: TextStyle(
              color: widget.calcButtons.txtClr,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }

  }

