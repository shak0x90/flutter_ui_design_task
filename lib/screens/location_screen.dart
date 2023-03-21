import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_design_task/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(kImageAssets7)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 33,right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
              Container(
                width: MediaQuery.of(context).size.width - 170,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
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
                    fillColor: Colors.white,
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
              const CircleAvatar(
                backgroundImage: AssetImage('assets/my_img.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
