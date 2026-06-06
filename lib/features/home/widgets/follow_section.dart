import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:handmade/core/extensions/app_sizes_extenstion.dart';
import 'package:handmade/core/manager/app_assets.dart';
import 'package:handmade/core/manager/app_colors.dart';

class FollowSection extends StatelessWidget {
  const FollowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 100.wd),
      sliver: SliverToBoxAdapter(
        child: Column(
          children: [
            Text(
              "Follow Us on Instagram",
              style: GoogleFonts.playfairDisplay(
                fontWeight: .w700,
                fontSize: 45.fs,
                color: AppColors.D1B15,
              ),
            ),
            Gap(16.hg),
            Text(
              "Join 48k+ who share the love for handmade beauty",
              style: GoogleFonts.inter(
                color: AppColors.B7B73,
                fontWeight: .w700,
                fontSize: 18.fs,
              ),
              textAlign: .center,
            ),
            Gap(44.hg),
            Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                _buildImage(AppAssets.follow1),
                _buildImage(AppAssets.follow2),
                _buildImage(AppAssets.follow3),
                _buildImage(AppAssets.follow4),
                _buildImage(AppAssets.follow5),
                _buildImage(AppAssets.follow6),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _buildImage(String image) {
    return Container(
      width: 170.wd,
      height: 170.wd,
      clipBehavior: .hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.circular(16.rd),
      ),
      child: Image.asset(image, fit: .cover),
    );
  }
}
