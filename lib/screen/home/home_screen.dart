import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_2/screen/home/components/body.dart';
import 'package:task_2/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: BuildAppBar(),
      body: Body(),
    );
  }

  AppBar BuildAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icon/Menu.svg"),
      ),
      centerTitle: true,
      title: Image.asset(
        "assets/img/logo.png",
        height: 100,
        width: 100,
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icon/search.svg"),
        ),
        SizedBox(
          width: SizeConfig.defaultSize! * 0.5,
        )
      ],
    );
  }
}
