import 'package:flutter/material.dart';

void main() {
  runApp(const CounterAppPlus());
}

class CounterAppPlus extends StatelessWidget {
  const CounterAppPlus({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sayaç Uygulaması',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CounterScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;
  bool isDecreasing = false;

  void changeCounter() {
    setState(() {
      isDecreasing ? count-- : count++;
    });
  }

  void resetCounter() {
    setState(() {
      count = 0;
    });
  }

  void toggleMode() {
    setState(() {
      isDecreasing = !isDecreasing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sayaç Uygulaması'), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Sayı: $count', style: const TextStyle(fontSize: 40)),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: changeCounter,
                child: Text(isDecreasing ? 'Azalt' : 'Artır'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: resetCounter,
                child: const Text('Sıfırla'),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: toggleMode,
            child: Text(
              isDecreasing ? 'Artırma Moduna Geç' : 'Azaltma Moduna Geç',
            ),
          ),
        ],
      ),
    );
  }
}
