import 'package:flutter/material.dart';

class CoursesSection extends StatelessWidget {
  CoursesSection({super.key}) {
    throw UnimplementedError();
  }
  final List<Course> courses = [
    Course(
      "desktop-it-support.jpg",
      "Information Technology (IT)",
      "Desktop Engineer",
      "Troubleshoot and maintain hardware, software, and network systems.",
    ),
    Course(
      "network.jpg",
      "Information Technology (IT)",
      "Network Engineer",
      "Design and manage networks, security, routing, and switching.",
    ),
    Course(
      "system-admin.jpg",
      "System Administration",
      "Windows System Administrator",
      "Manage and secure Windows-based environments.",
    ),
    Course(
      "linux-sys.jpg",
      "Linux Administration",
      "Linux System Administrator",
      "Master Linux configuration, networking, and server management.",
    ),
    Course(
      "cloud.png",
      "IT Services",
      "Cloud Computing",
      "Leverage scalable, on-demand computing infrastructure.",
    ),
    Course(
      "vmware.jpg",
      "IT Services",
      "VMware",
      "Learn virtualized infrastructure using VMware solutions.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.shade50,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            "Professional Courses",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
          SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: courses.map((course) => courseCard(course)).toList(),
          ),
        ],
      ),
    );
  }

  Widget courseCard(Course course) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(blurRadius: 6, color: Colors.black12)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/${course.image}",
            height: 160,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            course.category,
            style: TextStyle(color: Colors.orange, fontSize: 14),
          ),
          Text(
            course.title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 6),
          Text(course.description, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}

class Course {
  final String image, category, title, description;
  Course(this.image, this.category, this.title, this.description);
}
