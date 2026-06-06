import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:handmade/core/extensions/app_sizes_extenstion.dart';
import 'package:handmade/core/manager/app_assets.dart';
import 'package:handmade/core/manager/app_colors.dart';
import 'package:handmade/core/models/handpicked_item.dart';
import 'package:handmade/features/home/widgets/custom_gradient_button.dart';

class HandpickedSection extends StatelessWidget {
  const HandpickedSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<HandpickedItem> handpickedItems = [
      HandpickedItem(
        color: AppColors.FF7B6B,
        title: "Boho Tote Bag",
        tag: "Bestseller",
        price: 45,
        image: AppAssets.handpicked1,
      ),
      HandpickedItem(
        color: AppColors.B8A5F5,
        title: "Crystal Earrings",
        tag: "New",
        price: 28,
        image: AppAssets.handpicked2,
      ),
      HandpickedItem(
        color: AppColors.CC9C9,
        title: "Lavender Candle Set",
        tag: "Popular",
        price: 36,
        image: AppAssets.handpicked3,
      ),
      HandpickedItem(
        color: AppColors.FFB4C8,
        title: "Crochet Blanket",
        tag: "Featured",
        price: 68,
        image: AppAssets.handpicked4,
      ),
      HandpickedItem(
        color: AppColors.FFB69E,
        title: "Macrame Wall Hanging",
        tag: "Trending",
        price: 52,
        image: AppAssets.handpicked5,
      ),
      HandpickedItem(
        color: AppColors.B8A5F5,
        title: "Handmade Beaded Bracelet",
        tag: "New",
        price: 22,
        image: AppAssets.handpicked6,
      ),
    ];
    return SliverPadding(
      padding: EdgeInsets.all(100.wd),
      sliver: SliverMainAxisGroup(
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 8.hg,
                  horizontal: 16.wd,
                ),
                decoration: BoxDecoration(
                  color: AppColors.B8A5F5.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(1000.rd),
                  border: Border.all(
                    color: AppColors.B8A5F5.withValues(alpha: 0.3),
                  ),
                ),
                child: Row(
                  spacing: 9.wd,
                  mainAxisSize: .min,
                  children: [
                    SvgPicture.asset(AppAssets.star),
                    Text(
                      "Featured Products",
                      style: GoogleFonts.inter(
                        color: AppColors.D1B15,
                        fontWeight: .w600,
                        fontSize: 14.fs,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverGap(24.hg),
          SliverToBoxAdapter(
            child: Text(
              "Handpicked for You",
              style: GoogleFonts.playfairDisplay(
                fontWeight: .w700,
                fontSize: 45.fs,
                color: AppColors.D1B15,
              ),
              textAlign: .center,
            ),
          ),
          SliverGap(16.hg),
          SliverToBoxAdapter(
            child: Text(
              "Our most loved products, crafted by talented artisans",
              style: GoogleFonts.inter(
                color: AppColors.B7B73,
                fontWeight: .w400,
                fontSize: 18.fs,
              ),
              textAlign: .center,
            ),
          ),
          SliverGap(48.hg),
          SliverGrid.builder(
            itemCount: handpickedItems.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 40.hg,
              crossAxisSpacing: 100.wd,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) {
              final item = handpickedItems[index];
              return Container(
                constraints: BoxConstraints(
                  minWidth: 300.wd,
                  minHeight: 475.hg,
                ),
                clipBehavior: .hardEdge,
                decoration: BoxDecoration(
                  color: AppColors.FFFFFF,
                  borderRadius: BorderRadiusGeometry.circular(24.rd),
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.black26,
                      offset: Offset(2, 2),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: SizedBox.expand(
                        child: Image.asset(item.image, fit: .cover),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(24.wd),
                      child: Column(
                        spacing: 8.hg,
                        crossAxisAlignment: .stretch,
                        children: [
                          Text(
                            item.title,
                            style: GoogleFonts.playfairDisplay(
                              fontWeight: .w700,
                              fontSize: 20.fs,
                              color: AppColors.D1B15,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Text(
                                "\$${item.price}",
                                style: GoogleFonts.dmSans(
                                  fontWeight: .w700,
                                  fontSize: 24.fs,
                                  color: AppColors.FF7B6B,
                                ),
                              ),
                              CustomGradientButton(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10.hg,
                                  horizontal: 22.wd,
                                ),
                                child: Text(
                                  "Add to Cart",
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
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
