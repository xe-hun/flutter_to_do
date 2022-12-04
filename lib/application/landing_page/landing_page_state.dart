part of 'landing_page_bloc.dart';

@freezed
class LandingPageState with _$LandingPageState {
  const factory LandingPageState.initial() = _Initial;
  const factory LandingPageState.idle({required int currentIndex}) = _Idle;
}
