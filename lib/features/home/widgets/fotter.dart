import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:handmade/core/extensions/app_sizes_extenstion.dart';
import 'package:handmade/core/manager/app_assets.dart';
import 'package:handmade/core/manager/app_colors.dart';

class Fotter extends StatelessWidget {
  const Fotter({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        crossAxisAlignment: .start,
        mainAxisAlignment: .spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: .start,
            children: [
              RichText(
                text: TextSpan(
                  style: GoogleFonts.inriaSerif(
                    fontWeight: .w700,
                    fontSize: 32.fs,
                  ),
                  children: [
                    TextSpan(
                      text: "Handmade",
                      style: GoogleFonts.inriaSerif(color: AppColors.FF6B5E),
                    ),
                    TextSpan(
                      text: "Haven",
                      style: GoogleFonts.inriaSerif(color: AppColors.tertiary),
                    ),
                  ],
                ),
              ),
              Gap(23.hg),
              Row(
                spacing: 16.wd,
                children: [
                  SvgPicture.asset(AppAssets.facebook),
                  SvgPicture.asset(AppAssets.instagram),
                  SvgPicture.asset(AppAssets.tiktok),
                ],
              ),
            ],
          ),
          Column(
            spacing: 16.hg,
            crossAxisAlignment: .start,
            children: [
              _buildText("About"),
              _buildText("Blog"),
              _buildText("Terms of service"),
              _buildText("Products"),
            ],
          ),
          Column(
            spacing: 16.hg,
            crossAxisAlignment: .start,
            children: [
              _buildText("Contact us"),
              _buildText("Support"),
              _buildText("Privacy Policy"),
              _buildText("FAQ"),
            ],
          ),
        ],
      ),
    );
  }

  Text _buildText(String text) {
    return Text(
      text,
      style: GoogleFonts.raleway(
        color: const Color(0xff606060),
        fontWeight: .w400,
        fontSize: 23.fs,
      ),
    );
  }
}
