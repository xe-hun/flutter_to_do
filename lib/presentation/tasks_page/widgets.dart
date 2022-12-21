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
      previous.mapOrNull(
              displayTasksCollections: ((e) => e.allTasksCollections
                  .findById<TasksCollection>(tasksCollectionId)!
                  .tasks
                  .length)) !=
          current.mapOrNull(
              displayTasksCollections: ((e) => e.allTasksCollections
                  .findById<TasksCollection>(tasksCollectionId)
                  ?.tasks
                  .length));
}

bool checkIfANewTasksCollectionWasRemovedOrAdded(
    {required TaskPageState previous, required TaskPageState current}) {
  return previous.mapOrNull(
        displayTasksCollections: (e) => e.allTasksCollections.length,
      ) !=
      current.mapOrNull(
        displayTasksCollections: (e) => e.allTasksCollections.length,
      );
}

//if task was edited, then it would be replace
//therefore, checking the equality.
bool checkIfThisTaskIsEdited({
  required TaskPageState current,
  required TaskPageState previous,
  required int taskIndex,
  required int tasksCollectionId,
}) {
  Task? currentTask = current.mapOrNull(
      displayTasksCollections: (e) => e.allTasksCollections
          .findById<TasksCollection>(tasksCollectionId)
          ?.tasks
          .getOrNull(taskIndex));
  Task? previousTask = previous.mapOrNull(
      displayTasksCollections: (e) => e.allTasksCollections
          .findById<TasksCollection>(tasksCollectionId)
          ?.tasks
          .getOrNull(taskIndex));

  return currentTask != null &&
      previousTask != null &&
      previousTask != currentTask;
  //check in the case when a task was removed. do not rebuild.
}

//check if isEditing
bool _stateIsEditing(TaskPageState state) =>
    state.mapOrNull(displayTasksCollections: (e) => e.editing) ?? false;

bool checkIfEditStateChanges(
        {required TaskPageState previous, required TaskPageState current}) =>
    _stateIsEditing(previous) != _stateIsEditing(current);

AppBar appBar2({required BuildContext context, required String title}) {
  return AppBar(
    leading: const Icon(Icons.account_circle_outlined),
    title: const Text('ALL TASKS'),
    centerTitle: true,
    elevation: 0,
    actions: [
      themePopUpButton(context),
    ],
  );
}

PopupMenuButton<dynamic> themePopUpButton(BuildContext context) {
  return PopupMenuButton(
      icon: const Icon(Icons.palette_outlined),
      itemBuilder: (_) {
        return [
          themeMenuItem(
              label: 'Light Theme',
              context: context,
              icon: Icon(
                Icons.wb_sunny_outlined,
                color: Colors.grey.shade900,
              ),
              themeType: const AppThemeType.light()),
          themeMenuItem(
              label: 'Dark Theme',
              icon: Icon(
                Icons.dark_mode_outlined,
                color: Colors.grey.shade900,
              ),
              context: context,
              themeType: const AppThemeType.dark()),
        ];
      });
}

PopupMenuEntry themeMenuItem(
    {required BuildContext context,
    required String label,
    required Icon icon,
    required AppThemeType themeType}) {
  return PopupMenuItem(
    value: themeType,
    child: Row(
      children: [
        Padding(padding: const EdgeInsets.only(right: 10.0), child: icon),
        Text(label),
      ],
    ),
    onTap: () {
      BlocProvider.of<ThemeBloc>(context)
          .add(ThemeEvent.changeTheme(themeType));
    },
  );
}
