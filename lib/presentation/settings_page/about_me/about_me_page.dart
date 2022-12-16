import 'package:flutter/material.dart';
import 'package:flutter_to_do/presentation/settings_page/settings_page.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'ABOUT ME'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  // border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: bgImg1, scale: 1.5, fit: BoxFit.cover),
                ),
                alignment: Alignment.center,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Abdulmumin',
                      style: Theme.of(context).textTheme.displaySmall,
                      children: [
                        TextSpan(
                            text: ' Idris',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    color: Theme.of(context).primaryColor))
                      ]),
                ),
              ),
              buildVerticalSpace(),
              _buildHeading(context, 'Intro'),
              _buildBody(context, intro),
              buildVerticalSpace(),
              _buildHeading(context, 'Bio'),
              _buildBody(context, bio),
              buildVerticalSpace(),
              _buildHeading(context, 'About'),
              _buildBody(context, about),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeading(context, String string) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        string,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }

  Widget _buildBody(context, String string) {
    return Text(
      string,
      textAlign: TextAlign.justify,
      style: Theme.of(context).textTheme.bodyText2,
    );
  }

  final String intro = 'My name is Abdulmumin, and I am a flutter Developer'
      ' with 3+ years of experience. This is one of my projects.';

  final String bio = 'I graduated in 2018 and have since been writing flutter'
      ' applications. I have also dabbled in artificial intelligence and obtained'
      ' some personal certifications, including the tensorflow developer certification.'
      ' I also completed a four-month boot camp that deepened my knowledge of artificial'
      ' intelligence.';

  final String about =
      'I am very enthusiastic about what I do, and I am always eager'
      ' to learn more.'
      '\nMy approach to software development prioritizes writing scalable and'
      ' testable code, as well as staying current on industry standards and best practices.'
      ' I also place a high value on reading documentation and making full use of the'
      ' powerful packages available.'
      '\nI strive to deliver products that are structurally sound,'
      ' bug-free, and delivered on time.';
}
