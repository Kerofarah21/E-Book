import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: AssetImage(
                AssetsData.testImage,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
