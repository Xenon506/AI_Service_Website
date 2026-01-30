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
      
      appBar: AppBar(
        
        // backgroundColor:  Color.fromARGB(255, 91, 159, 226),

        // title: Text(widget.title),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
  expandedHeight: 160,
  pinned: true,
  flexibleSpace: FlexibleSpaceBar(
    title: Text(''),
    background: Image.asset(
      'assets/images/Dragob ball logo.jpeg',
      fit: BoxFit.cover,
    ),
  ),
),

        ],
      ),
      
    );
  }
}
