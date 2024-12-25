import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});
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
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          title: Text(
            'Notifications',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 300,
              child: ListView.builder(
                  itemCount: people.length,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(pics[index]),
                      ),
                      title: Text(people[index]),
                      subtitle: Text('follow request'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    );
                  }),
            )
          ],
        ));
  }
}
