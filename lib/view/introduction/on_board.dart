import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:head_start/core/init/lang/locale_keys.g.dart';
import 'package:head_start/theme/animations/slide_anim.dart';
import 'package:head_start/view/introduction/intropage1.dart';
import 'package:head_start/view/introduction/intropage2.dart';
import 'package:head_start/view/introduction/intropage3.dart';
import 'package:head_start/view/introduction/intropage4.dart';
import 'package:head_start/view/main/home_view.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// "page3": "Pocket Place, etrafındaki yerleri keşfetmeni sağlayan bir uygulamadır. \n\nUygulamayı kullanmak için, haritada bulunan yerlerden birini seçmen yeterli."

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  void initState() {
    super.initState();
    checkOnboardingStatus();
  }

  Future<void> checkOnboardingStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    late bool onboardingCompleted = prefs.getBool('onboardingCompleted') ?? false;

    if (onboardingCompleted) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const HomeView())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 3);
            });
          },
          controller: _controller,
          children: const [IntroPage0(), IntroPage1(), IntroPage2(), IntroPage3()],
        ),
        Container(
          alignment: const Alignment(0, 0.8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmoothPageIndicator(
                  controller: _controller,
                  count: 4,
                  effect: const ExpandingDotsEffect(dotColor: Colors.black, activeDotColor: Colors.orange)),
              onLastPage
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(context, SlideAnim(page: const HomeView()));
                      },
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration:
                              BoxDecoration(color: Colors.grey.shade700, borderRadius: BorderRadius.circular(8)),
                          child: Text(LocaleKeys.introduction_done.tr())))
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.linear);
                      },
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration:
                              BoxDecoration(color: Colors.grey.shade700, borderRadius: BorderRadius.circular(8)),
                          child: Text(LocaleKeys.introduction_next.tr())))
            ],
          ),
        )
      ],
    ));
  }
}
