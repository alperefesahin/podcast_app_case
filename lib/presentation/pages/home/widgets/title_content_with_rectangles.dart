import 'package:crop_experience_agency_case/presentation/pages/home/widgets/colored_rectangle.dart';
import 'package:flutter/material.dart';

class TitleContentWithRectangles extends StatelessWidget {
  const TitleContentWithRectangles({Key? key, required this.height}) : super(key: key);
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () {},
              child: ColoredRectangle(
                height: height,
                width: 155,
                rightPadding: 0,
                bottomPadding: 0,
                topPadding: 0,
              ));
        },
      ),
    );
  }
}
