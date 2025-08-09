import 'package:flutter/material.dart';
import 'bottom_navbar.dart';

class DhakaPage extends StatelessWidget {
  const DhakaPage({super.key});

  final List<String> districts = const [
    'কিশোরগঞ্জ',
    'গাজীপুর',
    'ময়মনসিংহ',
    'নরসিংদী',
    'শরীয়তপুর',
    'টাঙ্গাইল',
    'মুন্সীগঞ্জ',
    'মাদারীপুর',
    'রাজবাড়ী',
    'গোপালগঞ্জ',
    'ঢাকা',
    'ফরিদপুর',
    'নরিন্তল',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
          "ঢাকা বিভাগ",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
        backgroundColor: Colors.green,),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "ঢাকা বিভাগ বাংলাদেশের প্রশাসনিক বিভাগের একটি। "
                    "এখানে ১৩টি জেলা রয়েছে। রাজধানী ঢাকা এই বিভাগের অন্তর্ভুক্ত। "
                    "এখানে ঐতিহাসিক স্থান, শিক্ষাপ্রতিষ্ঠান ও বাণিজ্য কেন্দ্রসমূহ অবস্থিত।",
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
      bottomNavigationBar: BottomNavBar(parentContext: context),

    );
  }
}
