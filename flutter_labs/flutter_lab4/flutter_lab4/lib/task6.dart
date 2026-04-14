import 'package:flutter/material.dart';

class Task6 extends StatefulWidget {
  // [cite: 25, 26]
  const Task6({super.key});

  @override
  State<Task6> createState() => _Task6State();
}

class _Task6State extends State<Task6> {
  // Task 6: Variables define karna _State class ke andar
  bool isFollowed = false; //
  int score = 0; //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // [cite: 5, 7]
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // [cite: 14]
          children: [
            const SizedBox(width: double.infinity),
            const CircleAvatar(radius: 50, backgroundColor: Colors.blueGrey),
            const SizedBox(height: 15.0), // [cite: 21, 23]
            const Text(
              "Ayeza Naseem",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Software Engineer",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 30.0),

            // Task 4 & 5: Proportional Layout with Spacing
            Row(
              children: [
                Expanded(
                  flex: 2, // [cite: 19]
                  child: Container(
                    height: 80,
                    color: Colors.blue[100],
                    child: const Center(child: Text("Projects (Flex 2)")),
                  ),
                ),
                const SizedBox(width: 10.0), // [cite: 23]
                Expanded(
                  flex: 1, // [cite: 19]
                  child: Container(
                    height: 80,
                    color: Colors.blue[300],
                    child: Center(
                      child: Text("Score: $score"),
                    ), // Score display karna
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
            Text(isFollowed ? "Following" : "Not Following"), // Status display
          ],
        ),
      ),
    );
  }
}
