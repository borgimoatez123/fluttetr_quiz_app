import 'package:flutter/material.dart';
import 'MyTextstyle.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key}); // take 2 varbiles of colros 

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2], // put here
          begin: startAlignment,
          end: endAlignment,
        ),
      ),

      child: Center(
        child: Column(
            mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset( // alors take more then one become children not a 1 chlid
              'assets/images/quiz-logo.png',
              width: 300,
              height: 200,
            ),
            const SizedBox(height: 50), // add space between image and text
            MyTextstyle('learn flutter fun way'),
            OutlinedButton(
              onPressed: null,
              child: Text(
                "start quiz ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
