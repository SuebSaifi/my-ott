import 'package:flutter/material.dart';
import 'search.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Ensure it takes full width
      height: 50,
      child: Container(
        color: Colors.grey[200], // Optional: Give a background color
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Search(),
                  ),
                );


              },
            ),
            IconButton(
              icon: const Icon(Icons.category),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.account_box),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
