import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_apps_flutter/utils/constants.dart';

class Container6 extends StatefulWidget {
  const Container6({super.key});

  @override
  State<Container6> createState() => _Container6State();
}

class _Container6State extends State<Container6> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenTypeLayout(
        mobile: MobileContainer6(),
        desktop: DesktopContainer6(),
      ),
    );
  }

  //======== DESKTOP ========

  Widget DesktopContainer6() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: w! / 10,
        vertical: 30,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'The Product we \nwork with.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: w! / 20,
                  height: 1.1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Tellus lacus morbi sagittis lacus in. \nAmet nisi at mauris enim accumsan \nnisi, tincidunt vel. Enim ipsum, at \nquis ullamcorper eget ut.',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Cross Platform',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Elit esse cillum dolore eu fugiat nulla \npariatur',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Cross Platform',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Elit esse cillum dolore eu fugiat nulla \npariatur',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Cross Platform',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Elit esse cillum dolore eu fugiat nulla \npariatur',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, color: Colors.grey.shade500),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  // ======== MOBILE ========

  Widget MobileContainer6() {
    return Container();
  }
}
