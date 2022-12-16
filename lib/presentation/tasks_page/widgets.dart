// ignore_for_file: constant_identifier_names

//  TweenSequence(
//     <TweenSequenceItem<double>>[
//       TweenSequenceItem<double>(
//         tween: Tween<double>(begin: 0, end: 1.0)
//             .chain(CurveTween(curve: Curves.easeOut)),
//         weight: 40.0,
//       ),
//       TweenSequenceItem<double>(
//         tween: ConstantTween<double>(1.0),
//         weight: 20.0,
//       ),

part of tasks_page;

final animatedListKeys = <int, GlobalKey<AnimatedListState>>{};
const kTaskAddAndRemovalUIAnimationDurationInMilliSeconds = 800;
const kEditingWidgetSwitchDurationInMilliseconds = 1000;

Widget rowRemoveAndAddAnimation(Animation<double> animation, Widget child) {
  return Builder(builder: (context) {
    return SizeTransition(
      sizeFactor: CurvedAnimation(
          curve: const InCurve(InCurvePosition.first), parent: animation),
      child: IntrinsicHeight(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            ),
            SlideTransition(
              position: CurvedAnimation(
                      parent: animation,
                      curve: const InCurve(InCurvePosition.last))
                  .drive(
                Tween<Offset>(
                  begin: const Offset(-1, 0),
                  end: Offset.zero,
                ),
              ),
              child: child,
            ),
          ],
        ),
      ),
    );
  });
}

void animateRowInsertion(
    {required GlobalKey<AnimatedListState> key, required int index}) {
  key.currentState?.insertItem(index,
      duration: const Duration(
          milliseconds: kTaskAddAndRemovalUIAnimationDurationInMilliSeconds));
}

void animateRowRemoval(
    {required int index,
    required GlobalKey<AnimatedListState> key,
    required Widget child}) {
  key.currentState?.removeItem(
    index,
    duration: const Duration(
        milliseconds: kTaskAddAndRemovalUIAnimationDurationInMilliSeconds),
    (context, animation) => rowRemoveAndAddAnimation(animation, child),
  );
}

bool checkIfTasksWithinThisTasksCollectionWasAddedOrRemoved(
    {required TaskPageState previous,
    required TaskPageState current,
    required int tasksCollectionId}) {
  return //get the tasksCollection.tasks length of the current taskCollection being rendered
      previous.whenOrNull(
              displayTasksCollections: ((allTasksCollections, _, __) =>
                  allTasksCollections
                      .findById<TasksCollection>(tasksCollectionId)!
                      .tasks
                      .length)) !=
          current.whenOrNull(
              displayTasksCollections: ((allTasksCollections, _, __) =>
                  allTasksCollections
                      .findById<TasksCollection>(tasksCollectionId)!
                      .tasks
                      .length));
}

bool checkIfANewTasksCollectionWasRemovedOrAdded(
    {required TaskPageState previous, required TaskPageState current}) {
  return previous.whenOrNull(
        displayTasksCollections: (allTasksCollections, _, __) =>
            allTasksCollections.length,
      ) !=
      current.whenOrNull(
        displayTasksCollections: (allTasksCollections, _, __) =>
            allTasksCollections.length,
      );
}

//if task was edited, then it would be replace
//therefore, checking the equality.
bool checkIfThisTaskIsEdited(
    {required TaskPageState current,
    required TaskPageState previous,
    required int tasksCollectionId,
    required int taskIndex}) {
  Task? currentTask = current.whenOrNull(
      displayTasksCollections: (allTasksCollections, _, __) =>
          allTasksCollections
              .findById<TasksCollection>(tasksCollectionId)
              ?.tasks
              .getOrNull(taskIndex));

  return previous.whenOrNull(
              displayTasksCollections: (allTasksCollections, _, __) =>
                  allTasksCollections
                      .findById<TasksCollection>(tasksCollectionId)!
                      .tasks
                      .getOrNull(taskIndex)) !=
          currentTask &&
      //check in the case when a task was removed. do not rebuild.
      currentTask != null;
}

//check if isEditing
bool stateIsEditing(TaskPageState state) =>
    state.mapOrNull(displayTasksCollections: (e) => e.editPayload != null) ??
    false;

bool checkIfEditStateChanges(TaskPageState previous, TaskPageState current) =>
    stateIsEditing(previous) != stateIsEditing(current);
