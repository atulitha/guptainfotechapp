import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const GuptaInfoTechApp());
}

class GuptaInfoTechApp extends StatelessWidget {
  const GuptaInfoTechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gupta Info Tech',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ContactPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _formKey = GlobalKey<FormState>();

  // Controllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  String interest = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/logo.png', height: 50),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Breadcrumb
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.blueAccent,
              child: Column(
                children: const [
                  Text(
                    'Contact Us',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Home / Contact Us',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),

            // Google Map
            SizedBox(
              height: 300,
              child: WebViewWidget(
                controller:
                    WebViewController()
                      ..setJavaScriptMode(JavaScriptMode.unrestricted)
                      ..loadRequest(
                        Uri.parse(
                          'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3816.217050602424!2d82.23197637467423!3d16.963870614868647!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a3829dd3c99d58f%3A0x9cb644ae3b54811d!2sGUPTA%20INFO%20TECH!5e0!3m2!1sen!2sin!4v1739774611661!5m2!1sen!2sin',
                        ),
                      ),
              ),
            ),

            const SizedBox(height: 20),

            // Contact Form
            Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const Text(
                      'Get in Touch',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),

                    TextFormField(
                      controller: messageController,
                      maxLines: 5,
                      decoration: const InputDecoration(
                        hintText: 'Enter your message here...',
                        border: OutlineInputBorder(),
                      ),
                      validator:
                          (value) =>
                              value!.isEmpty
                                  ? 'Please enter your message'
                                  : null,
                    ),
                    const SizedBox(height: 16),

                    TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        hintText: 'Enter your name',
                        border: OutlineInputBorder(),
                      ),
                      validator:
                          (value) =>
                              value!.isEmpty ? 'Please enter your name' : null,
                    ),
                    const SizedBox(height: 16),

                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        hintText: 'Enter email address',
                        border: OutlineInputBorder(),
                      ),
                      validator:
                          (value) =>
                              value!.isEmpty ? 'Please enter your email' : null,
                    ),
                    const SizedBox(height: 16),

                    TextFormField(
                      controller: phoneController,
                      decoration: const InputDecoration(
                        hintText: 'Enter phone number',
                        border: OutlineInputBorder(),
                      ),
                      validator:
                          (value) =>
                              value!.isEmpty
                                  ? 'Please enter your phone number'
                                  : null,
                    ),
                    const SizedBox(height: 16),

                    // Radio buttons
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            title: const Text('Courses'),
                            value: 'Courses',
                            groupValue: interest,
                            onChanged: (value) {
                              setState(() {
                                interest = value.toString();
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: const Text('Services'),
                            value: 'Services',
                            groupValue: interest,
                            onChanged: (value) {
                              setState(() {
                                interest = value.toString();
                              });
                            },
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate() &&
                            interest.isNotEmpty) {
                          // Here you can call your API (like Web3Forms)
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Form submitted successfully!'),
                            ),
                          );
                          // Reset the form
                          nameController.clear();
                          emailController.clear();
                          phoneController.clear();
                          messageController.clear();
                          setState(() {
                            interest = '';
                          });
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Please fill all fields'),
                            ),
                          );
                        }
                      },
                      child: const Text('Send Message'),
                    ),
                  ],
                ),
              ),
            ),

            const Divider(),

            // Contact Info Section
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Gupta Info Tech'),
                    subtitle: Text(
                      '6-1-6/16/1, Jawahar St, Surya Rao Peta, Kakinada, Andhra Pradesh 533001',
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('+91-9989798724'),
                    subtitle: Text('Mon to Fri 9am to 6pm'),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text('tguptainfotech@gmail.com'),
                    subtitle: Text('Send us your query anytime!'),
                  ),
                ],
              ),
            ),

            const Divider(),

            // Footer
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Text('Stay updated with our latest trends'),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Enter email address',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Icon(Icons.send),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.facebook),
                        onPressed: () {
                          // Add your facebook URL
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.video_call),
                        onPressed: () {
                          // Add your YouTube URL
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.camera_alt),
                        onPressed: () {
                          // Add your Instagram URL
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text('© 2025 Gupta Info Tech. All Rights Reserved.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
