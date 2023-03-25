import 'package:flutter/material.dart';

class FractionallySizedBoxIcon extends StatelessWidget {
  final double widthFactor;
  final Color color;
  final IconData icon;

  const FractionallySizedBoxIcon({
    Key? key,
    this.widthFactor = 1,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Flexible(
            child: FractionallySizedBox(
              alignment: Alignment.topLeft,
              widthFactor: widthFactor,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  color: color,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Icon(
            icon,
            size: 35,
          ),
        ],
      ),
    );
  }
}
