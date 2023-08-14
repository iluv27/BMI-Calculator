import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color? colours;
  final Widget? cardChild;
  final Function()? onPress;

  const ReusableCard({super.key, this.colours, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: colours,
            borderRadius: BorderRadius.circular(15),
          ),
          child: cardChild,
        ),
      ),
    );
  }
}
