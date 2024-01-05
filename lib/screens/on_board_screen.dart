import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:quran_app/screens/home_screen.dart';

class onBoardScreen extends StatefulWidget {
  const onBoardScreen({super.key});

  @override
  State<onBoardScreen> createState() => _onBoardScreenState();
}

class _onBoardScreenState extends State<onBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Read Quran",
            bodyWidget: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Customize your reading view, read in multiple languages, listen different auido ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            image: Center(
                child: Image.asset(
              "assets/quran.png",
              fit: BoxFit.fitWidth,
            )),
          ),
          PageViewModel(
            title: "Prayer Alert",
            bodyWidget: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "choose your adhan, which prayer to be notified of and how often. ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            image: Center(child: Image.asset("assets/prayer.png")),
          ),
          PageViewModel(
            title: "Build Better Habits",
            bodyWidget: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Make islamic practices a part of your daily life in a way that best suits your life ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            image: Center(child: Image.asset("assets/zakat.png")),
          ),
        ],
        onDone: () {
          // On Done button pressed
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        showNextButton: true,
        next: const Icon(
          Icons.arrow_forward,
          color: Colors.black,
        ),
        done: const Text("Done",
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          //activeColor: Theme.of(context).colorScheme.secondary,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        ),
      ),
    );
  }
}
