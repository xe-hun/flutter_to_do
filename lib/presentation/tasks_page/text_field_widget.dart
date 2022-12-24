import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/domain/core/utils.dart';
import 'package:flutter_to_do/presentation/core/custom_hooks.dart';

class TextFieldWidget extends HookWidget {
  const TextFieldWidget(
      {super.key, required this.onAction, this.onChanged, required this.icon});
  final Function() onAction;
  final Function(String value)? onChanged;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    final debounce = useDebounce();
    final focusNode = useFocusNode();
    final enableTextField = useState(false);

    return GestureDetector(
      // this section GestureDecector is required to fix a
      // bug where textfield automatically gains focus when
      // interacting with other parts of the ui
      onTap: () {
        enableTextField.value = true;
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          focusNode.requestFocus();
        });
        focusNode.addListener(() {
          if (focusNode.hasPrimaryFocus == false) {
            enableTextField.value = false;
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).backgroundColor),
        ),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    enabled: enableTextField.value,
                    focusNode: focusNode,
                    maxLines: 4,
                    minLines: 1,
                    onChanged: onChanged,
                    controller:
                        BlocProvider.of<TaskPageBloc>(context).addTaskTEC,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontSize: 16),
                  ),
                ),
              ),
              Center(
                  child: _buildAddIconButton(
                      context: context, icon: icon, debounce: debounce))
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAddIconButton(
      {required BuildContext context,
      required Icon icon,
      required DebounceTimer debounce}) {
    return IconTheme(
      data: IconThemeData(
        size: 40,
        color: Theme.of(context).backgroundColor,
      ),
      child: _buildIcon(
          context: context,
          icon: icon,
          onPressed: () {
            debounce.delayActionMethod(
                action: onAction, delayInMilliseconds: 1000);
          }),
    );
  }

  Widget _buildIcon(
      {required BuildContext context,
      required Icon icon,
      required Function() onPressed}) {
    return IconButton(
      onPressed: onPressed,
      icon: FittedBox(child: icon),
    );
  }
}
