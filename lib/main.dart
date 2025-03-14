import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Lab1")),
        body: const ImageGrid(),
      ),
    );
  }
}

class ImageGrid extends StatelessWidget {
  const ImageGrid({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> places = [
      {"image": "images/me1.jpg", "title": "Marwan 1"},
      {"image": "images/me2.jpg", "title": "Marwan 2"},
      {"image": "images/me3.jpg", "title": "Marwan 3"},
      {"image": "images/me4.jpg", "title": "Marwan 4"},
      {"image": "images/me5.jpg", "title": "Marwan 5"},
      {"image": "images/me6.jpg", "title": "Marwan 6"},
      
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 1,
        ),
        itemCount: places.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  places[index]["image"]!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  color: Colors.black54,
                  child: Text(
                    places[index]["title"]!,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
