import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Lab Activity',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Lab Widgets'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              containerExample(),
              listViewExample(),
              gridViewExample(),
              stackExample(),
            ],
          ),
        ),
      ),
    );
  }
}

// PART 3 – Container Widget
Widget containerExample() {
  return Container(
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(15),
    ),
    child: const Text(
      "This is a Container Widget",
      style: TextStyle(color: Colors.white, fontSize: 18),
    ),
  );
}

// PART 4 – ListView with Dynamic Content
List<String> subjects = [
  "Programming",
  "Networking",
  "Database",
  "Web Development",
  "Mobile Development"
];

Widget listViewExample() {
  return SizedBox(
    height: 200,
    child: ListView.builder(
      itemCount: subjects.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.book),
          title: Text(subjects[index]),
        );
      },
    ),
  );
}

// PART 5 – GridView Widget
Widget gridViewExample() {
  return SizedBox(
    height: 200,
    child: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(8),
          color: Colors.orange,
          child: Center(
            child: Text(
              "Item ${index + 1}",
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    ),
  );
}

// PART 6 – Stack Widget
Widget stackExample() {
  return Container(
    height: 200,
    margin: const EdgeInsets.all(10),
    child: Stack(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.grey,
        ),
        const Positioned(
          top: 20,
          left: 20,
          child: Text(
            "Stack Example",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    ),
  );
}