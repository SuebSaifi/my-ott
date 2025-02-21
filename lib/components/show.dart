import 'package:flutter/material.dart';
import 'header.dart';
import 'card_section.dart';

class Show extends StatefulWidget {
  const Show({super.key, required this.index});

  final int index;

  @override
  State<Show> createState() => _ShowState();
}

class _ShowState extends State<Show> {
  final List carouselList = [
    'assets/c1.png',
    'assets/c2.png',
    'assets/c3.png',
    'assets/c4.png',
    'assets/c5.png',
    'assets/c6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(title: 'Go Home'),
      body: Padding(
        padding: const EdgeInsets.only(top: 5.0, left: 1, right: 1),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align left
              children: <Widget>[

                Positioned(
                bottom: 20,
                right: 20,
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        carouselList[widget.index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10), // Add spacing

                Card(
                  margin: const EdgeInsets.only(top: 5),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'This is the best movie.',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'This is the best movie with an amazing storyline and visuals.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20), // More spacing for clarity

                // Wrap CardSections in a Container with constraints to avoid overflow

              ],
            ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                SizedBox(height: 10),
                CardSection(cardTitle: 'Continue Watching'),
                SizedBox(height: 10),
                CardSection(cardTitle: 'Latest Releases'),
                SizedBox(height: 10),
                CardSection(cardTitle: 'Top Movies'),
              ],
            ),
          ),
        ),
          ],
        ),
      ),
    );
  }
}
