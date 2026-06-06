import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:handmade/core/extensions/app_sizes_extenstion.dart';
import 'package:handmade/core/manager/app_assets.dart';
import 'package:handmade/core/manager/app_colors.dart';
import 'package:handmade/features/home/widgets/custom_gradient_button.dart';

class CommunitySection extends StatelessWidget {
  const CommunitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 100.wd),
      sliver: SliverToBoxAdapter(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 64.hg, horizontal: 200.wd),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(48.rd),
            gradient: LinearGradient(
              colors: [
                AppColors.B8A5F5.withValues(alpha: 0.1),
                AppColors.FFB4C8.withValues(alpha: 0.1),
                AppColors.CC9C9.withValues(alpha: 0.1),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              SvgPicture.asset(AppAssets.mail),
              Gap(24.hg),
              Text(
                "Join Our Creative Community",
                style: GoogleFonts.playfairDisplay(
                  fontWeight: .w700,
                  fontSize: 36.fs,
                  color: AppColors.D1B15,
                ),
              ),
              Gap(16.hg),
              Text(
                "Subscribe to get special offers, free giveaways, and handmade\ninspiration delivered to your inbox",
                style: GoogleFonts.playfairDisplay(
                  fontWeight: .w400,
                  fontSize: 18.fs,
                  color: AppColors.B7B73,
                ),
                textAlign: .center,
              ),
              Gap(32.hg),
              Row(
                spacing: 16.wd,
                mainAxisAlignment: .center,
                children: [
                  SizedBox(
                    width: 290.wd,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: GoogleFonts.dmSans(
                          color: const Color(0xFF9A9292),
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                        filled: true,
                        fillColor: const Color(0xFFFDFDFD),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 48,
                          vertical: 32,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1000),
                          borderSide: const BorderSide(
                            color: Color(0xFFFFE6E6),
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1000),
                          borderSide: const BorderSide(
                            color: Color(0xFFFFE6E6),
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1000),
                          borderSide: const BorderSide(
                            color: Color(0xFFFF7B6B),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  CustomGradientButton(
                    padding: EdgeInsets.symmetric(
                      vertical: 22.hg,
                      horizontal: 32.wd,
                    ),
                    child: Text(
                      "Subscribe",
                      style: GoogleFonts.dmSans(
                        fontWeight: .w600,
                        fontSize: 16.fs,
                        color: AppColors.FFFFFF,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
