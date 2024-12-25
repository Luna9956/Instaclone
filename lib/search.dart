import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    List nature = [
      'images/a1.jpeg',
      'images/a2.jpg',
      'images/a3.jpg',
      'images/a4.jpg',
      'images/p.jpeg'
    ];
    List pics = [
      'images/a.png',
      'images/b.jpg',
      'images/c.jpeg',
      'images/d.jpeg',
      'images/p.jpeg'
    ];
    List middle = [
      'images/p.jpeg',
      'images/a3.jpg',
      'images/b.jpg',
      'images/a1.jpeg',
      'images/c.jpeg'
    ];
    return Scaffold(
      body: Column(
        children: [
          Row(children: [
            Flexible(
              child: Container(
                margin: EdgeInsets.all(20),
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(3)),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                  ),
                ),
              ),
            ),
          ]),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.25),
                              image: DecorationImage(
                                  image: AssetImage(pics[index]))),
                          height: 100,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.25),
                              image: DecorationImage(
                                  image: AssetImage(middle[index]))),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.25),
                              image: DecorationImage(
                                  image: AssetImage(nature[index]))),
                        ),
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
