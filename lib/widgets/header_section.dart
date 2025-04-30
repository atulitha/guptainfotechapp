import 'package:flutter/material.dart';
import '/widgets/homepage.dart';
import 'package:gupta_info_tech_app/pages/about_page.dart';
import 'package:gupta_info_tech_app/pages/contact.dart';
import 'package:gupta_info_tech_app/pages/courses_page.dart';
import 'package:gupta_info_tech_app/pages/services_page.dart';

class HeaderSection extends StatelessWidget implements PreferredSizeWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.orangeAccent),
      title: Row(
        children: [
          Image.asset('assets/images/65.65.png', height: 40),
          const SizedBox(width: 10),
          const Spacer(),
          const Text(
            'Gupta Info Tech',
            style: TextStyle(
              color: Colors.deepOrangeAccent,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
        ],
      ),
      actions: [
        PopupMenuButton<String>(
          icon: const Icon(Icons.menu, color: Colors.orangeAccent),
          onSelected: (value) {
            switch (value) {
              case 'home':
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
                break;
              case 'about':
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
                break;
              case 'courses':
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CoursesPage()),
                );
                break;
              case 'services':
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ServicesPage()),
                );
                break;
              case 'contact':
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactPage()),
                );
                break;
            }
          },
          itemBuilder:
              (BuildContext context) => const [
                PopupMenuItem(value: 'home', child: Text('Home')),
                PopupMenuItem(value: 'about', child: Text('About')),
                PopupMenuItem(value: 'courses', child: Text('Courses')),
                PopupMenuItem(value: 'services', child: Text('Services')),
                PopupMenuItem(value: 'contact', child: Text('Contact')),
              ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
