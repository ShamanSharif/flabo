import 'package:flabo/view/utils/text_styles.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F1C1C),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/logo/3.png",
              height: 75,
            ),
            const SectionTitle(title: "People"),
            Wrap(
              runSpacing: 10,
              spacing: 10,
              children: [
                for (var i = 0; i < 20; i++)
                  const CircleAvatar(
                    backgroundColor: Colors.yellow,
                    radius: 50,
                  )
              ],
            ),
            const SectionTitle(title: "Calender"),
            Wrap(
              runSpacing: 20,
              spacing: 20,
              children: [
                for (var i = 0; i < 6; i++)
                  Container(
                    color: Colors.orange,
                    width: 100,
                    height: 100,
                  )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Text(title, style: headerTextStyle),
    );
  }
}
