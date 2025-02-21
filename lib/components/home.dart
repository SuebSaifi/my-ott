import 'package:flutter/material.dart';
import 'package:untitled/components/card_section.dart';
import 'package:untitled/components/header.dart';
import 'package:untitled/components/image_section.dart';
import 'package:untitled/components/title_section.dart';
import 'package:untitled/components/show.dart';
import 'package:untitled/components/footer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String title = 'This is the First Image';
  String location = 'New York';
  String description = 'A beautiful skyline view of New York City at sunset.';

  final List<String> carouselList = [
    'assets/c1.png',
    'assets/c2.png',
    'assets/c3.png',
    'assets/c4.png',
    'assets/c5.png',
    'assets/c6.png',
  ];

  final List<List<String>> carouselItemList = [
    ['This is the First Image', 'New York', 'A beautiful skyline view of New York City at sunset.'],
    ['This is the Second Image', 'Paris', 'A romantic evening near the Eiffel Tower, illuminated under the night sky.'],
    ['This is the Third Image', 'Tokyo', 'Bustling streets of Tokyo with neon lights shining brightly.'],
    ['This is the Fourth Image', 'London', 'The iconic Big Ben clock tower with the London Eye in the background.'],
    ['This is the Fifth Image', 'Sydney', 'Sydney Opera House with a stunning view of the harbor.'],
    ['This is the Sixth Image', 'Dubai', 'The Burj Khalifa towering over the vibrant city of Dubai.'],
  ];

  void _onCarouselChange(int index, CarouselPageChangedReason reason) {
    setState(() {
      title = carouselItemList[index][0];
      location = carouselItemList[index][1];
      description = carouselItemList[index][2];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(title: 'Home'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CarouselSlider.builder(

                itemCount: carouselList.length,
                options: CarouselOptions(
                  onPageChanged: _onCarouselChange,
                  height: 450.0,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 10),
                ),
                itemBuilder: (context, index, realIndex) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5  ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Show(index: index),
                          ),
                        );
                      },
                      child: Stack(
                        children: <Widget>[
                          ImageSection(url: carouselList[index], radius: 15, height: 450),
                          Positioned(
                            bottom: 20,
                            left: 20,
                            child: Container(

                              padding: const EdgeInsets.all(8),
                              color: Colors.black.withOpacity(0.6),
                              child: Text(
                                carouselItemList[index][0],
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              TitleSection(title: title, location: location),
              const SizedBox(height: 10),
              const CardSection(cardTitle: 'Continue Watching'),
              const SizedBox(height: 10),
              const CardSection(cardTitle: 'Latest Releases'),
              const SizedBox(height: 10),
              const CardSection(cardTitle: 'Top Movies'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Footer(),
    );

  }
}
