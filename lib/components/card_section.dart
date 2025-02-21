import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled/components/image_section.dart';
import 'package:untitled/components/show.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key, required this.cardTitle});

  final String cardTitle;

  @override
  Widget build(BuildContext context) {
    final List<String> carouselList = [
      'assets/c1.png',
      'assets/c2.png',
      'assets/c3.png',
      'assets/c4.png',
      'assets/c5.png',
      'assets/c6.png',
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            cardTitle,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 200.0, // Fixed height for the carousel
            width: double.infinity,
            child: CarouselSlider.builder(
              itemCount: carouselList.length,
              options: CarouselOptions(
                padEnds: false,
                viewportFraction: 0.33,
                height: 200.0,
                enableInfiniteScroll: false,
                autoPlay: false,
              ),
              itemBuilder: (context, index, realIndex) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Show(index: index),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ImageSection(
                      url: carouselList[index],
                      radius: 5,
                      height: 200,

                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
