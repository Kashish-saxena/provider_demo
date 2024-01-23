import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/utils/state_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stateProvider = Provider.of<StateProvider>(context, listen: false);
    debugPrint("Called>>>>>>>");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<StateProvider>(
              builder: (context, value, child) {
                debugPrint("$value");
                debugPrint("$child");

                return Text(
                  "Count: ${value.count}",
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
              ),
              onPressed: () => stateProvider.increamentCount(),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
