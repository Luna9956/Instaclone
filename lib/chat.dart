import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
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
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.edit_document),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(children: [
                Flexible(
                  child: Container(
                    margin: EdgeInsets.all(20),
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(3)),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 90,
                child: ListView.builder(
                    itemCount: people.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(pics[index]),
                            ),
                          ),
                          Text(people[index])
                        ],
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Messages',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Requests',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              ListView.builder(
                  itemCount: people.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(pics[index]),
                      ),
                      title: Text(people[index]),
                      subtitle: Text('4+ new messages'),
                      trailing: Icon(Icons.photo_camera),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
