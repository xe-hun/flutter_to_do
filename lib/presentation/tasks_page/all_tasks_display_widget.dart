import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/domain/core/extensions.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';
import 'package:flutter_to_do/presentation/tasks_page/widgets.dart';

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
                      ?.tasks
                      .length)) !=
          current.whenOrNull(
              displayTasksCollections: ((allTasksCollections, _) =>
                  allTasksCollections
                      .findById(tasksCollectionId)
                      ?.tasks
                      .length)),
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => Container(),
            displayTasksCollections: (allTasksCollections, addTaskTEC) {
              TasksCollection tasksCollection = allTasksCollections.findById(
                tasksCollectionId,
              );
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headerStyle(context, tasksCollection.dateTime),

                  AnimatedList(
                    key: animatedListKeys[tasksCollection.id],
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    initialItemCount: tasksCollection.tasks.length,
                    itemBuilder: (context, index, animation) {
                      return rowRemoveAndAddAnimation(
                        animation,
                        buildTaskBodyWidget(
                          context: context,
                          tasksCollection: tasksCollection,
                          taskIndex: index,
                        ),
                      );
                    },
                  )

                  // ...tasksCollection.tasks.asMap().entries.map(
                  //       (entry) => bodyStyle(
                  //           context: context,
                  //           tasksCollection: tasksCollection,
                  //           taskIndex: entry.key),
                  //     )
                ],
              );
            });
      },
    );
  }

  //if task was edited, then it would be replace
  //therefore, checking the equality.
  bool _checkIfThisTaskIsEdited(
      {required TaskPageState current,
      required TaskPageState previous,
      required int tasksCollectionId,
      required int taskIndex}) {
    return current.whenOrNull(
            displayTasksCollections: (allTasksCollections, _) =>
                allTasksCollections
                    .findById<TasksCollection>(tasksCollectionId)
                    ?.tasks
                    .getOrNull(taskIndex)) !=
        previous.whenOrNull(
            displayTasksCollections: (allTasksCollections, _) =>
                allTasksCollections
                    .findById<TasksCollection>(tasksCollectionId)
                    ?.tasks
                    .getOrNull(taskIndex));
  }

  bool _checkIfNoTaskWasAddedOrRemoved(
      {required TaskPageState current,
      required TaskPageState previous,
      required int tasksCollectionId}) {
    return current.whenOrNull(
          displayTasksCollections: (allTasksCollections, _) =>
              allTasksCollections
                  .findById<TasksCollection>(tasksCollectionId)
                  ?.tasks
                  .length,
        ) ==
        previous.whenOrNull(
          displayTasksCollections: (allTasksCollections, _) =>
              allTasksCollections
                  .findById<TasksCollection>(tasksCollectionId)
                  ?.tasks
                  .length,
        );
  }

  Widget buildTaskBodyWidget(
      {required BuildContext context,
      required TasksCollection tasksCollection,
      required int taskIndex}) {
    return BlocBuilder<TaskPageBloc, TaskPageState>(
      //build when the individual task is replaced (changed).

      buildWhen: (previous, current) =>
          _checkIfThisTaskIsEdited(
              current: current,
              previous: previous,
              tasksCollectionId: tasksCollection.id!,
              taskIndex: taskIndex) &&
          _checkIfNoTaskWasAddedOrRemoved(
              tasksCollectionId: tasksCollection.id!,
              current: current,
              previous: previous),

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
                          checkBox(
                              task, context, tasksCollection.id!, taskIndex),
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
                        alignment: Alignment.centerRight,
                        height: double.infinity,
                        width: MediaQuery.of(context).size.width * .5,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.horizontal(
                              right: Radius.circular(1)),
                          gradient: LinearGradient(
                            stops: const [.2, 1],
                            colors: [
                              Theme.of(context)
                                  .scaffoldBackgroundColor
                                  .withOpacity(.5),
                              Theme.of(context).backgroundColor,
                            ],
                          ),
                        ),
                        child: deleteButtonWidget(
                            context: context,
                            tasksCollectionId: tasksCollection.id!,
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

  IconButton deleteButtonWidget({
    required BuildContext context,
    required int tasksCollectionId,
    required taskIndex,
  }) {
    return IconButton(
        onPressed: () {
          BlocProvider.of<TaskPageBloc>(context).add(TaskPageEvent.deleteTask(
              tasksCollectionId: tasksCollectionId,
              taskIndex: taskIndex,
              onDelete: onDelete));
        },
        icon: Icon(
          Icons.cancel,
          color: Theme.of(context).errorColor,
        ));
  }

  Widget checkBox(
      Task task, BuildContext context, int tasksCollectionId, int taskIndex) {
    return Checkbox(
      value: task.completed,
      onChanged: (e) {
        BlocProvider.of<TaskPageBloc>(context).add(
            TaskPageEvent.toggleTaskStatus(
                tasksCollectionId: tasksCollectionId, taskIndex: taskIndex));
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

  void onDelete(
      {required TasksCollection tasksCollection,
      required int taskIndex,
      bool? deleted}) {
    if (deleted == true) {
      animatedListKeys.remove(tasksCollection.id);
    } else {
      final taskBodyWidget = buildTaskBodyWidget(
        context: animatedListKeys[tasksCollection.id]!.currentState!.context,
        tasksCollection: tasksCollection,
        taskIndex: taskIndex,
      );

      animateRowRemoval(
          index: taskIndex,
          key: animatedListKeys[tasksCollection.id]!,
          child: taskBodyWidget);
    }
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