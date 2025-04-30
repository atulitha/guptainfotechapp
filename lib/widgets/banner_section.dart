import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              'assets/images/banner_img.png', // Make sure this path is correct
              height: 200,
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            "Empowering Minds And Elevating Careers.",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(23, 36, 72, 1),
            ),
          ),
          const SizedBox(height: 15),
          Text(
            'At Gupta Info Tech, we are committed to equipping students with'
            "the knowledge and skills necessary to succeed in today's fast"
            '-paced technology world. Our goal is to support you along the way,'
            'enabling you to reach your full potential and meet your career'
            'aspirations. With professional trainers and experiential learning,'
            'we emphasize real-world experience and practical skills that '
            'readies you for the future. Come with us to discover limitless'
            'opportunities, expand your knowledge, and embark on a path to achieving a prosperous tech career.',
            style: TextStyle(fontSize: 16, color: Colors.grey[800]),
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                ),
                child: const Text(
                  "View Course",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 10),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.deepOrange),
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
