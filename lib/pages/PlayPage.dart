import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podcast/components/BasicComponent.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({super.key});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  final List<bool> _isSelected = [false, true];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 48,
                      width: 48,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0x0D0C0E12),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Icon(
                        Icons.chevron_left,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.sp),
                    child: BasicComponent().basicMediumTextBold("Jouons"),
                  ),
                  const Spacer(),
                  Container(
                    height: 48,
                    width: 48,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color(0x0D0C0E12),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Icon(
                      Icons.more_vert,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 10),
                child: ToggleButtons(
                  isSelected: _isSelected,
                  selectedColor: Colors.white,
                  color: Colors.black54,
                  borderColor: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  fillColor: Colors.black87,
                  constraints:
                      const BoxConstraints(minWidth: 70, minHeight: 30),
                  onPressed: (int index) {
                    setState(() {
                      if (index == 0) {
                        _isSelected[index] = !_isSelected[index];
                        _isSelected[index + 1] = false;
                      } else {
                        _isSelected[index] = !_isSelected[index];
                        _isSelected[index - 1] = false;
                      }
                    });
                  },
                  children: const [
                    Text('Option 1'),
                    Text('Option 2'),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Stack(children: [
                Image.asset("assets/images/Rectangle.png"),
                Positioned(
                  right: 20,
                  top: 20,
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                        color: Colors.white70, shape: BoxShape.circle),
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BasicComponent().basicMediumTextBold("The boy who flew"),
                  Row(
                    children: [
                      BasicComponent().basicInfoTextGrey("jane cooper"),
                      const Spacer(),
                      const Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: BasicComponent().basicRegularTextBold(' 5.0'),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 15.sp, right: 15.sp),
              child: Row(
                children: [
                  BasicComponent().basicInfoTextGrey("01:20"),
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/images/Frame.svg",
                    color: Colors.grey,
                  ),
                  const Spacer(),
                  BasicComponent().basicInfoTextGrey("04:10"),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 25.sp, right: 25.sp),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/images/volume.svg",
                    color: const Color.fromARGB(137, 29, 29, 29),
                  ),
                  const Spacer(),
                  const Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        Icons.rotate_left,
                        color: Color.fromARGB(137, 29, 29, 29),
                        weight: 0.1,
                        size: 32,
                      ),
                      Text(
                        '15',
                        style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(137, 29, 29, 29)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 45,
                    width: 45,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.deepOrange),
                    child: const Icon(
                      Icons.pause,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  const Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        Icons.rotate_right,
                        color: Color.fromARGB(137, 29, 29, 29),
                        weight: 0.1,
                        size: 32,
                      ),
                      Text(
                        '15',
                        style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(137, 29, 29, 29)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/images/repeat.svg",
                    color: const Color.fromARGB(137, 29, 29, 29),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
