import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'landing_page_event.dart';
part 'landing_page_state.dart';
part 'landing_page_bloc.freezed.dart';

@lazySingleton
class LandingPageBloc extends Bloc<LandingPageEvent, LandingPageState> {
  LandingPageBloc() : super(const _Initial()) {
    on<LandingPageEvent>((event, emit) async {
      event.map(
        started: (_) {},
        changeTab: (event) {
          emit(LandingPageState.idle(currentIndex: event.index));
        },
      );
    });
  }
}
