import 'package:flutter/material.dart';

class AddTaskWidget extends StatelessWidget {
  const AddTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorHeight: 40,
                decoration: inputDecoration(context),
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
          Center(
            child: IconButton(
                onPressed: () {},
                icon: FittedBox(
                  child: Icon(
                    Icons.add_circle_sharp,
                    color: Theme.of(context).primaryColor,
                    size: 40,
                  ),
                )),
          )
        ],
      ),
    );
  }

  InputDecoration inputDecoration(BuildContext context) {
    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
      border: inputBorder(context),
      errorBorder: inputBorder(context),
      focusedBorder: inputBorder(context),
      focusedErrorBorder: inputBorder(context),
      enabledBorder: inputBorder(context),
      disabledBorder: inputBorder(context),
    );
  }

  OutlineInputBorder inputBorder(BuildContext context) {
    return OutlineInputBorder(
      borderSide: BorderSide(width: .5, color: Theme.of(context).primaryColor),
      borderRadius: const BorderRadius.all(Radius.circular(5)),
    );
  }
}
