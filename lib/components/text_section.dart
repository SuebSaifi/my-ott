import 'package:flutter/cupertino.dart';

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final description;

  @override
  Widget build(BuildContext context) {
    return Text(
          description,
          style: TextStyle(
            fontSize: 14
          ),

    );
  }
}
