import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_apps_flutter/utils/colors.dart';
import 'package:web_apps_flutter/utils/constants.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenTypeLayout(
        mobile: MobileContainer1(),
        desktop: DesktopContainer1(),
      ),
    );
  }

  //======= DESKTOP ======

  Widget DesktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: w! / 10,
        vertical: 20,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Track your \nExpenses to \nSave Money',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: w! / 20,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Helps you to organize your income and expenses',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 45,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(AppColors.primary),
                          ),
                          onPressed: () {},
                          label: const Text('Try free Demo'),
                          icon: const Icon(Icons.arrow_drop_down),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        '- Web, iOs and Android',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 530,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(illustration1), fit: BoxFit.contain)),
            ),
          ),
        ],
      ),
    );
  }

  //======= MOBILE =======

  Widget MobileContainer1() {
    return Container(
      child: Column(
        children: [
          Container(
            height: w! / 1.2,
            width: w! / 1.2,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(illustration1), fit: BoxFit.contain)),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Track your \nExpenses to \nSave Money',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: w! / 10,
              height: 1.2,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Helps you to organize your income and expenses',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 45,
            child: ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColors.primary),
              ),
              onPressed: () {},
              label: const Text('Try free Demo'),
              icon: const Icon(Icons.arrow_drop_down),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            '- Web, iOs and Android',
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
