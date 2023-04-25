import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('E-Learning Dashboard'),
      // ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(10, (index) {
            return Center(
              child: CourseCard(
                title: 'Course ${index + 1}',
                description: 'This is a sample description for Course ${index + 1}.',
              ),
            );
          }),
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final String description;

  const CourseCard({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          print('Tapped on $title');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 18.0 / 11.0,
              child: Image.asset("assets/images/history.png", fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 8.0),
                  Text(description, style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}