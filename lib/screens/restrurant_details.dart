import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_design_task/constants.dart';
import 'package:flutter_ui_design_task/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class RestrutrantDetails extends StatefulWidget {
  const RestrutrantDetails({Key? key}) : super(key: key);

  @override
  State<RestrutrantDetails> createState() => _RestrutrantDetailsState();
}

class _RestrutrantDetailsState extends State<RestrutrantDetails> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.65;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0XFF32B768),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16))),
              child: Row(
                children: [
                  Container(
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            )),
                        Text(
                          "Details Restrurants",
                          style: GoogleFonts.inter(
                              fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 18, right: 18, top: 20, bottom: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.06),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today New Arivable",
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF1F2937),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          SvgPicture.asset('assets/Frame.svg'),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "kazi Deiry, Taiger Pass,Chittagong",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: Color(0XFF6B7280),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Container(
                        height: 182,
                        width: MediaQuery.of(context).size.width - 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              kProductImage4,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Container(
                        width: MediaQuery.of(context).size.width - 36,
                        padding: const EdgeInsets.only(left: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(kImageAssets5),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "Open today",
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0XFF6B7280),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "10:00 AM - 12:00 PM",
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    color: Color(0XFF1F2937),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(kImageAssets6),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Visit the Restaurant",
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    color: Color(0XFF2C8DFF),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 18, right: 18, bottom: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.06),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
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
                  SingleRestrurants(
                    title: "Ambrosia Hotel & Restaurant",
                    address: "Ambrosia Hotem & Restrurant",
                    imagePath: kProductImage1,
                  ),
                ],
              ),
            ),
            Container(
              height: 85,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.06),
                    blurRadius: 4,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft:  Radius.circular(16)),
              ),
              child: Center(
                child: Container(
                  height: 33,
                  width: 232,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFF32B768),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Booking", style: GoogleFonts.inter(fontSize: 14, color: Colors.white),),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
