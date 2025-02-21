import 'package:flutter/cupertino.dart';

class CardImage extends StatelessWidget {
  const CardImage({super.key, required this.url});

  final url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          url,
          width: double.infinity, // Take up all the available width
          height: 200.0, // Set a fixed height
          fit: BoxFit.cover, // Make the image cover the area
        )
    );
  }
}
