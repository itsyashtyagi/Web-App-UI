import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_apps_flutter/utils/constants.dart';
import 'package:web_apps_flutter/widgets/common_container.dart';

class Container5 extends StatefulWidget {
  const Container5({super.key});

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenTypeLayout(
        mobile: MobileContainer5(),
        desktop: DesktopContainer5(),
      ),
    );
  }

  // ====== DESKTOP =======

  Widget DesktopContainer5() {
    return commonContainer(
      'Use anytime',
      'Use anytime \nwhen you \nneed',
      'Tellus lacus morbi sagittis lacus in. Amet nisi at \nmauris enim accumsan nisi, tincidunt vel. Enim \nipsum, amet quis ullamcorper eget ut.',
      illustration3,
      false,
    );
  }

  // ======= MOBILE =======
  Widget MobileContainer5() {
    return commonConatinerMobile(
      'Use anytime',
      'Use anytime \nwhen you \nneed',
      'Tellus lacus morbi sagittis lacus in. Amet nisi at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      illustration3,
    );
  }
}
