import 'package:flutter/material.dart';
import 'package:handmade/core/extensions/app_sizes_extenstion.dart';
import 'package:handmade/core/manager/app_assets.dart';

class SpringCollection extends StatelessWidget {
  const SpringCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 100.wd),
      sliver: SliverToBoxAdapter(
        child: Image.asset(AppAssets.springBannar, width: double.infinity),
      ),
    );
  }
}
