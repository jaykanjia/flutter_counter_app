import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _counter = 0;

  void _increment() {
    setState(() {
      _counter = _counter + 1;
    });
  }

  void _decrement() {
    if (_counter <= 0) return;
    setState(() {
      _counter = _counter - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Counter",
              style: TextStyle(fontSize: 24),
            ),
            Text(
              _counter.toString(),
              style: const TextStyle(fontSize: 48),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _increment,
                  child: const Text("Increment"),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: _decrement,
                  child: const Text("Decrement"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
