import 'package:flutter/material.dart';

class DividerSocialMedia extends StatelessWidget {
  const DividerSocialMedia({
    super.key,
    required this.color,
    required this.valuePadding,
    required this.height,
  });

  final Color color;
  final double valuePadding;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(valuePadding),
      child: Container(
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Divider(
                color: color,
                thickness: 0.5,
                indent: 60,
                endIndent: 5,
              ),
            ),
            Text(
              'Ou entre com',
              style: TextStyle(color: color),
            ),
            Flexible(
              child: Divider(
                color: color,
                thickness: 0.5,
                indent: 5,
                endIndent: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
