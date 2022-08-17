import 'package:flutter/material.dart';

class DashDivider extends StatelessWidget {
  final Color color;
  const DashDivider({Key? key, this.color = Colors.grey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 20,
        child: Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              20,
              (index) => Text(
                    "-",
                    style: TextStyle(color: color.withOpacity(0.5)),
                  )),
        ),
      ),
    );
  }
}
