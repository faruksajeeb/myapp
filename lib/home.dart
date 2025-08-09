import 'package:flutter/material.dart';
import 'page_dhaka.dart';
import 'page_chattogram.dart';
import 'page_rajshahi.dart';
import 'page_khulna.dart';
import 'page_sylhet.dart';
import 'page_rangpur.dart';
import 'page_maymansing.dart';
import 'bottom_navbar.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final divisions = [
      {"name": "ঢাকা বিভাগ", "page": const DhakaPage()},
      {"name": "চট্টগ্রাম বিভাগ", "page": const ChattogramPage()},
      {"name": "রাজশাহী বিভাগ", "page": const RajshahiPage()},
      {"name": "খুলনা বিভাগ", "page": const KhulnaPage()},
      {"name": "সিলেট বিভাগ", "page": const SylhetPage()},
      {"name": "ময়মনসিংহ বিভাগ", "page": const MaymansingPage()},
      {"name": "রংপুর বিভাগ", "page": const RangpurPage()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "বাংলাদেশের বিভাগ সমুহ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("images/bangladesh_map.png"), // your map image
        //     fit: BoxFit.cover,
        //     colorFilter: ColorFilter.mode(
        //       Colors.black.withOpacity(0.1), // dark overlay for text readability
        //       BlendMode.darken,
        //     ),
        //   ),
        // ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                for (var division in divisions)
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => division["page"] as Widget),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          colors: [Color(0xFF006A4E), Color(0xFFB71C1C)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green.withOpacity(0.4),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        splashColor: Colors.white.withOpacity(0.2),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => division["page"] as Widget),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 25, horizontal: 20),
                          child: Center(
                            child: Text(
                              division["name"] as String,
                              style: const TextStyle(
                                fontFamily: 'NotoSansBengali',
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    offset: Offset(1, 1),
                                    blurRadius: 3,
                                    color: Colors.black26,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: BottomNavBar(parentContext: context),
    );
  }
}
