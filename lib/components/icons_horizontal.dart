import 'package:flutter/material.dart';

class IconesDestaquesHorizontais extends StatelessWidget {
  const IconesDestaquesHorizontais({
    super.key,
    required this.image,
    required this.title,
    required this.textColor,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
                width: 55,
                child: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 10, fontFamily: 'Rubik', color: textColor),
                ))
          ],
        ),
      ),
    );
  }
}
