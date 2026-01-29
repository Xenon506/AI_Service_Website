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
        
        backgroundColor:  Color.fromARGB(255, 35, 126, 229),

        title: Text(widget.title),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
  expandedHeight: 200,
  pinned: true,
  flexibleSpace: FlexibleSpaceBar(
    title: Text('Dynamic AppBar'),
    background: Image.network(
      'https://img.freepik.com/free-photo/anime-eyes-illustration_23-2151660486.jpg?w=360',
      fit: BoxFit.cover,
    ),
  ),
),

        ],
      ),
      
    );
  }
}
