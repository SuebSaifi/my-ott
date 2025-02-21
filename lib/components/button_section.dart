import 'package:flutter/cupertino.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key, required this.icon, required this.title});
  final icon;
  final title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon),
        Padding(padding: EdgeInsets.all(10),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        )
      ],
    );
  }
}
