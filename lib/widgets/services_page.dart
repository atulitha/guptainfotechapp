import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  final List<Map<String, String>> services = [
    {
      "title": "All Branded Laptops Repairs",
      "desc": "We repair all branded laptops like Dell, HP, Lenovo, etc.",
      "image": "assets/images/services/computer-sales.jpg",
    },
    {
      "title": "Desktop Repairs",
      "desc": "Branded and non-branded desktop repair services.",
      "image": "assets/images/services/computer-service.jpg",
    },
    {
      "title": "LAN & Network Installation",
      "desc": "Network cabling and switch installation.",
      "image": "assets/images/services/networking.jpg",
    },
    {
      "title": "Printer Service and Repairs",
      "desc": "Includes cartridge refilling and printer head cleaning.",
      "image": "assets/images/services/printers.jpg",
    },
    {
      "title": "CCtv Camera Installation",
      "desc": "Camera installation and troubleshooting.",
      "image": "assets/images/services/cctv.jpg",
    },
    {
      "title": "Data Recovery",
      "desc": "Data recovery from HDDs, USB drives, and more.",
      "image": "assets/images/services/data-recovery.jpg",
    },
  ];

  ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Our Services")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/services/computer.jpg",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Services Provided",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            GridView.builder(
              padding: const EdgeInsets.all(10),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: services.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 1,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 3 / 2,
              ),
              itemBuilder: (context, index) {
                final service = services[index];
                return Card(
                  elevation: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image.asset(
                          service["image"]!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          service["title"]!,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(service["desc"]!),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
