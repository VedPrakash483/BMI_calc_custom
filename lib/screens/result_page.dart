import 'package:flutter/material.dart';
import 'input_page.dart';
import 'package:bmi_calc/components//constants.dart';


String typeofbmi(double bmi) {
  if (bmi < 18.5) {
    return "UNDERWEIGHT";
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    return "NORMAL WEIGHT";
  } else if (bmi >= 25.0 && bmi <= 29.9) {
    return "OVERWEIGHT";
  } else {
    return "OBESITY";
  }
}

  class results extends StatelessWidget {
  const results({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0,top: 45.0,bottom: 15.0),
                  child: Text(
                      'Your Result',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: kboxcolor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 200.0,
                  width: 200.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                          typeofbmi(getBMI()),
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.green[500],
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Text(finalBMI.toStringAsFixed(2),
                        style: TextStyle(
                          fontSize: 80.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: Container(
                margin: EdgeInsets.only(top: 10.0),
                height: kbottomboxHeight,
                width: double.infinity,
                color: Color(0xFFEB1555),
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}