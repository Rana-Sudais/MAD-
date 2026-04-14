import 'package:flutter/material.dart';

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          //
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
                color: Colors.blue[300],
                child: const Center(child: Text("Projects (Flex 2)")),
              ),
            ),
            const SizedBox(width: 10),

            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                color: Colors.blue[100],
                child: const Center(child: Text("Rating (Flex 1)")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
