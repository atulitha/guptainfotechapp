import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/img/65.65.png', height: 40),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Breadcrumb
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30),
              // ignore: deprecated_member_use
              color: Colors.blueAccent.withOpacity(0.1),
              child: Column(
                children: const [
                  Text(
                    'About Us',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('Home / About Us'),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Welcome Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Welcome to Gupta Info Tech',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'A premier center for advanced technology training and professional growth, we empower students with cutting-edge knowledge, hands-on expertise, and industry-aligned skills. Our commitment to innovation and career-focused learning ensures graduates are prepared to excel in the ever-evolving tech landscape.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/img/about.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Who We Are
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Who We Are',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'At Gupta Info Tech, we are committed to shaping the next generation of technology professionals through a dynamic fusion of in-depth theoretical knowledge and practical, hands-on experience. Driven by a passion for innovation, excellence, and career-focused education, we empower our students with the skills and expertise needed to thrive in the ever-evolving tech landscape.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 1,
                    child: Image.asset('assets/img/who.jpg', fit: BoxFit.cover),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // What We Offer
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'What We Offer',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'We provide comprehensive training programs designed to meet industry demands, covering key areas such as programming, cybersecurity, artificial intelligence, data analytics, infrastructure, and DevOps. Our expert faculty delivers top-tier instruction to equip students with in-demand skills. Students gain hands-on experience through state-of-the-art facilities and real-world internships.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/img/offer.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Why Choose Us
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Why Choose Us?',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '• Practical Learning Approach: Real-world projects, live simulations, and hands-on training.',
                        ),
                        Text(
                          '• Flexible Learning Modes: Online and offline classes to suit every student’s needs.',
                        ),
                        Text(
                          '• Job-Oriented Programs: Curriculum matches industry requirements and enhances employability.',
                        ),
                        Text(
                          '• Student-Centric Environment: Encourages creativity, critical thinking, and collaboration.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/img/choose.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // Footer
            Container(
              color: Colors.black,
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Image.asset('assets/img/Guptha logo 2.png', height: 50),
                  const SizedBox(height: 20),
                  const Text(
                    'Stay updated with our latest trends.',
                    style: TextStyle(color: Colors.white70),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter email address',
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: Icon(Icons.send),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.facebook, color: Colors.white),
                      SizedBox(width: 20),
                      Icon(Icons.youtube_searched_for, color: Colors.white),
                      SizedBox(width: 20),
                      Icon(Icons.camera_alt, color: Colors.white),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Divider(color: Colors.white70),
                  const SizedBox(height: 10),
                  SizedBox(width: double.infinity, child: MarqueeText()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MarqueeText extends StatefulWidget {
  const MarqueeText({super.key});

  @override
  State<MarqueeText> createState() => _MarqueeTextState();
}

class _MarqueeTextState extends State<MarqueeText>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat(reverse: false);
    _animation = Tween<Offset>(
      begin: const Offset(1, 0),
      end: const Offset(-1, 0),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: const Text(
        '© 2025 Gupta Info Tech. All Rights Reserved.',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
