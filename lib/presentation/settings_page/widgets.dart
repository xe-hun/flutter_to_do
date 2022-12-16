part of settings_page;

const double kHorizontalPad = 20;

AppBar appBar({required String title}) {
  return AppBar(
    // leading: const Icon(Icons.account_circle_outlined),
    title: Text(title),
    centerTitle: true,
    elevation: 0,
  );
}

Widget buildHorizontalRule(BuildContext context) {
  return Divider(
    color: Theme.of(context).primaryColor,
    thickness: 1,
    height: 20,
    indent: 0,
    endIndent: 0,
  );
}

Widget buildLineText(
    {required BuildContext context,
    required String text,
    required IconData iconData}) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: kHorizontalPad, vertical: 19),
      child: Row(
        children: [
          Icon(
            iconData,
            size: 28,
            color: Theme.of(context).highlightColor,
          ),
          buildHorizontalSpace(),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            color: Theme.of(context).highlightColor,
          )
        ],
      ),
    ),
  );
}

SizedBox buildHorizontalSpace() {
  return const SizedBox(
    width: 30,
  );
}

SizedBox buildVerticalSpace() {
  return const SizedBox(
    height: 40,
  );
}

ImageProvider bgImg1 = const AssetImage('assets/images/bg_img_1.png');
