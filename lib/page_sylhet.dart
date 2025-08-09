import 'package:flutter/material.dart';
import 'bottom_navbar.dart';

class SylhetPage extends StatelessWidget {
  const SylhetPage({super.key});
  final List<String> districts  = const [
    'সিলেট',
    'মৌলভীবাজার',
    'হবিগঞ্জ',
    'সুনামগঞ্জ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("সিলেট বিভাগ", style: TextStyle(
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
                "সিলেট বিভাগ বাংলাদেশের উত্তর-পূর্বাঞ্চলে অবস্থিত। "
                    "এটি চা-বাগান, পাহাড় ও প্রাকৃতিক সৌন্দর্যের জন্য বিখ্যাত। "
                    "এখানে জাফলং, মাধবকুণ্ড জলপ্রপাত প্রভৃতি পর্যটন কেন্দ্র রয়েছে।",
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
