import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/data/offers_data.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Offers extends StatefulWidget {
  const Offers({super.key});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  int activeIndex = 0;
  final controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider.builder(
            itemCount: AdOffers.length,
            itemBuilder: (context, index, realIndex) {
              String AdOffer = AdOffers[index].img.toString();
              return buildImage(AdOffer, index);
            },
            options: CarouselOptions(
                height: 500,
                viewportFraction: 1,
                autoPlay: true,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(seconds: 2),
                enlargeCenterPage: true,
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index))),
        const SizedBox(height: 12),
        buildIndicator()
      ],
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
      onDotClicked: animateToSlide,
      effect: ExpandingDotsEffect(
          dotWidth: 10,
          dotHeight: 10,
          activeDotColor: blue!,
          dotColor: blue!.withOpacity(0.4)),
      activeIndex: activeIndex,
      count: AdOffers.length);

  void animateToSlide(int index) => controller.animateToPage(index);
}

Widget buildImage(String imge, int index) =>
    Expanded(child: Image.asset(imge, fit: BoxFit.cover));
