import 'package:flutter/material.dart';

class Task5 extends StatelessWidget {
  const Task5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: double.infinity),
            const CircleAvatar(radius: 50, backgroundColor: Colors.blueGrey),
            const SizedBox(height: 15.0),
            const Text(
              "Ayeza Naseem",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5.0),
            const Text(
              "Software Engineer",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 30.0),

            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 80,
                    color: Colors.blue[100],
                    child: const Center(child: Text("Projects (Flex 2)")),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 80,
                    color: Colors.blue[300],
                    child: const Center(child: Text("Rating (Flex 1)")),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
