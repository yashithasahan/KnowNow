import 'package:flutter/material.dart';
import 'package:knownow/constant/consttants.dart';
import '../lesson.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.displaySmall,
                      children: const [
                    TextSpan(
                        text: "What are you \nlearning ",
                        style: TextStyle(fontSize: 32)),
                    TextSpan(
                        text: 'today?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 34))
                  ])),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                LessonCard(
                  title: "Lesson one",
                  subtitle: "Lorem Ipsum is simply\ndummy text",
                ),
                const SizedBox(height: 10),
                LessonCard(
                  title: "Lesson one",
                  subtitle: "Lorem Ipsum is simply\ndummy text",
                ),
              ]),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                LessonCard(
                  title: "Lesson one",
                  subtitle: "Lorem Ipsum is simply\ndummy text",
                ),
                const SizedBox(height: 15),
                LessonCard(
                  title: "Lesson one",
                  subtitle: "Lorem Ipsum is simply\ndummy text",
                ),
              ]),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                LessonCard(
                  title: "Lesson one",
                  subtitle: "Lorem Ipsum is simply\ndummy text",
                ),
                const SizedBox(height: 15),
                LessonCard(
                  title: "Lesson one",
                  subtitle: "Lorem Ipsum is simply\ndummy text",
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}

class LessonCard extends StatelessWidget {
  final String title;
  final String subtitle;
  LessonCard({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Lesson()),
        );
      },
      child: SizedBox(
        width: 180,
        child: Stack(
          children: [
            Container(
              height: 220,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(29),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 33,
                        color: kShadowColor)
                  ]),
            ),
            Image.asset(
              "assets/images/history.png",
              width: 120,
              height: 120,
            ),
            Positioned(
              top: 10,
              right: 15,
              child: Column(
                children: [
                  IconButton(
                      iconSize: 25,
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border)),
                  const SizedBox(height: 5),
                  const Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.amber,
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "4.9",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Positioned(
              top: 130,
              child: SizedBox(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(subtitle),
                      ]),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: 30,
                width: 100,
                decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(29),
                        bottomRight: Radius.circular(29))),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Read",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
