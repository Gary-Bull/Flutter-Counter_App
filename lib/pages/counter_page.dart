import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You pushed the button this many times:"),
            Text(
              _counter.toString(),
              style: const TextStyle(fontSize: 40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Text("Increment Counter"),
                ),
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: const Text("Decrement Counter"),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: _resetCounter,
              child: const Text("Reset Counter"),
            ),
          ],
        ),
      ),
    );
  }
}
