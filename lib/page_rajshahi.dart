import 'package:flutter/material.dart';
import 'bottom_navbar.dart';

class RajshahiPage extends StatelessWidget {
  const RajshahiPage({super.key});
  final List<String> districts  = const [
    'রাজশাহী',
    'নওগাঁ',
    'বগুড়া',
    'চাঁপাইনবাবগঞ্জ',
    'জয়পুরহাট',
    'নাটোর',
    'পাবনা',
    'সিরাজগঞ্জ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("রাজশাহী বিভাগ", style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "রাজশাহী বিভাগ বাংলাদেশের উত্তর-পশ্চিমাঞ্চলে অবস্থিত। "
                  "এটি আম, রেশম ও শিক্ষা নগরী হিসেবে পরিচিত। "
                  "এখানে পদ্মা নদীর তীরে সুন্দর দৃশ্য উপভোগ করা যায়।",
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            const SizedBox(height: 20),

            // Title for district list
            const Text(
              "জেলার নামসমূহ:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: districts.length,
                itemBuilder: (context, index) {
                  return Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.location_city, color: Colors.green),
                          title: Text(
                            districts[index],
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                        const Divider(height: 1, thickness: 1),
                      ]
                  );
                },
              ),
            ),
          ]
        ),
      ),
      // Bottom bar
      bottomNavigationBar: BottomNavBar(parentContext: context),
    );
  }
}
