import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_apps_flutter/utils/constants.dart';
import 'package:web_apps_flutter/widgets/common_container.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenTypeLayout(
        mobile: MobileContainer4(),
        desktop: DesktopContainer4(),
      ),
    );
  }

  // ====== DESKTOP =======

  Widget DesktopContainer4() {
    return commonContainer(
      'Free Some Cost',
      'Save cost \nfor you and \nfamily',
      'Tellus lacus morbi sagittis lacus in. Amet nisi at \nmauris enim accumsan nisi, tincidunt vel. Enim \nipsum, amet quis ullamcorper eget ut.',
      illustration2,
      true,
    );
  }

  // ======= MOBILE =======
  Widget MobileContainer4() {
    return commonConatinerMobile(
      'Free Some Cost',
      'Save cost \nfor you and \nfamily',
      'Tellus lacus morbi sagittis lacus in. Amet nisi at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      illustration2,
    );
  }
}
