import 'package:flutter/material.dart';
import 'package:web_apps_flutter/utils/colors.dart';
import 'package:web_apps_flutter/utils/constants.dart';

Widget commonContainer(
    String s1, String s2, String s3, String image, bool imageleft) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(
      horizontal: w! / 10,
      vertical: 30,
    ),
    child: Row(
      children: [
        imageleft
            ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.contain,
                  )),
                ),
              )
            : Container(),
        Expanded(
          child: Column(
            crossAxisAlignment:
                imageleft ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                s1.toUpperCase(),
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                s2,
                textAlign: imageleft ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  height: 1.1,
                  fontSize: w! / 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                s3,
                textAlign: imageleft ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: AppColors.primary,
                ),
                label: Text(
                  'Learn more',
                  style: TextStyle(color: AppColors.primary),
                ),
              ),
            ],
          ),
        ),
        !imageleft
            ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    ),
  );
}

Widget commonConatinerMobile(String s1, String s2, String s3, String image) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(
      vertical: 30,
      horizontal: w! / 10,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          s1.toUpperCase(),
          style: TextStyle(
            color: Colors.grey.shade500,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          s2,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: w! / 10,
            fontWeight: FontWeight.bold,
            height: 1.1,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          s3,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey.shade500,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: AppColors.primary,
          ),
          label: Text(
            'Learn more',
            style: TextStyle(color: AppColors.primary),
          ),
        ),
      ],
    ),
  );
}
