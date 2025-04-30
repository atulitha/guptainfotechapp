import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image at the top
          Center(
            child: Image.asset("assets/images/learning_img.png", height: 250),
          ),
          const SizedBox(height: 30),

          // Row with horizontal line on the left of "About us"
          Row(
            children: [
              Container(width: 40, height: 2, color: Colors.orange),
              const SizedBox(width: 10),
              Text(
                "ABOUT US",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(23, 36, 72, 1),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),

          // Main heading
          Text(
            "Learning with Love and "
            "Laughter",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),

          // Extra description
          Text(
            "We cultivate a joyful atmosphere where learning becomes a delightful experience for every student.",
            style: TextStyle(fontSize: 16, color: Colors.grey[800]),
          ),
          const SizedBox(height: 12),

          // Main paragraph
          Text(
            "At Gupta Info Tech, we believe in Learning with Love and Laughter. "
            "Our mission is to create a nurturing environment where students can thrive "
            "through a blend of knowledge, creativity, and joy. We focus on shaping the "
            "future technology professionals with a dynamic approach that emphasizes both "
            "theoretical understanding and practical application.",
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(height: 20),

          // Bullet points
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              bulletPoint(
                Icons.auto_graph,
                "Real-world projects and simulations to enhance learning.",
              ),
              bulletPoint(
                Icons.work_outline,
                "Internship opportunities and placement assistance to support students in their professional journeys.",
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Read More button with Gradient and Ripple effect
          Material(
            borderRadius: BorderRadius.circular(8),
            child: Ink(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.orange, Colors.deepOrange],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {
                  // Button tap logic here
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 14,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Read More",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget bulletPoint(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.orange, size: 20),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
