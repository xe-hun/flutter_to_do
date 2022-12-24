import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_to_do/domain/core/utils.dart';

DebounceTimer useDebounce() {
  final debounceTimerRef = useRef(DebounceTimer());
  useEffect(() {
    print('createdDebounce');

    return debounceTimerRef.value.dispose;
  }, [debounceTimerRef.value]);
  return debounceTimerRef.value;
}
