import 'package:flutter/material.dart';

class ExploreservicePage extends StatefulWidget {
  const ExploreservicePage({super.key});

  @override
  State<ExploreservicePage> createState() => _ExploreservicePageState();
}

class _ExploreservicePageState extends State<ExploreservicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 17, 17, 17), Color(0xFFFFF3E8)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Column(
            children: [
              // ---------- HEADER ----------
              const Text(
                "Explore Our AI Services",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Powerful AI capabilities designed for real-world applications",
                style: TextStyle(color: Colors.black54, fontSize: 16, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 50),

              // ---------- SERVICES GRID ----------
              Wrap(
                spacing: 30,
                runSpacing: 30,
                alignment: WrapAlignment.center,
                children: [
                  ServiceCard(
                    icon: Icons.chat_bubble_outline,
                    title: "AI Chatbot",
                    description:
                        "Build intelligent conversational agents for customer support, automation, and engagement.",
                  ),
                  ServiceCard(
                    icon: Icons.trending_up,
                    title: "Predictive Analytics",
                    description:
                        "Forecast trends, user behavior, and business outcomes using data-driven AI models.",
                  ),
                  ServiceCard(
                    icon: Icons.visibility_outlined,
                    title: "Computer Vision",
                    description:
                        "Analyze images and videos for object detection, recognition, and visual intelligence.",
                  ),
                  ServiceCard(
                    icon: Icons.description_outlined,
                    title: "Document AI",
                    description:
                        "Extract insights from documents using OCR, classification, and intelligent parsing.",
                  ),
                ],
              ),

              const SizedBox(height: 60),

              // ---------- CTA ----------
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );

}}class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const ServiceCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black12,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 36,
            color: Colors.deepOrange,
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
