import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.teal,
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            indicatorColor: Colors.white,
            tabs: [
            Tab(child: Icon(Icons.camera_alt)),
            Tab(
              child: Text('Chats'),
            ),
            Tab(
              child: Text('Status'),
            ),
            Tab(
              child: Text('Calls'),
            )
          ]),
          actionsIconTheme: IconThemeData(color: Colors.white),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => const [
                PopupMenuItem(value: '1', child: Text('New Group')),
                PopupMenuItem(value: '2', child: Text('Settings')),
                PopupMenuItem(value: '3', child: Text('Logout')),
              ],
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        body: TabBarView(
          children: [
            const Text('Camera'),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://media.licdn.com/dms/image/D4D03AQEEp6bhQ7IdEA/profile-displayphoto-shrink_200_200/0/1692550365748?e=1727308800&v=beta&t=Bq7r4vWKsGFb5P5dhrkNuKl6HkAwB9OUemGArE546co',
                    ),
                  ),
                  title: Text('John Wick'),
                  subtitle: Text('where is my dog?'),
                  trailing: Text('6:26 pm'),
                );
              },
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Status',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.teal, width: 3),
                            shape: BoxShape.circle,
                          ),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://media.licdn.com/dms/image/D4D03AQEEp6bhQ7IdEA/profile-displayphoto-shrink_200_200/0/1692550365748?e=1727308800&v=beta&t=Bq7r4vWKsGFb5P5dhrkNuKl6HkAwB9OUemGArE546co',
                            ),
                          ),
                        ),
                        title: const Text('John Wick'),
                        subtitle: const Text('35 min ago'),
                      );
                    },
                  ),
                ),
              ],
            ),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://media.licdn.com/dms/image/D4D03AQEEp6bhQ7IdEA/profile-displayphoto-shrink_200_200/0/1692550365748?e=1727308800&v=beta&t=Bq7r4vWKsGFb5P5dhrkNuKl6HkAwB9OUemGArE546co',
                    ),
                  ),
                  title: const Text('John Wick'),
                  subtitle: Text(index % 2 == 0
                      ? 'You missed an audio call'
                      : 'Call time is 12:23'),
                  trailing:
                      Icon(index % 2 == 0 ? Icons.phone_missed : Icons.video_call),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
