import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_design_task/constants.dart';
import 'package:flutter_ui_design_task/screens/auth_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _controller = PageController(initialPage: 0);
  int _activePage = 0;

  onPageChange(int page) {
    setState(() {
      _activePage = page;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  static Widget _singlePageViewWidget(
      {required String image,
      required String title,
      required String subtitle}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Column(
            children: [
              SvgPicture.asset(
                image,
              ),
              const SizedBox(height: 70),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 18),
              SizedBox(
                width: 286,
                child: Text(
                  textAlign: TextAlign.center,
                  subtitle,
                  style: GoogleFonts.inter(
                    color: Color(0XFF4B5563),
                    fontSize: 12,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  final List<Widget> _pageViewWidgets = [
    _singlePageViewWidget(
      image: kImageAssets1,
      title: "Nearby restaurants",
      subtitle:
          "You don't have to go far to find a good restaurant,we have provided all the restaurants that is near you",
    ),
    _singlePageViewWidget(
      image: kImageAssets2,
      title: "Good food at a cheap price",
      subtitle: "You can eat at expensive restaurants with affordable price",
    ),
    _singlePageViewWidget(
      image: kImageAssets3,
      title: "Select the Favorites Menu",
      subtitle:
          "Now eat well, don't leave the house,You can choose your favorite food only with one click",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: PageView(
              controller: _controller,
              onPageChanged: onPageChange,
              children: _pageViewWidgets,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 44, left: 26, right: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const AuthScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Skip",
                    style: GoogleFonts.inter(
                      color: Color(0XFF4B5563),
                      fontSize: 16,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(
                    _pageViewWidgets.length,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: InkWell(
                        onTap: () {
                          _controller.animateToPage(index,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        },
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: _activePage == index
                              ? Color(0XFF32B768)
                              : Color(0XFFE6E6E6),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {
                    if (_activePage != _pageViewWidgets.length - 1) {
                      _controller.jumpToPage(_activePage + 1);
                    } else {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const AuthScreen(),
                        ),
                      );
                    }
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Color(0XFF32B768),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
