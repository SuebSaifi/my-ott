import 'package:flutter/cupertino.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.url, required this.radius, required this.height});

  final String url;
  final double radius;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Image.asset(
        url,
        width: double.infinity,
        height: height,
        fit: BoxFit.cover,
      )
    );
  }
}
