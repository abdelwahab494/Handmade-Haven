import 'dart:ui';

class CustomerItem {
  final String title, subTitle, comment;
  final List<Color> colors;
  final int rate;

  CustomerItem({
    required this.title,
    required this.subTitle,
    required this.comment,
    required this.colors,
    required this.rate,
  });
}
