import 'package:flutter/material.dart';
import 'package:podcast/components/BasicComponent.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podcast/pages/PlayPage.dart';

class ComplexeComponent {
  // ignore: prefer_function_declarations_over_variables
  static void onPressed(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => const PlayPage(),
      ),
    );
  }

  Stack itemStack(BuildContext context, String path, String artisteName,
      String musicName, String duration) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 31, 20, 20),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image(image: AssetImage(path)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BasicComponent().basicInfoTextGreen(musicName),
              BasicComponent().basicTextBoldWhite(artisteName),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SvgPicture.asset("assets/images/Vector.svg"),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 7, right: 10),
                  child: Row(
                    children: [
                      BasicComponent().basicInfoTextWhite(duration),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          onPressed(context);
                        },
                        child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.orange,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: SvgPicture.asset("assets/images/play.svg"),
                            )),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ],
    );
  }

  Container card(String path, String label) {
    return Container(
        width: 80.sp,
        height: 80.sp,
        margin: EdgeInsets.only(right: 15.sp),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: const Color(0x0D19224C),
                width: 1,
                style: BorderStyle.solid)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            SvgPicture.asset(path),
            const Padding(padding: EdgeInsets.only(bottom: 2)),
            Text(
              label,
              style: const TextStyle(
                  color: Colors.grey, fontSize: 10, fontFamily: 'Open Sans'),
            )
          ]),
        ));
  }
}
