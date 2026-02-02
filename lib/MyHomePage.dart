import 'package:contact_list/HomePage_Contact.dart';
import 'package:contact_list/Solutions.dart';
import 'package:contact_list/exploreservice.dart';
import 'package:contact_list/getstarted.dart';
import 'package:contact_list/homepage_Pricing.dart';
import 'package:contact_list/product.dart';
import 'package:flutter/material.dart';



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
      drawer: DrawerButtonIcon(), drawerScrimColor: Colors.black, backgroundColor:  Color.fromARGB(221, 22, 21, 21),
    );
  }

  AppBar _appBar() {
    
    return AppBar(
      
      elevation: 30,
      backgroundColor: Colors.white,
      centerTitle: true,
      title:  Text(
        "AI Service",
        style: TextStyle(
          color: Colors.deepOrange,
          fontWeight: FontWeight.bold,
          
        ),
        // textDirection: TextDirection.rtl,
        // textAlign: TextAlign.right,
      ),

      actions: [
        _navButton(context, "Product", (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => Product()));
        }),
        _navButton(context, "Solutions", (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => Solutions()));
        }),
        _navButton(context, "Pricing", (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => HomepagePricing()));
        }),
        _navButton(context, "Contact", (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => HomepageContact()));
        }),



        // Padding(padding: EdgeInsetsGeometry.all(6),
        // child: ElevatedButton(
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor: const Color.fromARGB(255, 202, 54, 9),
        //   ),
        //   onPressed: (){
        //   Navigator.push(context, MaterialPageRoute(builder: (context)=> Product()));
        // }, child: Text('Solutions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, foreground: Paint()),),
        // )),



        // _navButton(context, "Solutions", (){
        //   Navigator.push(context, 
        //   MaterialPageRoute(builder: (context)=> Solutions()));
        // }),
      ],
      
      

      
      // actions: [
      //   _navItem("Product"),
      //   _navItem("Solutions"),
      //   _navItem("Pricing"),
      //   _navItem("Contact"),
      //   Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 16),
      //     child: ElevatedButton(
      //       style: ElevatedButton.styleFrom(
      //         backgroundColor: Colors.deepOrange,
      //       ),
      //       onPressed: () {
      //         Navigator.push(context, MaterialPageRoute(builder: (context) => GetStartedPage()));
      //       },
      //       child: const Text("Get Started"),
      //     ),
      //   ),
      // ],
    );
  }

  Widget _navButton(BuildContext context, String title, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 2,
        )
      ,onPressed: onPressed, child: Text(title),
    ));
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 100),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFFFF8F2), Colors.white],
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
                 Text(
                  "ARTIFICIAL INTELLIGENCE",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    letterSpacing: 2,
                  ),
                ),
                 SizedBox(height: 16),
                 Text(
                  "Build, Deploy & Scale AI Solutions for Real-World Impact",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 46,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // const SizedBox(height: 20),
                const Text(
                  "From chatbots to predictive analytics,\nWe help businesses turn data into decisions.",
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                const SizedBox(height: 30),
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
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context)=> ExploreservicePage()));
                      },
                      child: const Text("Explore Services",style: TextStyle(color: Colors.white, fontSize: 16),),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Contact Sales",style: TextStyle(color: Colors.white, fontSize: 16),),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: 40),
          Expanded(
            // child: Icon(
            //   Icons.auto_graph,
            //   size: 260,
            //   color: Colors.orange.shade200,
            // ),
            child: Image.asset('assets/images/ai2.jpeg'),
          )
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
        children:  [
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
            color: Color.fromARGB(255, 248, 108, 65),
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
    return _section(
      "AI Services",
      [
        _card(Icons.chat, "AI Chatbots"),
        _card(Icons.analytics, "Predictive Analytics"),
        _card(Icons.image, "Computer Vision"),
        _card(Icons.description, "Document AI"),
      ],
    );
  }
}

class BenefitsSection extends StatelessWidget {
  const BenefitsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return _section(
      "Platform Benefits",
      [
        _card(Icons.security, "Enterprise Security"),
        _card(Icons.speed, "High Performance"),
        _card(Icons.settings, "Custom AI Models"),
      ],
    );
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
      borderRadius: BorderRadius.circular(250),
      boxShadow: [
        BoxShadow(
          blurRadius: 20,
          color: Colors.black12,
        ),
      ],
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
    return Container(
      // width: 800,
      padding: const EdgeInsets.all(40),
      color: Colors.black87,
      child: const Column(
        children: [
          Text(
            "Contact Us",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(height: 10),
          Text("support@aiservice.com", style: TextStyle(color: Colors.white70)),
          Text("+91 98765 43210", style: TextStyle(color: Colors.white70)),
        ],
      ),
    );
  }
}

class PricingSection extends StatelessWidget {
  const PricingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
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
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 17, 16, 16), textBaseline: TextBaseline.ideographic),
          ),
          const SizedBox(height: 12),
          const Text(
            "Choose a plan that fits your AI needs",
            style: TextStyle(fontSize: 26, color: Colors.black54,),
            
          ),
          const SizedBox(height: 60),

          Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children:  [
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
          BoxShadow(
            blurRadius: 25,
            color: Color.fromARGB(31, 240, 234, 234),
          ),
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
              child:  Text(
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
          Text(
            subtitle,
            style: const TextStyle(color: Colors.black54),
          ),
          const SizedBox(height: 30),

          ...features.map(
            (f) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                children: [
                  const Icon(Icons.check_circle,
                      size: 18, color: Color(0xFFFF7043)),
                  SizedBox(width: 10),
                  Expanded(child: Text(f)),
                ],
              ),
            ),
          ),

          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  isPopular ? Colors.deepOrange : Colors.black87,
              padding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
            ),
            onPressed: () {},
            child: const Text("Get Started"),
          ),
        ],
      ),
    );
  }
}


