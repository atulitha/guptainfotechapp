import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool _showList = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 40, left: 16, right: 16),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: 60,
                        height: 60,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'GUPTA INFO TECH',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _showList = !_showList;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Icon(Icons.list, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'Empowering Minds And Elevating Careers.',
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(0, 51, 153, 1.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'At Gupta Info Tech, we are committed to equipping students with the knowledge and skills necessary to succeed in todays fast-paced technology world.'
                  ' Our goal is to support you along the way, enabling you to reach your full potential and meet your career aspirations.'
                  ' With professional trainers and experiential learning, we emphasize real-world experience and practical skills that readies you for the future. Come with us to discover limitless opportunities, expand your knowledge, and embark on a path to achieving a prosperous tech career.',
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          if (_showList)
            Positioned(
              top: 100, // Adjust this value to position the list below the icon
              right: 16,
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [BoxShadow(blurRadius: 5, offset: Offset(0, 3))],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Home', style: TextStyle(color: Colors.black)),
                    SizedBox(height: 8),
                    Text('About', style: TextStyle(color: Colors.black)),
                    SizedBox(height: 8),
                    Text('Course', style: TextStyle(color: Colors.black)),
                    SizedBox(height: 8),
                    Text('Services', style: TextStyle(color: Colors.black)),
                    SizedBox(height: 8),
                    Text('Contact', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

  //@override
  //Widget build(BuildContext context) {}

