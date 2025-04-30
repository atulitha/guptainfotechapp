import 'package:flutter/material.dart';

class Course {
  final String title;
  final String imagePath;
  final String description;
  final String link;

  Course({
    required this.title,
    required this.imagePath,
    required this.description,
    required this.link,
  });
}

class CoursesPage extends StatelessWidget {
  CoursesPage({super.key});
  final List<Course> courses = [
    Course(
      title: 'Hardware & Networking',
      imagePath: 'assets/images/hardware-networking.jpg',
      description:
          'Covers computer hardware components and networking fundamentals.',
      link: 'hardware_and_network.html',
    ),
    Course(
      title: 'MCSE/MCSA',
      imagePath: 'assets/images/mcse.png',
      description:
          'Microsoft server technologies and Windows Server management.',
      link: 'mcse.html',
    ),
    Course(
      title: 'CCNA',
      imagePath: 'assets/images/ccna.jpg',
      description: 'Networking fundamentals and Cisco CCNA certification prep.',
      link: 'ccna.html',
    ),
    // Add more courses below in similar format...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Our Courses')),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: courses.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.70,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final course = courses[index];
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                      child: Image.asset(course.imagePath, fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      course.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      course.description,
                      style: const TextStyle(fontSize: 12),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Add routing or webview navigation if needed
                    },
                    child: const Text('View Details'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
