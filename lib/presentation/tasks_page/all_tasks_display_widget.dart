import 'package:flutter/material.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';
import 'package:flutter_to_do/presentation/tasks_page/tasks_collection_widget.dart';

class AllTasksCollectionsDisplayWidget extends StatelessWidget {
  const AllTasksCollectionsDisplayWidget(
      {super.key, required this.allTasksCollections});

  final List<TasksCollection> allTasksCollections;

  @override
  Widget build(BuildContext context) {
    return allTasksCollections.isEmpty
        ? noTaskWidget(context)
        : SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: allTasksCollections
                      .map((tasksCollection) => TasksCollectionWidget(
                          tasksCollectionId: tasksCollection.id!))
                      .toList(),
                ),
              ),
            ),
          );
  }

  Widget noTaskWidget(BuildContext context) {
    return Center(
      child: Text(
        'TASK EMPTY',
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(color: Theme.of(context).backgroundColor),
      ),
    );
  }
}





//  listener: (context, state) {
//         print('zamani');
//         //initialize the animatedListKeys for the first time.















// AnimatedList(
//                                           key: myListKey,
//                                           physics: _initialScrollValue != 0.3 &&
//                                                   game1Provider.gamePlayCount >=
//                                                       2
//                                               ? const BouncingScrollPhysics()
//                                               : const NeverScrollableScrollPhysics(),
//                                           controller: cardRowsListController,
//                                           initialItemCount:
//                                               initialGamePlayCountSetter,
//                                           itemBuilder:
//                                               (context, index, animation) {
//                                             return rowRemoveAndAddAnimation(
//                                               animation,
//                                               _card(
//                                                 game1Provider
//                                                     .getPickedNumbersRowAt(
//                                                   index,
//                                                 ),
//                                                 index,
//                                               ),
//                                             );
//                                           },
//                                         ),





  // void scrollAnimateToBallRow(double index) {
  //   //delay required for smooth scrolling
  //   Future.delayed(const Duration(milliseconds: 300)).then(
  //     (value) => cardRowsListController.animateTo(
  //       clampDouble(
  //         index * cardRowHeight,
  //         0,
  //         cardRowsListController.position.maxScrollExtent,
  //       ),
  //       duration: const Duration(milliseconds: 100),
  //       curve: Curves.easeInQuad,
  //     ),
  //   );
  // }