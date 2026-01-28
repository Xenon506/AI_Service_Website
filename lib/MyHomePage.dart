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

        backgroundColor: const Color.fromARGB(255, 243, 108, 67),

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          
          children: [
            Padding(padding: EdgeInsetsGeometry.fromLTRB(5, 5, 5, 5)),
            SizedBox(
              height: 50,),
              // width: 10,
               TextField(
                decoration: InputDecoration(
                  hintText: "Contact",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )
                ) ,
              ),
            
            SizedBox(
              height: 50,),
              // width: 10,
               TextField(
                decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )
                ) ,
              ),
            
            SizedBox(
              height: 50,),
              // width: 10,
               TextField(
                decoration: InputDecoration(
                  hintText: "password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )
                ) ,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Save")),
                  ElevatedButton(onPressed: (){}, child: Text("Update")),
                ],
              ),
            
            
          ],
        ),
      ),
      
    );
  }
}
