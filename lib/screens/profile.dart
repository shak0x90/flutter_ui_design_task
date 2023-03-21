import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_design_task/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 61),
            width: MediaQuery.of(context).size.width - 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.06),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/my_img.png'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Shakil Ahmed", style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w500),),
                      Text("hridoyhussainshakil@gmail.com"),
                    ],
                  ),
                  SvgPicture.asset(kImageAssets11),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.06),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        kImageAssets12,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Account Setting",
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          color: Color(0XFF374151),
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(kImageAssets13),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.06),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                children: const[
                  SingleSettings(
                    imagePath: kImageAssets16,
                    title: "Language",
                    icon: kIconBack,
                  ),
                  SingleSettings(
                    imagePath: kImageAssets15,
                    title: "Feedback",
                    icon: kIconBack,
                  ),
                  SingleSettings(
                    imagePath: kImageAssets14,
                    title: "Rate Us",
                    icon: kIconBack,
                  ),
                  SingleSettings(
                    imagePath: kImageAssets17,
                    title: "New Version",
                    icon: kIconBack,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SingleSettings extends StatelessWidget {
  const SingleSettings({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final String imagePath;
  final String title;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                imagePath,
              ),
              const SizedBox(
                width: 7,
              ),
              Text(
                title,
                style: GoogleFonts.inter(
                  fontSize: 18,
                  color: Color(0XFF374151),
                ),
              ),
            ],
          ),
          SvgPicture.asset(icon),
        ],
      ),
    );
  }
}
