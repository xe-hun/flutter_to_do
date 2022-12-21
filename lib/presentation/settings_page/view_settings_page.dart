import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_to_do/presentation/router/app_router.gr.dart';
import 'package:flutter_to_do/presentation/settings_page/settings_page.dart';

class ViewSettingsPage extends StatelessWidget {
  const ViewSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'SETTINGS'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kHorizontalPad, vertical: 20),
                child: Text(
                  'SETTINGS',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Divider(
                color: Theme.of(context).highlightColor,
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  context.router.push(const AboutMeRoute());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kHorizontalPad, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        size: 40,
                        color: Theme.of(context).highlightColor,
                      ),
                      buildHorizontalSpace(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About Me',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            'peek here to know more about me',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              buildHorizontalRule(context),
              buildVerticalSpace(),
              buildVerticalSpace(),
              buildLineText(
                  context: context,
                  iconData: Icons.phone_android,
                  text: 'About the App'),
              buildLineText(
                  context: context,
                  iconData: Icons.book_outlined,
                  text: 'Liscense'),
              buildLineText(
                  context: context,
                  iconData: Icons.palette_outlined,
                  text: 'Theme'),
            ],
          ),
        ),
      ),
    );
  }
}
