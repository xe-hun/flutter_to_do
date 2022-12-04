part of 'landing_page_bloc.dart';

@freezed
class LandingPageEvent with _$LandingPageEvent {
  const factory LandingPageEvent.started() = _Started;
  const factory LandingPageEvent.changeTab({required int index}) = _ChangeTab;
}
