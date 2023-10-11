import 'package:calculator/models/buttons_model.dart';
import 'package:calculator/weidgets/buttons_weidget.dart';
import 'package:flutter/material.dart';

class CalcolatorScreen extends StatelessWidget {
  CalcolatorScreen({super.key});

  BtnValues buttonsValues = BtnValues();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Calculator',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.bottomRight,
            child:  Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                buttonsValues.result ,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 100,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Divider(color: Colors.cyan),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, bottom: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Buttons(
                        calcButtons: CalcButtonsModel(
                            btnTxt: buttonsValues.AC, txtClr: Colors.cyan),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: IconButton(
                          splashRadius: 1, // Set the Size of the splash area
                          color: Colors.cyan,
                          icon: const Icon(Icons.backspace),
                          onPressed: () {},
                        ),
                      ),
                      Buttons(
                        calcButtons: CalcButtonsModel(
                            btnTxt: buttonsValues.per, txtClr: Colors.cyan),
                      ),
                      Buttons(
                        calcButtons: CalcButtonsModel(
                            btnTxt: buttonsValues.divide, txtClr: Colors.cyan),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Buttons(
                        calcButtons: CalcButtonsModel(
                            btnTxt: buttonsValues.n7, txtClr: Colors.white),
                      ),
                      Buttons(
                        calcButtons: CalcButtonsModel(
                            btnTxt: buttonsValues.n8, txtClr: Colors.white),
                      ),
                      Buttons(
                        calcButtons: CalcButtonsModel(
                            btnTxt: buttonsValues.n9, txtClr: Colors.white),
                      ),
                      Buttons(
                        calcButtons: CalcButtonsModel(
                            btnTxt: buttonsValues.multiply,
                            txtClr: Colors.cyan),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Buttons(
                        calcButtons: CalcButtonsModel(
                            btnTxt: buttonsValues.n4, txtClr: Colors.white),
                      ),
                      Buttons(
                        calcButtons: CalcButtonsModel(
                            btnTxt: buttonsValues.n5, txtClr: Colors.white),
                      ),
                      Buttons(
                        calcButtons: CalcButtonsModel(
                            btnTxt: buttonsValues.n6, txtClr: Colors.white),
                      ),
                      Buttons(
                        calcButtons: CalcButtonsModel(
                            btnTxt: buttonsValues.subtract,
                            txtClr: Colors.cyan),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Buttons(
                        calcButtons: CalcButtonsModel(
                            btnTxt: buttonsValues.n1, txtClr: Colors.white),
                      ),
                      Buttons(
                        calcButtons: CalcButtonsModel(
                            btnTxt: buttonsValues.n2, txtClr: Colors.white),
                      ),
                      Buttons(
                        calcButtons: CalcButtonsModel(
                            btnTxt: buttonsValues.n3, txtClr: Colors.white),
                      ),
                      Buttons(
                        calcButtons: CalcButtonsModel(
                            btnTxt: buttonsValues.add, txtClr: Colors.cyan),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Buttons(
                        calcButtons: CalcButtonsModel(
                            btnTxt: buttonsValues.com, txtClr: Colors.white),
                      ),
                      Buttons(
                        calcButtons: CalcButtonsModel(
                            btnTxt: buttonsValues.n0, txtClr: Colors.white),
                      ),
                      Buttons(
                        calcButtons: CalcButtonsModel(
                            btnTxt: buttonsValues.dot, txtClr: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.cyan,
                          child: const Text('=',
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
