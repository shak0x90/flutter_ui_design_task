import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_design_task/constants.dart';
import 'package:flutter_ui_design_task/main.dart';
import 'package:flutter_ui_design_task/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: SvgPicture.asset(kImageAssets4)),
                const SizedBox(height: 55),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 64),
                  child: Column(
                    children: [
                      Text(
                        "Welcome",
                        style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF1F2937),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        textAlign: TextAlign.center,
                        "Before enjoying Foodmedia services Please register first",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Color(0XFF4B5563),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 49,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Color(0XFF32B768),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Align(
                      alignment: Alignment
                          .center, // Align however you like (i.e .centerRight, centerLeft)
                      child: Text(
                        "Create Account",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color(
                            0XFFFFFFFF,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => BottomAppBars()),
                    );
                  },
                  child: Container(
                    height: 49,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Color(0XFFD1FAE5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Align(
                      alignment: Alignment
                          .center, // Align however you like (i.e .centerRight, centerLeft)
                      child: Text(
                        "Login",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color(
                            0XFF10B981,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(bottom: 62, left: 16, right: 19),
            child: Text(
                textAlign: TextAlign.center,
                "By logging in or registering, you have agreed to the Terms and Conditions and Privacy Policy."),
          ),
        ],
      ),
    );
  }
}
