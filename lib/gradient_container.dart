import 'package:flutter/material.dart';


const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // const GradientContainer(this.color1, this.color2, this.color3, {super.key});

   GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.purple,
        color3 = Colors.pink;

  final Color color1;
  final Color color2;
  final Color color3;
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2, color3],
            begin: startAlignment,
            end: endAlignment),
      ),
      child: Center(
        
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Image(image: AssetImage(activeDiceImage), 
        width: 200,
        ),
        const SizedBox(height: 20,),
        TextButton(onPressed: 
        rollDice,
        style: TextButton.styleFrom(
          // padding: EdgeInsets.only(top: 20,),
          foregroundColor: Colors.white, textStyle: const TextStyle(fontSize: 25),), 
        child: const Text("Roll Dice"),)
        ],
        ),
      ),
    );
  }
}
