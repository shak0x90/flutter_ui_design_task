import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_design_task/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 34,
                bottom: 18,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/Group 3119.svg'),
                  Row(
                    children: [
                      SvgPicture.asset('assets/Frame.svg'),
                      const SizedBox(
                        width: 4,
                      ),
                      Text("Agrabad 435, Chittagong"),
                    ],
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/my_img.png'),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 47, right: 47),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      )),
                  hintText: "Search",
                  hintStyle:
                      GoogleFonts.inter(fontSize: 12, color: Color(0XFF9CA3AF)),
                  fillColor: Color(0XFFE6E7E9),
                  prefixIcon: Container(
                    width: 16,
                    margin: const EdgeInsets.only(left: 27, right: 6),
                    child: SvgPicture.asset(
                      "assets/search_icon.svg",
                      width: 16,
                      height: 16,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 17, right: 17, top: 28, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today New Arivable",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF1F2937),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Best of the today  food list update",
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          color: Color(0XFF6B7280),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "See All",
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          color: Color(0XFF6B7280),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Color(0XFF89909E),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 36),
              height: 202,
              // Should use Listview.builder but for test purpose i used only ListView with 3 child.
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.only(left: 18),
                scrollDirection: Axis.horizontal,
                children: const [
                  SingleProductCard(
                    title: "Chicken Biriyani",
                    address: "Ambrosia Hotel & Restaurant",
                    imagePath: kProductImage1,
                  ),
                  SizedBox(width: 12),
                  SingleProductCard(
                    title: "Sauce Tonkatsu",
                    address: "Handi Restaurant, Chittagong",
                    imagePath: kProductImage2,
                  ),
                  SizedBox(width: 12),
                  SingleProductCard(
                    title: "Chicken Biriyani",
                    address: "Ambrosia Hotel & Restaurant",
                    imagePath: kProductImage3,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 17,
                right: 17,
                bottom: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Explore Restaurant",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF1F2937),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Check your city Near by Restaurant",
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          color: Color(0XFF6B7280),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "See All",
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          color: Color(0XFF6B7280),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Color(0XFF89909E),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  SingleRestrurants(
                    title: "Ambrosia Hotel & Restaurant",
                    address: "Ambrosia Hotem & Restrurant",
                    imagePath: kProductImage1,
                  ),
                  SingleRestrurants(
                    title: "Ambrosia Hotel & Restaurant",
                    address: "Ambrosia Hotem & Restrurant",
                    imagePath: kProductImage1,
                  ),
                  SingleRestrurants(
                    title: "Ambrosia Hotel & Restaurant",
                    address: "Ambrosia Hotem & Restrurant",
                    imagePath: kProductImage1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SingleRestrurants extends StatelessWidget {
  const SingleRestrurants({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.address,
  }) : super(key: key);
  final String imagePath;
  final String title;
  final String address;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(
        left: 17,
        right: 17,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.06),
            blurRadius: 4,
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 64,
            width: 64,
            margin: EdgeInsets.only(left: 12, right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imagePath,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF1F2937),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/Frame.svg'),
                      const SizedBox(
                        width: 5.7,
                      ),
                      SizedBox(
                        width: 130,
                        child: Text(
                          address,
                          maxLines: 2,
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: Color(0XFF6B7280),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 88,
                    height: 28,
                    decoration: BoxDecoration(
                        color: Color(0XFF32B768),
                        borderRadius: BorderRadius.circular(8)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Book",
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class SingleProductCard extends StatelessWidget {
  const SingleProductCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.address,
  }) : super(key: key);
  final String imagePath;
  final String title;
  final String address;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 148,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.04),
              blurRadius: 8,
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 20,
          left: 10,
          right: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 103,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF1F2937),
              ),
            ),
            const SizedBox(height: 4),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/Frame.svg'),
                const SizedBox(
                  width: 5.7,
                ),
                Expanded(
                    child: Text(
                  address,
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: Color(0XFF6B7280),
                  ),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
