import 'package:flutter/material.dart';
import 'package:oct/chat.dart';
import 'package:oct/favorite.dart';
import 'package:oct/home.dart';
import 'package:oct/profile.dart';
import 'package:oct/reels.dart';
import 'package:oct/search.dart';
import 'package:oct/upload.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Instagram'),
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Builder(builder: (context) {
                  return Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FavoriteScreen()));
                          },
                          icon: Icon(Icons.favorite)),
                      SizedBox(width: 20),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatScreen()),
                          );
                        },
                        icon: Icon(Icons.message),
                      ),
                    ],
                  );
                }),
              ),
            ],
          ),
          body: TabBarView(children: [
            HomeScreen(),
            SearchScreen(),
            UploadScreen(),
            ReelScreen(),
            ProfileScreen()
          ]),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(icon: Icon(Icons.search)),
              Tab(icon: Icon(Icons.add)),
              Tab(icon: Icon(Icons.movie)),
              Tab(
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
