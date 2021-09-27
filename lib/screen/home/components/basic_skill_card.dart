import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_2/models/BasicSkills.dart';

import '../../../size_config.dart';

class BasicSkillCard extends StatelessWidget {
  final BasicSkill basicSkill;

  const BasicSkillCard({Key? key, required this.basicSkill}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize;
    return AspectRatio(
      aspectRatio: 1.65,
      child: Container(
        decoration: BoxDecoration(
          color: basicSkill.color,
          borderRadius: BorderRadius.circular(defaultSize! * 1.8), // 18
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(defaultSize * 2), //20
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Text(
                      basicSkill.title,
                      style: TextStyle(
                        fontSize: defaultSize * 2.2, // 22
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: defaultSize * 0.5), // 5
                    Text(
                      basicSkill.description,
                      style: const TextStyle(
                        color: Colors.white54,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    BuildInfoRow(
                      defaultSize,
                      iconSrc: "assets/icon/book.svg",
                      text: "${basicSkill.recipes} Module",
                    ),
                    SizedBox(height: defaultSize * 0.5), // 5
                    BuildInfoRow(
                      defaultSize,
                      iconSrc: "assets/icon/people.svg",
                      text: "${basicSkill.chefs} Resource",
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            SizedBox(width: defaultSize * 0.5), // 5
            AspectRatio(
              aspectRatio: 0.71,
              child: Image.asset(
                basicSkill.imageSrc,
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row BuildInfoRow(double defaultSize, {required String iconSrc, text}) {
    return Row(
      children: <Widget>[
        SvgPicture.asset(iconSrc),
        SizedBox(width: defaultSize), // 10
        Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
