import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:handmade/core/extensions/app_sizes_extenstion.dart';
import 'package:handmade/core/manager/app_assets.dart';
import 'package:handmade/core/manager/app_colors.dart';
import 'package:handmade/features/home/widgets/custom_gradient_button.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height - 110,
        padding: EdgeInsets.symmetric(horizontal: 100.wd),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentGeometry.topLeft,
            end: AlignmentGeometry.bottomRight,
            colors: [
              AppColors.FFEFE8,
              AppColors.FFEAF2,
              AppColors.F8EBF7,
              AppColors.ECF3FE,
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          crossAxisAlignment: .center,
          children: [
            Column(
              crossAxisAlignment: .start,
              mainAxisAlignment: .center,
              mainAxisSize: .max,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 9.hg,
                    horizontal: 33.wd,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000.rd),
                    border: Border.all(
                      color: AppColors.FF7B6B.withValues(alpha: 0.3),
                    ),
                    gradient: LinearGradient(
                      begin: AlignmentGeometry.centerLeft,
                      end: AlignmentGeometry.centerRight,
                      colors: [
                        AppColors.FFB69E.withValues(alpha: 0.2),
                        AppColors.FF7B6B.withValues(alpha: 0.2),
                      ],
                    ),
                  ),
                  child: Row(
                    spacing: 8.wd,
                    children: [
                      SvgPicture.asset(AppAssets.stars),
                      Text(
                        "New Collection 2025",
                        style: GoogleFonts.dmSans(
                          color: AppColors.D1B15,
                          fontSize: 14.fs,
                          fontWeight: .w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(40.hg),
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.playfairDisplay(
                      color: AppColors.D1B15,
                      fontWeight: .bold,
                      fontSize: 64.fs,
                    ),
                    children: [
                      const TextSpan(text: "Crafted With "),
                      TextSpan(
                        text: "Love\n",
                        style: GoogleFonts.playwriteUsTrad(
                          color: AppColors.FF7B6B,
                        ),
                      ),
                      const TextSpan(text: "Made by Hand"),
                    ],
                  ),
                ),
                Gap(18.hg),
                Text(
                  "Explore our curated collection of artisan-crafted products. \nEach piece tells a story of creativity, passion, and exceptional \ncraftsmanship.",
                  style: GoogleFonts.dmSans(
                    color: AppColors.B7B73,
                    fontWeight: .w400,
                    fontSize: 18.fs,
                  ),
                ),
                Gap(42.hg),
                Row(
                  spacing: 40.wd,
                  children: [
                    CustomGradientButton(
                      padding: EdgeInsets.symmetric(
                        vertical: 18.hg,
                        horizontal: 30.wd,
                      ),
                      child: Row(
                        spacing: 8.wd,
                        children: [
                          Text(
                            "Shop Now",
                            style: GoogleFonts.dmSans(
                              color: AppColors.FFFFFF,
                              fontWeight: .w600,
                              fontSize: 18.fs,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_rounded,
                            color: AppColors.FFFFFF,
                          ),
                        ],
                      ),
                    ),
                    CustomGradientButton(
                      isReversed: true,
                      padding: EdgeInsets.symmetric(
                        vertical: 18.hg,
                        horizontal: 20.wd,
                      ),
                      child: Text(
                        "View Collection",
                        style: GoogleFonts.inter(
                          color: AppColors.FF9985,
                          fontWeight: .w600,
                          fontSize: 18.fs,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: .center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            _buildImage(AppAssets.intro1),
                            Gap(24.hg),
                            _buildImage(AppAssets.intro2),
                          ],
                        ),
                      ),
                      Gap(26.wd),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 38.hg),
                          child: Column(
                            children: [
                              _buildImage(AppAssets.intro3),
                              Gap(24.hg),
                              _buildImage(AppAssets.intro4),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(String image) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.rd),
      child: AspectRatio(
        aspectRatio: 1,
        child: Image.asset(image, fit: BoxFit.cover),
      ),
    );
  }
}
