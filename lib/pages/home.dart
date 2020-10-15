import 'package:ChatterBox/models/chat.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ChatModel> list = ChatModel.list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home")),
        backgroundColor: Color(0xFF35A7FF),
      ),
      body: Container(
        color: Colors.black12,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white54,
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.white54),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      list[index].contact.name,
                      style: TextStyle(color: Colors.white54),
                    ),
                    subtitle: Row(
                      children: <Widget>[
                        Text(
                          list[index].lastMessage,
                          style: TextStyle(color: Colors.white54),
                        ),
                        Text(
                          list[index].lastMessageTime,
                          style: TextStyle(color: Colors.white54),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xFF35A7FF),
        unselectedItemColor: Colors.white24,
        backgroundColor: Color(0xFF2F2F2F),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Container(child: Text("Chat")),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Container(child: Text("Groups")),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Container(child: Text("Search")),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Container(child: Text("Settings")),
          ),
        ],
      ),
    );
  }
}
