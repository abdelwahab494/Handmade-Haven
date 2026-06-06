import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:handmade/core/extensions/app_sizes_extenstion.dart';
import 'package:handmade/core/manager/app_colors.dart';
import 'package:handmade/features/home/widgets/choose_section.dart';
import 'package:handmade/features/home/widgets/community_section.dart';
import 'package:handmade/features/home/widgets/customers_section.dart';
import 'package:handmade/features/home/widgets/explore_section.dart';
import 'package:handmade/features/home/widgets/follow_section.dart';
import 'package:handmade/features/home/widgets/fotter.dart';
import 'package:handmade/features/home/widgets/handpicked_section.dart';
import 'package:handmade/features/home/widgets/home_nav_bar.dart';
import 'package:handmade/features/home/widgets/intro_section.dart';
import 'package:handmade/features/home/widgets/spring_collection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.FFF8F0,
      body: CustomScrollView(
        slivers: <Widget>[
          const HomeNavBar(),
          const IntroSection(),
          SliverGap(80.hg),
          const ExploreSection(),
          SliverGap(80.hg),
          const HandpickedSection(),
          SliverGap(80.hg),
          const ChooseSection(),
          SliverGap(80.hg),
          const CustomersSection(),
          SliverGap(170.hg),
          const SpringCollection(),
          SliverGap(80.hg),
          const FollowSection(),
          SliverGap(160.hg),
          const CommunitySection(),
          SliverGap(240.hg),
          const Fotter(),
          SliverGap(95.hg)
        ],
      ),
    );
  }
}
