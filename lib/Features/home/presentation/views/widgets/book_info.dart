import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookInfo extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final String language;
  final int pageCount;

  const BookInfo({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.language,
    required this.pageCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.language,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          language,
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
          pageCount == 0 ? '(not counted)' : '($pageCount)',
          style: Styles.textStyle14.copyWith(
            color: Colors.white.withOpacity(.5),
          ),
        ),
      ],
    );
  }
}
