import 'package:flutter/material.dart';

class AddTaskWidget extends StatelessWidget {
  const AddTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).backgroundColor),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
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
                    color: Theme.of(context).backgroundColor,
                    size: 40,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
