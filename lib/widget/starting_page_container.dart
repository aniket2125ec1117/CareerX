import 'package:flutter/material.dart';

class StartingPageContainer extends StatelessWidget {
  const StartingPageContainer({
    super.key,
    required this.imageLocation,
    required this.heading,
    required this.subHeading1,
    required this.subHeading2,
  });
  final String imageLocation;
  final String heading;
  final String subHeading1;
  final String subHeading2;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageLocation,
          height: height / 2.5,
          width: width / 2.5,
        ),
        Text(
          heading,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 22,
        ),
        Text(
          subHeading1,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          subHeading2,
          style: const TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}
