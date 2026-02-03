import 'package:contact_list/getstarted.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: const Color(0xFF0F0F0F), // Deep space background
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeroSection(context),
            _buildFeatureGrid(),
            //  FooterSection(), 
          ],
        ),
      ),
    );
  }
}





  Widget _buildHeroSection(BuildContext context) {
    return Container(
      padding:  EdgeInsets.only(top: 110, bottom: 50,left: 400),
      // alignment: AlignmentGeometry.xy(0, -1),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.deepOrange[400],
              borderRadius: BorderRadius.circular(20),
              // border: Border.all(color: Colors.blueAccent.withOpacity(0.5)),
            ),
            child: const Text("New: GPT-5 Integration Now Live", 
              style: TextStyle(color: Color.fromARGB(255, 10, 10, 10), fontSize: 18)),
          ),
          const SizedBox(height: 30),
          const Text(
            "Revolutionize Your Workflow\nwith AI Automation",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 48,
              fontWeight: FontWeight.bold,
              letterSpacing: -1,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "The all-in-one platform for developers to deploy, scale, and\nmonitor AI agents in seconds.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70, fontSize: 18),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context, 
              MaterialPageRoute(builder: (context)=> GetStartedPage()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child:  Text("Get Started for Free", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureGrid() {
    return Container(
      padding:  EdgeInsets.only(top: 40, left: 400),
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        alignment: WrapAlignment.center,
        children: [
          _featureCard("Neural Processing", Icons.auto_awesome, "Lightning fast inference."),
          _featureCard("Secure API", Icons.lock_outline, "End-to-end encrypted data."),
          _featureCard("24/7 Monitoring", Icons.analytics_outlined, "Real-time performance logs."),
        ],
      ),
    );
  }

  Widget _featureCard(String title, IconData icon, String subtitle) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.blueAccent, size: 32),
          const SizedBox(height: 16),
          Text(title, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(subtitle, style: const TextStyle(color: Colors.white60)),
        ],
      ),
    );
  }

