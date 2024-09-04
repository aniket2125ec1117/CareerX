import 'package:flutter/material.dart';
import 'package:job_portal/screens/dashboard.dart';
import 'package:job_portal/widget/starting_page_container.dart';

class Starting extends StatefulWidget {
  const Starting({super.key});

  @override
  State<Starting> createState() {
    return _StartingState();
  }
}

class _StartingState extends State<Starting> {
  final PageController _pageController = PageController(initialPage: 0);
  int _index = 0;

  final List<Widget> _startingPage = const [
    StartingPageContainer(
      imageLocation: "./assets/images/main1.jpg",
      heading: "Welcome to CareerX",
      subHeading1: "Where Your Career Ambitions Become Reality",
      subHeading2: "Elevate your Career",
    ),
    StartingPageContainer(
      imageLocation: "./assets/images/main2.jpg",
      heading: "Search Jobs Tailored to You",
      subHeading1: "Enter Your Preferences to Discover Opportunities",
      subHeading2: "Start Your Search Now",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
              left: 10,
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => Dashboard(),
                    ),
                  );
                },
                child: const Text("Skip all"),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _index = index;
                });
              },
              itemCount: _startingPage.length,
              itemBuilder: (context, index) {
                return _startingPage[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
