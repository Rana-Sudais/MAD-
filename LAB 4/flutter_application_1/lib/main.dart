import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isFollowed = false;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile UI"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            // ---------- HEADER ----------
            Container(
              margin: const EdgeInsets.all(20.0),
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://i.pravatar.cc/150?img=3"),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Rana Sudais",
                    style: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Flutter Developer",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // ---------- PROPORTIONAL ROW (2:1) ----------
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 80,
                    color: Colors.blue[100],
                    child: const Center(
                      child: Text("Flex 2"),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 80,
                    color: Colors.green[100],
                    child: const Center(
                      child: Text("Flex 1"),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // ---------- CARD WITH SCORE ----------
            Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                leading: const Icon(Icons.favorite, color: Colors.red),
                title: const Text("Total Likes"),
                subtitle: Text("$score Likes"),
              ),
            ),

            const SizedBox(height: 20),

            // ---------- BUTTONS ----------
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isFollowed = !isFollowed;
                    });
                  },
                  child: Text(isFollowed ? "Following" : "Follow"),
                ),
                const SizedBox(width: 20),
                IconButton(
                  icon: const Icon(Icons.thumb_up),
                  onPressed: () {
                    setState(() {
                      score++;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}