import 'package:flutter/material.dart';
import 'package:oct/storyview.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    List pics = [
      'images/a.png',
      'images/b.jpg',
      'images/c.jpeg',
      'images/d.jpeg',
      'images/p.jpeg'
    ];
    List people = ['amna', 'ayesha', 'joker', 'matilda', 'jogger'];
    List nature = [
      'images/a1.jpeg',
      'images/a2.jpg',
      'images/a3.jpg',
      'images/a4.jpg',
      'images/p.jpeg'
    ];
    return Scaffold(
      body: Column(
      //  mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 70,
            child: ListView.builder(
              itemCount: people.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FullScreenImage(
                                  pics: pics[index],
                                  people: people[index],
                                )));
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(pics[index]),
                    ),
                  ),
                );
              },
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(pics[index]),
                            ),
                          ),
                        ),
                        Text(people[index]),
                      ],
                    ),
                    Container(
                      height: 250,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(nature[index]))),
                    ),
                    Row(
                      children: [
                        Icon(Icons.favorite),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.comment),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.send),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 10))
                      ],
                    ),
                    Divider(),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
