import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:handmade/core/extensions/app_sizes_extenstion.dart';
import 'package:handmade/core/manager/app_assets.dart';
import 'package:handmade/core/manager/app_colors.dart';
import 'package:handmade/core/models/choose_item.dart';

class ChooseSection extends StatelessWidget {
  const ChooseSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChooseItem> chooseItems = [
      ChooseItem(
        title: "Made with Love",
        subTitle:
            "Each item is handcrafted\nwith care and attention\nto detail",
        icon: AppAssets.heart,
        color: AppColors.FF7B6B.withValues(alpha: 0.1),
      ),
      ChooseItem(
        title: "Premium Quality",
        subTitle: "We use only the finest\nmaterials for lasting\nbeauty",
        icon: AppAssets.achivement,
        color: AppColors.B8A5F5.withValues(alpha: 0.1),
      ),
      ChooseItem(
        title: "Fast Shipping",
        subTitle: "Free shipping on orders\nover \$50 worldwide",
        icon: AppAssets.van,
        color: AppColors.CC9C9.withValues(alpha: 0.1),
      ),
      ChooseItem(
        title: "Secure Shopping",
        subTitle: "Your purchase is\nprotected with our\nguarantee",
        icon: AppAssets.sheild,
        color: AppColors.FFB69E.withValues(alpha: 0.1),
      ),
    ];
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 100.wd),
      sliver: SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: .center,
          children: [
            Text(
              "Why Choose Us",
              style: GoogleFonts.playfairDisplay(
                fontWeight: .w700,
                fontSize: 45.fs,
                color: AppColors.D1B15,
              ),
            ),
            Gap(16.hg),
            Text(
              "Experience the difference of authentic handmade craftsmanship",
              style: GoogleFonts.inter(
                color: AppColors.B7B73,
                fontWeight: .w400,
                fontSize: 18.fs,
              ),
              textAlign: .center,
            ),
            Gap(44.hg),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: List.generate(chooseItems.length, (index) {
                  final item = chooseItems[index];
                  return Container(
                    width: 250.wd,
                    padding: EdgeInsets.all(33.rd),
                    decoration: BoxDecoration(
                      color: item.color,
                      borderRadius: BorderRadius.circular(24.rd),
                    ),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Gap(24.hg),
                        Container(
                          padding: EdgeInsets.all(14.wd),
                          decoration: BoxDecoration(
                            color: AppColors.FFFFFF,
                            borderRadius: BorderRadius.circular(16.rd),
                            boxShadow: [
                              const BoxShadow(
                                color: Colors.black12,
                                offset: Offset(2, 2),
                                blurRadius: 6,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: SvgPicture.asset(item.icon),
                        ),
                        Gap(24.hg),
                        Text(
                          item.title,
                          style: GoogleFonts.playfairDisplay(
                            fontWeight: .w700,
                            color: AppColors.D1B15,
                            fontSize: 20.fs,
                          ),
                        ),
                        Gap(12.hg),
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
            ),
          ],
        ),
      ),
    );
  }
}
