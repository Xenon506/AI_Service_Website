import 'package:contact_list/AboutUs.dart';
import 'package:contact_list/ConnectForSolutionsPage.dart';
import 'package:contact_list/Solutions.dart';
import 'package:contact_list/getstarted.dart';
import 'package:contact_list/product.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart' show FaIcon, FontAwesomeIcons;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(),
            MetricsSection(),
            ServicesSection(),
            BenefitsSection(),
            PricingSection(),
            FooterSection(),
          ],
        ),
      ),
       persistentFooterDecoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffffffff), Color(0xFFFF7A00) , Color(0xFFFFE1C4)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),

      // backgroundColor: Color.fromARGB(221, 74, 72, 72),
    );
  }

  AppBar _appBar() {
    return AppBar(
      elevation: 20,
      backgroundColor: Colors.white,
      // centerTitle: true,
      title: Row(
    children: [
      Image.asset(
        'assets/images/ai.jpeg', 
        fit:BoxFit.cover,
        height: 50, 
        width: 50,
      ),
      const SizedBox(width: 10), // Adds space between image and text
      const Text(
        "Home",
        style: TextStyle(
          color: Colors.deepOrange, 
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
      // iconTheme: IconThemeData(opticalSize: 21),
      

      actions: [
        _navButton(context, "Product", () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Product()),
          );
        }),
        _navButton(context, "Solutions", () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Solutions()),
          );
        }),
        // _navButton(context, "Pricing", () {
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(builder: (context) => HomepagePricing()),
        //   );
        // }),
        _navButton(context, "Contact", () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ConnectForSolutionsPage()),
          );
        }),

        _navButton(context, "About Us", () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Aboutus()),
          );
        }),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 251, 250, 250)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GetStartedPage()),
              );
            },
            child: Text("Get Started", style: TextStyle(foreground: Paint()), ),
          ),
        ),
      ],
    );
  }



  Widget _navButton(
    BuildContext context,
    String title,
    VoidCallback onPressed,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 2,
        ),
        onPressed: onPressed,
        child: Text(title),
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffffffff), Color(0xFFFF7A00) , Color(0xFFFFE1C4)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        children: [

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                // Padding(padding: EdgeInsetsGeometry.fromLTRB(10, 40, 10, 20)),
                
                    Padding(padding: EdgeInsetsGeometry.fromLTRB(0, 10, 80, 40)),
                    Transform.translate(offset: Offset(0, -122),
                    child: Text(
                      
                      "ARTIFICIAL INTELLIGENCE",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.deepOrange,
                        letterSpacing: 2,
                        
                      ),
                    ),
                    ),

                SizedBox(height: 36),
                Text(
                  "Build,Deploy & Scale AI Solutions for Real-World Impact",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 56,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  "From chatbots to predictive analytics,\nWe help businesses turn data into decisions.",
                  style: TextStyle(fontSize: 28, color: Colors.black54),
                ),
                const SizedBox(height: 60),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        //   backgroundColor: const Color.fromARGB(255, 231, 220, 217),
                        //   padding: const EdgeInsets.symmetric(
                        //     horizontal: 32,
                        //     vertical: 16,
                        //   ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Solutions(),
                          ),
                        );
                      },
                      child: const Text(
                        "Explore Solutions",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    SizedBox(width: 30),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ConnectForSolutionsPage()));
                      },
                      child: const Text(
                        "Contact Sales",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 40),
          Expanded(
            child: Image.asset('assets/images/ai2.jpeg'),
          ),
        ],
      ),
    );
  }
}

class MetricsSection extends StatelessWidget {
  const MetricsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _Metric("44%", "Accuracy Improvement"),
          _Metric("\$10M+", "Productivity Gains"),
          _Metric("96%", "Response Accuracy"),
        ],
      ),
    );
  }
}

class _Metric extends StatelessWidget {
  final String value;
  final String label;

  const _Metric(this.value, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 245, 88, 41),
          ),
        ),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return _section("AI Services", [
      _card(Icons.chat, "AI Chatbots"),
      _card(Icons.analytics, "Predictive Analytics"),
      _card(Icons.image, "Computer Vision"),
      _card(Icons.description, "Document AI"),
    ]);
  }
}

class BenefitsSection extends StatelessWidget {
  const BenefitsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return _section("Platform Benefits", [
      _card(Icons.security, "Enterprise Security"),
      _card(Icons.speed, "High Performance"),
      _card(Icons.settings, "Custom AI Models"),
    ]);
  }
}

Widget _section(String title, List<Widget> cards) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 60),
    child: Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 40),
        Wrap(spacing: 30, runSpacing: 30, children: cards),
      ],
    ),
  );
}

Widget _card(IconData icon, String title) {
  return Container(
    width: 260,
    padding: const EdgeInsets.all(24),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 121, 101, 101),
      borderRadius: BorderRadius.circular(50),
      boxShadow: [BoxShadow(blurRadius: 20, color: Colors.black12)],
    ),
    child: Column(
      children: [
        Icon(icon, size: 50, color: Colors.deepOrange[400]),
        const SizedBox(height: 20),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}




class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;

        return Column(
          children: [
            // ================= TOP SECTION =================
            Container(
              color: const Color.fromARGB(255, 243, 121, 55),
              padding: EdgeInsets.symmetric(
                vertical: 60,
                horizontal: isMobile ? 20 : 100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  isMobile
                      ? _buildMobileNavColumns()
                      : _buildDesktopNavColumns(),
                  const SizedBox(height: 60),
                  _buildNewsletterSection(isMobile),
                ],
              ),
            ),

            // ================= BOTTOM SECTION =================
            Container(
              color: const Color(0xFF111111),
              padding: EdgeInsets.symmetric(
                vertical: 25,
                horizontal: isMobile ? 20 : 100,
              ),
              child: _buildLegalAndSocial(isMobile),
            ),
          ],
        );
      },
    );
  }

  // ---------------- NAVIGATION ----------------
  Widget _buildDesktopNavColumns() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _FooterColumn(title: "MEDIA", links: [
          "News",
          "In-Depth",
          "Startup Spotlight",
          "Newsletter",
          "Resources",
          "Glossary"
        ]),
        _FooterColumn(title: "DATALABS", links: [
          "Company",
          "Investor",
          "Research Reports",
          "Industry",
          "Location"
        ]),
        _FooterColumn(
            title: "COURSES", links: ["D2CX", "MANAGEMENTX", "ANGELX"]),
        _FooterColumn(title: "EVENTS", links: [
          "GenAI Summit 2025",
          "MoneyX 2025",
          "D2C Retreat 2025"
        ]),
        _FooterColumn(
            title: "MORE", links: ["Partner With Us", "About Us", "Contact"]),
      ],  
    );
  }

  Widget _buildMobileNavColumns() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _FooterColumn(title: "MEDIA", links: ["News", "In-Depth", "Newsletter"]),
        SizedBox(height: 30),
        _FooterColumn(title: "DATALABS", links: ["Company", "Investor"]),
        SizedBox(height: 30),
        _FooterColumn(title: "COURSES", links: ["D2CX", "ANGELX"]),
        SizedBox(height: 30),
        _FooterColumn(title: "EVENTS", links: ["GenAI Summit", "MoneyX"]),
        SizedBox(height: 30),
        _FooterColumn(title: "MORE", links: ["About Us", "Contact"]),
      ],
    );
  }

  // ---------------- NEWSLETTER ----------------
  Widget _buildNewsletterSection(bool isMobile) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color:  Colors.black54,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 10),
        ],
      ),
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ..._newsletterContentWidgets(),
                const SizedBox(height: 20),
                ..._newsletterFormWidgets(),
              ],
            )
          : Row(
              children: [
                Expanded(child: Column(children: _newsletterContentWidgets())),
                const SizedBox(width: 40),
                Expanded(child: Row(children: _newsletterFormWidgets())),
              ],
            ),
    );
  }

  List<Widget> _newsletterContentWidgets() {
    return [
      // Image.asset('assets.ai1.jpeg'),
      Text(
        "Subscribe to our Newsletter",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 10),
      Text(
        "Get weekly insights, startup stories & deep tech analysis.",
        style: TextStyle(color: Colors.black54),
      ),
    ];
  }

  List<Widget> _newsletterFormWidgets() {
    return [
      Expanded(
        child: TextField(
          decoration: InputDecoration(
            hintText: "Enter your email",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      const SizedBox(width: 10),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
          backgroundColor: Colors.black,
        ),
        child: const Text("Subscribe"),
      ),
    ];
  }

  // ---------------- LEGAL & SOCIAL ----------------
  Widget _buildLegalAndSocial(bool isMobile) {
    return isMobile
        ? Column(
            children: [
              _buildLegalLinks(isMobile),
              const SizedBox(height: 15),
              _buildSocialIcons(),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildLegalLinks(isMobile),
              _buildSocialIcons(),
            ],
          );
  }

  Widget _buildLegalLinks(bool isMobile) {
    return Wrap(
      spacing: isMobile ? 15 : 30,
      children: const [
        _LegalText("Terms"),
        _LegalText("Privacy"),
        _LegalText("Disclaimer"),
        _LegalText("Refund Policy"),
      ],
    );
  }

  Widget _buildSocialIcons() {
    return Row(
      children: const [
        _SocialIcon(FontAwesomeIcons.xTwitter),
        _SocialIcon(FontAwesomeIcons.linkedinIn),
        _SocialIcon(FontAwesomeIcons.instagram),
        _SocialIcon(FontAwesomeIcons.youtube),
      ],
    );
  }
}

// ================= HELPER WIDGETS =================
class _FooterColumn extends StatelessWidget {
  final String title;
  final List<String> links;

  const _FooterColumn({required this.title, required this.links});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 14, letterSpacing: 1),
        ),
        const SizedBox(height: 12),
        ...links.map(
          (link) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              link,
              style: const TextStyle(color: Colors.black54),
            ),
          ),
        ),
      ],
    );
  }
}

class _LegalText extends StatelessWidget {
  final String text;
  const _LegalText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(color: Colors.white70, fontSize: 13));
  }
}

class _SocialIcon extends StatelessWidget {
  final IconData icon;
  const _SocialIcon(this.icon);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(icon, color: Colors.white70, size: 18),
      onPressed: () {},
    );
  }
}


class PricingSection extends StatelessWidget {
  const PricingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 26),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Color(0xFFFFF3E8)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          Text(
            "Pricing Plans",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 17, 16, 16),
              textBaseline: TextBaseline.ideographic,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            "Choose a plan that fits your AI needs",
            style: TextStyle(fontSize: 26, color: Colors.black54),
          ),
          const SizedBox(height: 60),

          Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: [
              PricingCard(
                title: "Starter",
                price: "₹0",
                subtitle: "For individuals",
                features: [
                  "Basic AI tools",
                  "Limited API usage",
                  "Community support",
                ],
              ),
              PricingCard(
                title: "Pro",
                price: "₹999/mo",
                subtitle: "Most Popular",
                isPopular: true,
                features: [
                  "All AI services",
                  "Unlimited API calls",
                  "Priority support",
                  "Advanced analytics",
                ],
              ),
              PricingCard(
                title: "Enterprise",
                price: "Custom",
                subtitle: "For organizations",
                features: [
                  "Custom AI models",
                  "Dedicated infrastructure",
                  "24/7 premium support",
                  "On-prem deployment",
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PricingCard extends StatelessWidget {
  final String title;
  final String price;
  final String subtitle;
  final List<String> features;
  final bool isPopular;

  const PricingCard({
    super.key,
    required this.title,
    required this.price,
    required this.subtitle,
    required this.features,
    this.isPopular = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 14, 14, 14),
        borderRadius: BorderRadius.circular(20),
        border: isPopular
            ? Border.all(color: Colors.deepOrange, width: 2)
            : null,
        boxShadow: [
          BoxShadow(blurRadius: 25, color: Color.fromARGB(31, 240, 234, 234)),
        ],
      ),
      child: Column(
        children: [
          if (isPopular)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.deepOrange[400],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "MOST POPULAR",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),

          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            price,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
          const SizedBox(height: 6),
          Text(subtitle, style: const TextStyle(color: Colors.black54)),
          const SizedBox(height: 30),

          ...features.map(
            (f) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                children: [
                  const Icon(
                    Icons.check_circle,
                    size: 18,
                    color: Color(0xFFFF7043),
                  ),
                  SizedBox(width: 10),
                  Expanded(child: Text(f)),
                ],
              ),
            ),
          ),

          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: isPopular ? Colors.deepOrange : Colors.black87,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
            ),
            onPressed: () {},
            child: const Text("Get Started"),
          ),
        ],
      ),
    );
  }
}
