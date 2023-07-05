import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  final String imageUrl;

  const CustomBookItem({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: NetworkImage(
                imageUrl,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
