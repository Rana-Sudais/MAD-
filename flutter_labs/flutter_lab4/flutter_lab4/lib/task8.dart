import 'package:flutter/material.dart';

class Task8 extends StatefulWidget {
  const Task8({super.key});

  @override
  State<Task8> createState() => _Task8State();
}

class _Task8State extends State<Task8> {
  // Task 6: State variables [cite: 27]
  bool isFollowed = false;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Task 1: Safe Scaffold [cite: 7]
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Task 3 [cite: 14]
          children: [
            const SizedBox(width: double.infinity),

            // Task 2: Header [cite: 11]
            Container(
              margin: const EdgeInsets.all(20.0), // Task 2 [cite: 10]
              child: const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blueGrey,
              ),
            ),

            const Text(
              "Ayeza Naseem",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Software Engineer",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 20), // Task 5: Spacing [cite: 23]
            // Task 4: Proportional Row (2:1 Ratio) [cite: 19]
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 60,
                    color: Colors.blue[200],
                    child: const Center(child: Text("Projects")),
                  ),
                ),
                const SizedBox(width: 10), // Task 5 [cite: 23]
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 60,
                    color: Colors.blue[100],
                    child: Center(child: Text("Likes: $score")),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Task 7: Material Buttons & setState [cite: 29]
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isFollowed = !isFollowed; // Task 7: Toggle status
                });
              },
              child: Text(isFollowed ? "Unfollow" : "Follow"),
            ),

            IconButton(
              icon: const Icon(Icons.thumb_up),
              onPressed: () {
                setState(() {
                  score++; // Task 7: Increment score
                });
              },
            ),

            const SizedBox(height: 20), // Task 5 [cite: 23]
            // Task 8: Material Card Implementation [cite: 31]
            Card(
              elevation: 8, // Shadowed, elevated look [cite: 32]
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                // Clean Icon + Title + Subtitle [cite: 33]
                leading: const Icon(Icons.star, color: Colors.orange),
                title: const Text("Engagement Statistics"),
                subtitle: Text("Total Points: $score"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
