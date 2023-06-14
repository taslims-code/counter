import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text(myCounter.toString()),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                myCounter = myCounter == 0 ? 0 : myCounter - 1;
                setState(() {});
              },
              child: const Icon(Icons.remove),
            ),
            const SizedBox(
              width: 8,
            ),
            FloatingActionButton(
              onPressed: () {
                myCounter = myCounter + 1;
                setState(() {});
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              width: 8,
            ),
            FloatingActionButton(
              onPressed: () {
                myCounter = 0;
                setState(() {});
              },
              child: const Icon(Icons.clear),
            )
          ],
        ));
  }
}
