import 'package:flutter/material.dart';
import 'bottom_navbar.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
        backgroundColor: const Color(0xFF4CAF50),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4CAF50), Color(0xFF81C784)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // App Logo
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/propic.jpg"),
              ),
            ),
            const SizedBox(height: 16),

            // App Description Card
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              elevation: 6,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Our Mission",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "We created this app to help you explore the districts and divisions of Bangladesh easily. "
                          "Our goal is to make geographical and cultural information accessible to everyone.",
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Contact Card
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              elevation: 6,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Contact Us",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    ListTile(
                      leading: Icon(Icons.email, color: Colors.green),
                      title: Text("ofsajeeb@gmail.com"),
                    ),
                    ListTile(
                      leading: Icon(Icons.web, color: Colors.green),
                      title: Text("www.myapp.com"),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone, color: Colors.green),
                      title: Text("+880 1733811596"),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Footer
            const Center(
              child: Text(
                "© 2025 My District App. All rights reserved.",
                style: TextStyle(fontSize: 14, color: Colors.white70),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(parentContext: context),
    );
  }
}
