import 'package:flutter/material.dart';
import 'bottom_navbar.dart';

class ChattogramPage extends StatelessWidget {
  const ChattogramPage({super.key});
  final List<String> districts  = const [
    'ব্রাহ্মণবাড়িয়া',
    'চাঁদপুর',
    'চট্টগ্রাম',
    'কুমিল্লা',
    'কোস্টগড়া',
    'ফেনী',
    'লক্ষ্মীপুর',
    'নোয়াখালী',
    'রাঙ্গামাটি',
    'খাগড়াছড়ি',
    'বান্দরবান',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("চট্টগ্রাম বিভাগ",style: TextStyle(
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
                "চট্টগ্রাম বিভাগ বাংলাদেশের দক্ষিণ-পূর্বাঞ্চলে অবস্থিত। "
                    "এখানে সমুদ্রবন্দর, পার্বত্য জেলা ও পর্যটন কেন্দ্র রয়েছে। "
                    "কক্সবাজার বিশ্বের দীর্ঘতম সমুদ্রসৈকত এখানে অবস্থিত।",
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
