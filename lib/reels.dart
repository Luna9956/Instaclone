import 'package:flutter/material.dart';

class ReelScreen extends StatelessWidget {
  const ReelScreen({super.key});
  @override
  Widget build(BuildContext context) {
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Reels',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.photo_camera)
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(middle[index]),
                            fit: BoxFit.fill)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.pink,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Icon(
                          Icons.message,
                          color: Colors.pink,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Icon(Icons.save, color: Colors.pink)
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
