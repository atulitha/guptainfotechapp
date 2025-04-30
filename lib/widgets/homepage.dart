import 'package:flutter/material.dart';
import '/widgets/header_section.dart';
import '/widgets/banner_section.dart';
import '/widgets/feature_section.dart';
import '/widgets/about_section.dart';
import '/widgets/footer_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderSection(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  BannerSection(),
                  SizedBox(height: 40), // space between sections
                  FeatureSection(),
                  SizedBox(height: 40),
                  AboutSection(),
                  SizedBox(height: 40),
                  FooterSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
