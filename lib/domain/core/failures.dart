import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure<T> with _$Failure<T> {
  const factory Failure.storageFailure({required T failedValue}) =
      _StorageFailure<T>;
}
