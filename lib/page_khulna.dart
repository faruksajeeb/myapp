import 'package:flutter/material.dart';
import 'bottom_navbar.dart';

class KhulnaPage extends StatelessWidget {
  const KhulnaPage({super.key});

  final List<String> districts  = const [
    'খুলনা',
    'বাগেরহাট',
    'চুয়াডাঙ্গা',
    'যশোর',
    'ঝিনাইদহ',
    'কুষ্টিয়া',
    'মাগুরা',
    'মেহেরপুর',
    'নড়াইল',
    'সাতক্ষীরা',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("খুলনা বিভাগ", style: TextStyle(
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
              "খুলনা বিভাগ বাংলাদেশের দক্ষিণ-পশ্চিমাঞ্চলে অবস্থিত। "
                  "এখানে সুন্দরবন ও বাঘের অভয়ারণ্য রয়েছে। "
                  "মংলা সমুদ্রবন্দরও খুলনা বিভাগের অন্তর্গত।",
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
        )
      ),
      // Bottom bar
      bottomNavigationBar: BottomNavBar(parentContext: context),
    );
  }
}
