import 'package:flutter/material.dart';

class ChatRoom extends StatelessWidget {
  // final Map<String, dynamic>userMap;
  // final String chatRoomId;

  //ChatRoom({this.chatRoomId, this.userMap});
  final TextEditingController _message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Name"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height / 1.25,
              width: size.width,
              // child: StreamBuilder<QuerySnapshot>(
              //   builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot) {},
              //),
            ),
          
      
            Container(
            height: size.height / 10,
            width: size.width,
            alignment: Alignment.center,
            child: Container(
              height: size.height / 12,
              width: size.width / 1.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: size.height / 17,
                    width: size.width / 1.3,
                    child: TextField(
                      controller: _message,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                      ),
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.send))
                  ],
                ),
              ),
            ),
          ]      
        ),
      )
    );
  }
}