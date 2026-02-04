import 'package:flutter/material.dart';

class Solutions extends StatefulWidget {
  const Solutions({super.key});

  @override
  State<Solutions> createState() => _SolutionsState();
}

class _SolutionsState extends State<Solutions> {
  final List<bool> _isCardExpanded = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text(
          "Our Solutions",
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
            _buildSolutionsGrid(),
            const SizedBox(height: 50),
            // Your FooterSection goes here
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.only(top: 100, left: 120),
      child: Column(
        children: [
          const Text(
            "Tailored AI Solutions",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            "We help businesses automate complex tasks using cutting-edge Neural Networks.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),
          const SizedBox(height: 20),
          Container(height: 4, width: 60, color: Colors.deepOrange),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildSolutionsGrid() {
    return Padding(
      padding: const EdgeInsets.only(left: 120),
      child: Wrap(
        spacing: 30,
        runSpacing: 30,
        alignment: WrapAlignment.center,
        children: [
          _solutionCard(
            title: "Predictive Analytics",
            description:
                "Forecast market trends and customer behavior with 99% accuracy.",
            fulldetails: "Our full suite of predictive models uses machine learning to analyze historical data and provide accurate, actionable insights for future trends, ensuring you stay ahead of the competition.",
            icon: Icons.insights,
            index: 0,
          ),
          _solutionCard(
            title: "NLP Chatbots",
            description:
                "Human-like conversational agents for 24/7 customer support.",
            fulldetails:
                "These chatbots are built on state-of-the-art NLP models, providing human-like responses and managing complex customer queries 24/7 without human intervention, drastically reducing operational costs.",
            icon: Icons.chat_bubble_outline,
            index: 1,
          ),
          _solutionCard(
            title: "Automated Workflow",
            description:
                "Replace manual data entry with intelligent AI processing units.",
            fulldetails: "AI workflow automation uses machine learning to streamline complex business processes, reducing errors and freeing staff for higher-value work. It adapts over time, handling document processing, email management, and data entry autonomously.",
            icon: Icons.settings_suggest,
            index: 2,
          ),
          _solutionCard(
            title: "Computer Vision",
            description:
                "Object detection and image recognition for security and retail.",
            fulldetails: "Object detection enables computers to interpret visual data like humans, identifying and locating objects in real-time images and videos. Key applications include autonomous navigation, security surveillance, quality control, and medical imaging analysis.",
            icon: Icons.visibility_outlined,
            index: 3,
          ),
        ],
      ),
    );
  }

  Widget _solutionCard({
    required int index,
    required String title,
    required String description,
    required IconData icon,
    required String fulldetails,
  }) {
    // Use the state variable stored in the List using the index

    return Container(
      width: 350,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.deepOrange.withValues(alpha: 0.1),
            child: Icon(icon, color: Colors.deepOrange),
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(color: Colors.black54, height: 1.5),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              // Toggle the state to rebuild the widget and show/hide details
              setState(() {
                _isCardExpanded[index] = !_isCardExpanded[index];
              });
            },
            child: Text(_isCardExpanded[index] ? 'Collapse' : 'Learn More'),
          ),

          if (_isCardExpanded[index]) ...[
            const SizedBox(height: 15),
            Text(
              fulldetails,
              style: const TextStyle(color: Colors.black54, height: 1.6),
            ),
          ],
        ],
      ),
    );
  }
}
