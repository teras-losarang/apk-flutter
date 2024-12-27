import 'package:flutter/material.dart';
import 'package:myapp/common/widgets/shapes/containers/circular_container.dart';
import 'package:myapp/util/constants/colors.dart';

import '../curve_edges/curved_edges_widget.dart';

class HPrimaryHeaderContainer extends StatelessWidget {
  const HPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return HCurvesEdgesWidget(
      child: Container(
        color: HColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: HCircularContainer(
                  backgroundColor: HColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: HCircularContainer(
                  backgroundColor: HColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
