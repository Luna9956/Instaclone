import 'package:flutter/material.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({super.key});
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.cancel),
                  Text(
                    'New Post',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/a4.jpg'))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Recents>',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Drafts',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.file_copy),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.photo_camera),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 200,
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
      ),
    );
  }
}
