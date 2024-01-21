import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_apps_flutter/utils/colors.dart';
import 'package:web_apps_flutter/utils/constants.dart';
import 'package:web_apps_flutter/utils/styles.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DesktopNavBar(),
      //tablet: TabletNavBar(),
    );
  }

  //========= MOBILE =========

  Widget MobileNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          navLogo(),
        ],
      ),
    );
  }

  //========= DESKTOP =======

  Widget DesktopNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Features'),
              navButton('About Us'),
              navButton('Pricing'),
              navButton('Feedback'),
            ],
          ),
          Container(
            height: 45,
            child: ElevatedButton(
              style: borderedButtonStyle,
              onPressed: () {},
              child: Text(
                'Request a Demo',
                style: TextStyle(color: AppColors.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //========== TABLET =========

  // Widget TabletNavBar() {
  //   return Container(
  //     margin: const EdgeInsets.symmetric(
  //       horizontal: 20,
  //       vertical: 5,
  //     ),
  //     child: Column(
  //       children: [
  //         navLogo(),
  //         const SizedBox(
  //           height: 10,
  //         ),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             navLogo(),
  //             Container(
  //               height: 45,
  //               child: ElevatedButton(
  //                 style: borderedButtonStyle,
  //                 onPressed: () {},
  //                 child: Text(
  //                   'Request a Demo',
  //                   style: TextStyle(color: AppColors.primary),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //         const SizedBox(
  //           height: 10,
  //         ),
  //         navLogo(),
  //       ],
  //     ),
  //   );
  // }

  Widget navButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget navLogo() {
    return Container(
      width: 110,
      decoration:
          const BoxDecoration(image: DecorationImage(image: AssetImage(logo))),
    );
  }
}
