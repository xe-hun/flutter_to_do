import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/domain/core/extensions.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';

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
                      .map((tasksCollection) =>
                          _tasksCollectionWidget(tasksCollection.id!))
                      .toList(),
                ),
              ),
            ),
          );
  }

  Widget _tasksCollectionWidget(int tasksCollectionId) {
    //rebuilds only when we are add or removing a task.
    return BlocBuilder<TaskPageBloc, TaskPageState>(
      buildWhen: (previous, current) =>
          //get the tasksCollection.tasks length of the current taskCollection being rendered
          previous.whenOrNull(
              displayTasksCollections: ((allTasksCollections, _) =>
                  allTasksCollections
                      .findById(tasksCollectionId)
                      .tasks
                      .length)) !=
          current.whenOrNull(
              displayTasksCollections: ((allTasksCollections, _) =>
                  allTasksCollections
                      .findById(tasksCollectionId)
                      .tasks
                      .length)),
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => Container(),
            displayTasksCollections: (allTasksCollections, addTaskTEC) {
              final tasksCollection = allTasksCollections.findById(
                tasksCollectionId,
              );
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headerStyle(context, tasksCollection.dateTime),
                  ...tasksCollection.tasks.asMap().entries.map(
                        (entry) => bodyStyle(
                            context: context,
                            tasksCollection: tasksCollection,
                            taskIndex: entry.key),
                      )
                ],
              );
            });
      },
    );
  }

  Widget bodyStyle(
      {required BuildContext context,
      required TasksCollection tasksCollection,
      required int taskIndex}) {
    return BlocBuilder<TaskPageBloc, TaskPageState>(
      //build when the individual task is replaced (changed).

      buildWhen: (previous, current) =>
          current.whenOrNull(
              displayTasksCollections: (allTasksCollections, _) =>
                  allTasksCollections
                      .findById<TasksCollection>(tasksCollection.id!)
                      ?.tasks
                      .getOrNull(taskIndex)) !=
          previous.whenOrNull(
              displayTasksCollections: (allTasksCollections, _) =>
                  allTasksCollections
                      .findById<TasksCollection>(tasksCollection.id!)
                      ?.tasks
                      .getOrNull(taskIndex)),

      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Container(),
          displayTasksCollections: (allTasksCollections, _) {
            //get the updated task from the state
            Task task = allTasksCollections
                .findById(tasksCollection.id!)
                .tasks[taskIndex];

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: IntrinsicHeight(
                child: Stack(
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          checkBox(task, context, tasksCollection, taskIndex),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              task.title,
                              style: TextStyle(
                                  decoration: task.completed
                                      ? TextDecoration.lineThrough
                                      : null),
                            ),
                          ))
                        ]),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: double.infinity,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.horizontal(
                              right: Radius.circular(10)),
                          gradient: LinearGradient(
                            colors: [
                              Theme.of(context)
                                  .scaffoldBackgroundColor
                                  .withOpacity(.8),
                              Theme.of(context).backgroundColor,
                            ],
                          ),
                        ),
                        child: deleteButton(allTasksCollections,
                            context: context,
                            tasksCollectionId: tasksCollection.id,
                            taskIndex: taskIndex),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  IconButton deleteButton(List<TasksCollection> allTasksCollection,
      {required BuildContext context,
      required tasksCollectionId,
      required taskIndex}) {
    return IconButton(
        onPressed: () {
          BlocProvider.of<TaskPageBloc>(context).add(TaskPageEvent.deleteTask(
              tasksCollectionId: tasksCollectionId, taskIndex: taskIndex));
        },
        icon: Icon(
          Icons.cancel,
          color: Theme.of(context).errorColor,
        ));
  }

  Widget checkBox(Task task, BuildContext context,
      TasksCollection tasksCollection, int taskIndex) {
    return Checkbox(
      value: task.completed,
      onChanged: (e) {
        BlocProvider.of<TaskPageBloc>(context).add(
            TaskPageEvent.toggleTaskStatus(
                tasksCollectionId: tasksCollection.id!, taskIndex: taskIndex));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    );
  }

  Widget headerStyle(BuildContext context, DateTime dateTime) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, bottom: 25.0, left: 15),
      child: Text(
        dateTime.whichDay,
        style: Theme.of(context).textTheme.headline6,
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







// Widget rowRemoveAndAddAnimation(Animation<double> animation, Widget child) {
//   return SlideTransition(
//     position: CurvedAnimation(parent: animation, curve: Curves.easeIn).drive(
//       Tween<Offset>(
//         begin: const Offset(-1, 0),
//         end: Offset.zero,
//       ),
//     ),
//     child: SizeTransition(
//       sizeFactor: CurvedAnimation(curve: Curves.easeOutQuad, parent: animation),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//           vertical: 2,
//         ),
//         child: child,
//       ),
//     ),
//   );
// }




// void animateRowInsertion(int index) {
//     myListKey.currentState
//         ?.insertItem(index, duration: const Duration(milliseconds: 600));
//   }

//   void animateRowRemoval(int index) {
//     // very important to copy these values first
//     final pickedNumbersRow = List<int>.from(
//       game1Provider.getPickedNumbersRowAt(
//         index,
//       ),
//     );

//     myListKey.currentState?.removeItem(
//       index,
//       duration: const Duration(milliseconds: 600),
//       (context, animation) => rowRemoveAndAddAnimation(
//         animation,
//         _card(
//           pickedNumbersRow,
//           0,
//         ),
//       ),
//     );
//   }




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