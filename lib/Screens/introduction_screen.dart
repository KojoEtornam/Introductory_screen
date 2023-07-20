import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:on_boarding/Screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroducScreen extends StatelessWidget {
  IntroducScreen({super.key});

  final List<PageViewModel> pages = [
    PageViewModel(
        footer: TextButton(
          onPressed: () {},
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),

            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: const Text(
              'This is Twitter',
              style: TextStyle(color: Colors.white, fontSize: 13.0),
            ),
          ),
        ),
        title: 'fist page ',
        body: 'On our first route into our introduction screen',
        image: Center(
          child: Image.asset('assets/images/twitter.png'),
        ),
        decoration: PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ))),
    PageViewModel(
        footer:TextButton(
          onPressed: () {},
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),

            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: const Text(
              'This is Tiktok',
              style: TextStyle(color: Colors.white, fontSize: 13.0),
            ),
          ),
        ),
        title: 'fist page haa',
        body: 'On our first route into our introduction screen',
        image: Center(
          child: Image.asset('assets/images/icons8-tik-tok-50.png'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ))),
    PageViewModel(
        footer:TextButton(
          onPressed: () {},
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),

            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: const Text(
              'This is Fbook',
              style: TextStyle(color: Colors.white, fontSize: 13.0),
            ),
          ),
        ),
        title: 'fist page haa',
        body: 'On our first route into our introduction screen',
        image: Center(
          child: Image.asset('assets/images/icons8-facebook-48.png'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Hello there'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: IntroductionScreen(
            pages: pages,
            dotsDecorator: const DotsDecorator(
                color: Colors.blue,
                activeSize: Size.square(20),
                activeColor: Colors.red,
                size: Size(17, 17)),
            showDoneButton: true,
            done: const Text(
              'Done',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            showSkipButton: true,
            skip: const Text(
              'Skip',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            showNextButton: true,
            next: const Icon(Icons.arrow_forward),
            onDone: () => onDone(context),
            curve: Curves.bounceOut,
          ),
        ));
  }

  void onDone(context) async  {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool('ON BORDING', false);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Home_Screen()));
  }
}
