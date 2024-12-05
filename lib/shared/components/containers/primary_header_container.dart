import 'package:flutter/material.dart';
import 'package:futrent_mobile/shared/components/common/curved_edges_widget.dart';
import 'package:futrent_mobile/shared/components/containers/circular_container.dart';
import 'package:futrent_mobile/shared/styles/colors.dart';
import 'package:futrent_mobile/shared/utils/device_utility.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);
    return CurvedEdgesWidget(
      child: Container(
        color: dark ? darkGreen : lightGreen,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            const Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                    backgroundColor: Color.fromRGBO(255, 255, 255, 0.4))),
            const Positioned(
                top: 100,
                right: -300,
                child: CircularContainer(
                    backgroundColor: Color.fromRGBO(255, 255, 255, 0.4))),
            child,
          ],
        ),
      ),
    );
  }
}
