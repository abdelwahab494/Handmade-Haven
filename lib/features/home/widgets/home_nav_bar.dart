import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:handmade/core/extensions/app_sizes_extenstion.dart';
import 'package:handmade/core/manager/app_colors.dart';
import 'package:handmade/features/home/widgets/custom_gradient_button.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: AppColors.FFF8F0,
      toolbarHeight: 120,
      elevation: 0,
      scrolledUnderElevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: 23.hg, horizontal: 101.wd),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            spacing: 200.wd,
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
              Expanded(
                child: Row(
                  mainAxisAlignment: .spaceAround,
                  children: [
                    _navItem("Shop"),
                    _navItem("About"),
                    _navItem("Blog"),
                    _navItem("Product"),
                    _navItem("Contact"),
                  ],
                ),
              ),
              CustomGradientButton(
                padding: EdgeInsets.symmetric(
                  vertical: 12.hg,
                  horizontal: 23.wd,
                ),
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.dmSans(
                      color: AppColors.FFFFFF,
                      fontWeight: .w600,
                      fontSize: 14.fs,
                    ),
                    children: [
                      const WidgetSpan(
                        child: Icon(
                          Icons.card_travel_rounded,
                          color: AppColors.FFFFFF,
                        ),
                      ),
                      const TextSpan(text: "  Cart (0)"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text _navItem(String text) {
    return Text(
      text,
      style: GoogleFonts.inter(
        color: AppColors.D1B15,
        fontWeight: .w600,
        fontSize: 16.fs,
      ),
    );
  }
}
