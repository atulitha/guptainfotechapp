import 'package:flutter/material.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Awesome\nFeature",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(23, 36, 72, 1),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Here, we offer a variety of courses including Hardware"
            "& Networking, MS Office, Tally, AWS, Azure, Linux, and"
            " more. Join us at our Kakinada location to enhance your"
            "skills and advance your career in the tech industry!",
            style: TextStyle(fontSize: 16, color: Colors.grey[800]),
          ),
          const SizedBox(height: 30),

          // Centered Feature Cards
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _featureCard(
                Icons.layers,
                "Better Future",
                "Investing in knowledge and skills today leads to a brighter future. Continuous learning and"
                    "adaptation unlock opportunities",
              ),
              const SizedBox(height: 20),
              _featureCard(
                Icons.computer,
                "Qualified Trainers",
                "Our trained professionals bring years"
                    "of expertise in various fields, ensuring"
                    "comprehensive understanding of each subject",
              ),
              const SizedBox(height: 20),
              _featureCard(
                Icons.lightbulb_outline,
                "Job Opportunity",
                "Enroll in Gupta Info Tech for personalized"
                    "training and guidance to advance your tech"
                    "career",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _featureCard(IconData icon, String title, String desc) {
    return Center(
      child: Container(
        width: 350, // bigger container
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white, // light background
          borderRadius: BorderRadius.circular(16),
          boxShadow: [BoxShadow(blurRadius: 6, color: Colors.black12)],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Circular Icon
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(230, 242, 255, 1.0),
              ),
              child: Icon(icon, size: 32, color: Colors.black),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color.fromRGBO(24, 37, 61, 1),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              desc,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
