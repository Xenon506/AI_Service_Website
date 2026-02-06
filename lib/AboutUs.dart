import 'package:flutter/material.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({super.key});

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text(
          "About Us",
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            _buildCompanySection(),
            _buildLeadershipSection(),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }

  // ---------------- HEADER ----------------
  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80),
      child: Column(
        children: const [
          Text(
            "Who We Are",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Driving innovation through Artificial Intelligence",
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 60,
            height: 4,
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.deepOrange),
            ),
          ),
        ],
      ),
    );
  }

  // ---------------- COMPANY ABOUT ----------------
  Widget _buildCompanySection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "About Our Company",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Founded in 2020, Dynamix Dazzel AI is a technology-driven company focused on building intelligent automation solutions for modern businesses. We specialize in leveraging artificial intelligence, machine learning, and data-driven systems to solve real-world operational challenges.",
            style: TextStyle(fontSize: 16, height: 1.8, color: Colors.black87),
          ),
          SizedBox(height: 16),
          Text(
            "Our mission is simple: help organizations scale faster, reduce costs, and make smarter decisions by integrating AI into their everyday workflows. From AI-powered chatbots and lead generation systems to workflow automation and predictive analytics, we design solutions that deliver measurable impact.",
            style: TextStyle(fontSize: 16, height: 1.8, color: Colors.black87),
          ),
          SizedBox(height: 16),
          Text(
            "Today, NexaMind AI works with startups, enterprises, and global clients across industries including fintech, healthcare, e-commerce, and logistics.",
            style: TextStyle(fontSize: 16, height: 1.8, color: Colors.black87),
          ),
        ],
      ),
    );
  }

  // ---------------- LEADERSHIP TEAM ----------------
  Widget _buildLeadershipSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Leadership Team",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            children: const [
              _LeaderCard(
                name: "Kuldeep Singh",
                role: "Founder & CEO",
                description:
                    "Kuldeep is a technology entrepreneur with over 10 years of experience in AI-driven products and business strategy. He leads NexaMind AI’s vision, partnerships, and global expansion.",
                icon: Icons.business_center,
              ),
              _LeaderCard(
                name: "Animesh Singh",
                role: "Chief Technology Officer",
                description:
                    "Animesh holds a PhD in Artificial Intelligence and has led multiple large-scale AI deployments. She oversees product architecture, research, and innovation at NexaMind AI.",
                icon: Icons.memory,
              ),
              _LeaderCard(
                name: "Animesh Singh",
                role: "Head of AI Engineering",
                description:
                    "Rahul specializes in machine learning systems and automation pipelines. He leads the engineering team, ensuring scalable, secure, and high-performance AI solutions.",
                icon: Icons.settings_suggest,
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class _LeaderCard extends StatelessWidget {
  final String name;
  final String role;
  final String description;
  final IconData icon;

  const _LeaderCard({
    required this.name,
    required this.role,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: Colors.deepOrange.withValues(alpha: 0.1),
            child: Icon(icon, color: Colors.deepOrange),
          ),
          const SizedBox(height: 16),
          Text(
            name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            role,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.deepOrange,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              height: 1.6,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}