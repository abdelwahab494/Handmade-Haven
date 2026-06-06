import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:handmade/core/extensions/app_sizes_extenstion.dart';
import 'package:handmade/core/manager/app_assets.dart';
import 'package:handmade/core/manager/app_colors.dart';
import 'package:handmade/core/models/explore_item.dart';

class ExploreSection extends StatelessWidget {
  const ExploreSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ExploreItem> exploreItems = [
      ExploreItem(
        color: AppColors.FF7B6B.withValues(alpha: 0.1),
        icon: AppAssets.cart,
        title: "Handmade\nBags",
        subTitle: "Unique totes &\npurses",
      ),
      ExploreItem(
        color: AppColors.B8A5F5.withValues(alpha: 0.1),
        icon: AppAssets.stars,
        title: "Jewelry &\nAccessories",
        subTitle: "Handcrafted\nelegance",
      ),
      ExploreItem(
        color: AppColors.FFB69E.withValues(alpha: 0.1),
        icon: AppAssets.flare,
        title: "Scented\nCandles",
        subTitle: "Aromatherapy bliss",
      ),
      ExploreItem(
        color: AppColors.CC9C9.withValues(alpha: 0.1),
        icon: AppAssets.box,
        title: "Crochet Items",
        subTitle: "Cozy handmade\npieces",
      ),
      ExploreItem(
        color: AppColors.FFB4C8.withValues(alpha: 0.1),
        icon: AppAssets.home,
        title: "Home Decor",
        subTitle: "Artisan home\naccents",
      ),
    ];
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 100.wd),
      sliver: SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: .center,
          children: [
            Text(
              "Explore Our Collections",
              style: GoogleFonts.playfairDisplay(
                fontWeight: .w700,
                fontSize: 45.fs,
                color: AppColors.D1B15,
              ),
            ),
            Gap(16.hg),
            Text(
              "From handmade bags to artisan home decor, find the perfect piece that\nspeaks to you",
              style: GoogleFonts.inter(
                color: AppColors.B7B73,
                fontWeight: .w400,
                fontSize: 18.fs,
              ),
              textAlign: .center,
            ),
            Gap(44.hg),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: List.generate(exploreItems.length, (index) {
                final item = exploreItems[index];
                return Container(
                  width: 200.wd,
                  height: 330.hg,
                  padding: EdgeInsets.all(33.rd),
                  decoration: BoxDecoration(
                    color: item.color,
                    borderRadius: BorderRadius.circular(24.rd),
                  ),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Gap(24.hg),
                      SvgPicture.asset(
                        item.icon,
                        width: 32.wd,
                        colorFilter: const ColorFilter.mode(
                          AppColors.FFB69E,
                          .srcIn,
                        ),
                      ),
                      Gap(40.hg),
                      Text(
                        item.title,
                        style: GoogleFonts.playfairDisplay(
                          fontWeight: .w700,
                          color: AppColors.D1B15,
                          fontSize: 20.fs,
                        ),
                      ),
                      Gap(8.hg),
                      Text(
                        item.subTitle,
                        style: GoogleFonts.dmSans(
                          fontWeight: .w400,
                          color: AppColors.B7B73,
                          fontSize: 14.fs,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
