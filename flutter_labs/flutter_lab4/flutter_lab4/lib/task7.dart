import 'package:flutter/material.dart'; // Standard Flutter Material import

class Task7 extends StatefulWidget {
  const Task7({super.key});

  @override
  State<Task7> createState() => _Task7State();
}

class _Task7State extends State<Task7> {
  // Task 6: Defining state variables [cite: 27]
  bool isFollowed = false;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Task 1: UI boundaries protection [cite: 7]
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.center, // Task 3: Center alignment [cite: 14]
          children: [
            const SizedBox(
              width: double.infinity,
            ), // Horizontal centering for Column
            // Task 2: Header with Margin [cite: 8, 10]
            Container(
              margin: const EdgeInsets.all(20.0),
              child: const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blueGrey,
              ),
            ),

            // Task 3: Name and Title [cite: 13]
            const Text(
              "Ayeza Naseem",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5.0), // Task 5: Spacing [cite: 23]
            const Text(
              "Software Engineer",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),

            const SizedBox(height: 30.0),

            // Task 4: Proportional Row (2:1 Ratio) [cite: 15, 17, 19]
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 80,
                    color: Colors.blue[300],
                    child: const Center(child: Text("Projects (Flex 2)")),
                  ),
                ),
                const SizedBox(width: 10.0), // Task 5 spacing [cite: 23]
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 80,
                    color: Colors.blue[100],
                    child: Center(
                      child: Text(
                        "Score: $score",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40.0),

            // Task 7: Elevated Button for Follow [cite: 29]
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isFollowed ? Colors.green : Colors.blue,
              ),
              onPressed: () {
                // Task 7: Using setState to toggle status
                setState(() {
                  isFollowed = !isFollowed;
                });
              },
              child: Text(
                isFollowed ? "Following" : "Follow",
                style: const TextStyle(color: Colors.white),
              ),
            ),

            const SizedBox(height: 20.0),

            // Task 7: Icon Button for Like [cite: 29]
            IconButton(
              iconSize: 40,
              icon: Icon(
                isFollowed ? Icons.favorite : Icons.favorite_border,
                color: Colors.red,
              ),
              onPressed: () {
                // Task 7: Using setState to increment score
                setState(() {
                  score++;
                });
              },
            ),
            const Text("Tap to Like!"),
          ],
        ),
      ),
    );
  }
}
