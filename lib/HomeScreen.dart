import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  bool isLoading=false;
  
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(("Home Screen"))
      ),
      body: isLoading? Center(
        child: Container(
          height: size.height /20,
          width: size.height / 20,
        ),
        )
        : Column(
          children: [
            SizedBox(
              height: size.height / 20,
            ), 
            Container(
              height: size.height / 14,
              width: size.width,
              alignment: Alignment.center,
              child: Container(
                height: size.height /14,
                width: size.width / 1.15,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height / 50,
            ),
            ElevatedButton(
              onPressed: () {}, 
              child: Text("Search"),
            )
            
          ],
        ),
    );
  }
  Widget chatTile(Size size) {
    return Container(
      height: size.height / 12,
      width: size.width / 1.2,
      child: Row(
        children: [

        ]
      ),
    );
  }
}