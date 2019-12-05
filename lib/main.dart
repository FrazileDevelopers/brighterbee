import 'package:brighterbee/MainScreen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Brighterbee",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 7,
      navigateAfterSeconds: new OnBoardingPage(),
      title: Text(
        "welcome to brighterbee",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
      backgroundColor: Colors.yellowAccent[300],
      photoSize: 120.0,
      loaderColor: Colors.red,
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => AfterSplash()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "SOCIAL GOOD",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                  child: Text(
                      "Social good apps can be used to educate and to provide that specific skill set which makes that student fir for hiring",
                      style: bodyStyle)),
            ],
          ),
          image: Image.network(
              "https://flutter.io/images/catalog-widget-placeholder.png"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Get Prepared",
          body: "It is good to rub , and polish our brain against of others",
          image: Image.network(
              "https://flutter.io/images/catalog-widget-placeholder.png"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Learn as you go",
          body:
              "Download the DEXTERIX app and master the market with our mini-lesson.",
          image: Image.network(
              "https://flutter.io/images/catalog-widget-placeholder.png"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "there is no limit for learning",
          body:
              "In vain have you acquired if you have not imparted it to others",
          image: Image.network(
              "https://flutter.io/images/catalog-widget-placeholder.png"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Mentorship and best content",
          body:
              "we provide mentorship form industrail experts and easy to understand contents",
          image: Image.network(
              "https://flutter.io/images/catalog-widget-placeholder.png"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Lets start exploring",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                  child: Text("Click on Done to start your new journey",
                      style: bodyStyle)),
            ],
          ),
          image: Image.network(
              "https://flutter.io/images/catalog-widget-placeholder.png"),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}

class AfterSplash extends StatefulWidget {
  @override
  _AfterSplashState createState() => _AfterSplashState();
}

class _AfterSplashState extends State<AfterSplash> {
  @override
  Widget build(BuildContext context) {
    return MainScreen();
  }
}
