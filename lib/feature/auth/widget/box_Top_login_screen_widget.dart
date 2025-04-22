import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class BoxTopLoginScreenWidget extends StatelessWidget {
  const BoxTopLoginScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 50,
          child: Transform.rotate(
            angle: .25,
            child: Container(
              width: 100,
              height: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // لون الظل
                    blurRadius: 10, // مدى نعومة الظل
                    offset: Offset(0, 0), // الاتجاه (أفقي، رأسي)
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: SvgPicture.asset("assets/images/box_gray.svg"),
        ),
        Transform.rotate(
          angle: .25,
          child: Container(
            width: 260,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),

              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // لون الظل
                  blurRadius: 10, // مدى نعومة الظل
                  offset: Offset(0, 0), // الاتجاه (أفقي، رأسي)
                ),
              ],
            ),
          ),
        ),
        SvgPicture.asset("assets/images/box_blue.svg"),
      ],
    );
  }
}
