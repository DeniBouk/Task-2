import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_2/models/BasicSkills.dart';
import 'package:task_2/size_config.dart';

import 'basic_skill_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 2),
            child: GridView.builder(
              itemCount: basicSkill.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 20,
                childAspectRatio: 1.65,
              ),
              itemBuilder: (context, index) => BasicSkillCard(
                basicSkill: basicSkill[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
