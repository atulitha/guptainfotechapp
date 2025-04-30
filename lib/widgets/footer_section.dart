import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Image.asset("assets/images/199 .199.png", height: 50),
          SizedBox(height: 10),
          Text(
            "Gupta Info Tech",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Jawahar St, Kakinada, Andhra Pradesh 533001",
            style: TextStyle(color: Colors.white70),
          ),
          SizedBox(height: 5),
          Text(
            "Phone: +91-9989798724",
            style: TextStyle(color: Colors.white70),
          ),
          Text(
            "Email: tguptainfotech@gmail.com",
            style: TextStyle(color: Colors.white70),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook, color: Colors.white),
              SizedBox(width: 10),
              Icon(Icons.youtube_searched_for, color: Colors.white),
              SizedBox(width: 10),
              Icon(Icons.camera_alt, color: Colors.white),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "© 2025 Gupta Info Tech. All Rights Reserved.",
            style: TextStyle(color: Colors.white54),
          ),
        ],
      ),
    );
  }
}
