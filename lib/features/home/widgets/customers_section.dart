import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:handmade/core/extensions/app_sizes_extenstion.dart';
import 'package:handmade/core/manager/app_assets.dart';
import 'package:handmade/core/manager/app_colors.dart';
import 'package:handmade/core/models/customer_item.dart';

class CustomersSection extends StatelessWidget {
  const CustomersSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CustomerItem> customerItems = [
      CustomerItem(
        title: "Sarah Johnson",
        subTitle: "Verified Customer",
        comment:
            '"Absolutely love my handmade bag!\nThe quality is exceptional and the\ncolors are even more vibrant in\nperson. Will definitely order again!"',
        colors: [
          AppColors.FF7B6B.withValues(alpha: 0.05),
          AppColors.FFB69E.withValues(alpha: 0.1),
        ],
        rate: 5,
      ),
      CustomerItem(
        title: "Emily Chen",
        subTitle: "Verified Customer",
        comment:
            '"The crochet blanket is a work of art.\nSo cozy and beautifully made.\nPerfect gift for my daughter!"',
        colors: [
          AppColors.CC9C9.withValues(alpha: 0.05),
          AppColors.B8A5F5.withValues(alpha: 0.1),
        ],
        rate: 5,
      ),
      CustomerItem(
        title: "Jessica Martinez",
        subTitle: "Verified Customer",
        comment:
            '"These candles smell amazing and\nthe packaging is gorgeous. The\nperfect addition to my self-care\nroutine!"',
        colors: [
          AppColors.CC9C9.withValues(alpha: 0.05),
          AppColors.B8A5F5.withValues(alpha: 0.1),
        ],
        rate: 5,
      ),
    ];
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 100.wd),
      sliver: SliverToBoxAdapter(
        child: Column(
          children: [
            Text(
              "What Our Customers Say",
              style: GoogleFonts.playfairDisplay(
                fontWeight: .w700,
                fontSize: 45.fs,
                color: AppColors.D1B15,
              ),
            ),
            Gap(16.hg),
            Text(
              "Join thousands of happy customers who love our handmade products",
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
                children: List.generate(customerItems.length, (index) {
                  final item = customerItems[index];
                  return Container(
                    padding: EdgeInsets.all(32.wd),
                    constraints: BoxConstraints(
                      minHeight: 278.hg,
                      minWidth: 347.wd,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: AlignmentGeometry.topLeft,
                        end: AlignmentGeometry.bottomRight,
                        colors: item.colors,
                      ),
                      borderRadius: BorderRadius.circular(24.rd),
                    ),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Row(
                          spacing: 4.wd,
                          children: List.generate(
                            item.rate,
                            (index) => SvgPicture.asset(AppAssets.starFilled),
                          ),
                        ),
                        Gap(16.hg),
                        Text(
                          item.comment,
                          style: GoogleFonts.dmSans(
                            color: AppColors.D1B15,
                            fontWeight: .w400,
                            fontSize: 14.fs,
                            fontStyle: .italic,
                          ),
                        ),
                        Gap(24.hg),
                        Row(
                          spacing: 12.wd,
                          children: [
                            Container(
                              width: 48.wd,
                              height: 48.wd,
                              decoration: const BoxDecoration(
                                shape: .circle,
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFFFF7B6B),
                                    Color(0xFFF68482),
                                    Color(0xFFF1878C),
                                    Color(0xFFED8B96),
                                    Color(0xFFE8BEA0),
                                    Color(0xFFE392AA),
                                    Color(0xFFDE95B4),
                                    Color(0xFFD997BD),
                                    Color(0xFFD49AC7),
                                    Color(0xFFCF9DD0),
                                    Color(0xFFC99FD9),
                                    Color(0xFFC4A1E3),
                                    Color(0xFFBEA3EC),
                                    Color(0xFFB8A5F5),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  item.title,
                                  style: GoogleFonts.dmSans(
                                    color: AppColors.D1B15,
                                    fontWeight: .w700,
                                    fontSize: 16.fs,
                                  ),
                                ),
                                Text(
                                  item.subTitle,
                                  style: GoogleFonts.dmSans(
                                    color: AppColors.B7B73,
                                    fontWeight: .w400,
                                    fontSize: 14.fs,
                                  ),
                                ),
                              ],
                            ),
                          ],
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
