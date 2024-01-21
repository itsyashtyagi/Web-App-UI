import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_apps_flutter/utils/constants.dart';
import 'package:web_apps_flutter/widgets/common_container.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenTypeLayout(
        mobile: MobileContainer3(),
        desktop: DesktopContainer3(),
      ),
    );
  }

  // ====== DESKTOP =======

  Widget DesktopContainer3() {
    return commonContainer(
      'Always Online',
      'Real-time \nsupport \nwith cloud',
      'Tellus lacus morbi sagittis lacus in. Amet nisi at \nmauris enim accumsan nisi, tincidunt vel. Enim \nipsum, amet quis ullamcorper eget ut.',
      illustration1,
      false,
    );
  }

  // ======= MOBILE =======
  Widget MobileContainer3() {
    return commonConatinerMobile(
      'Always Online',
      'Real-time \nsupport \nwith cloud',
      'Tellus lacus morbi sagittis lacus in. Amet nisi at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      illustration1,
    );
  }
}
