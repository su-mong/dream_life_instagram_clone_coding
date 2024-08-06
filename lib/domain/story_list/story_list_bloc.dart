import 'package:bloc/bloc.dart';
import 'package:dream_life/domain/story_list/story_list_event.dart';
import 'package:dream_life/domain/story_list/story_list_state.dart';

class StoryListBloc extends Bloc<StoryListEvent, StoryListState> {
  StoryListBloc() : super(const StoryListState()) {
    on<StoryListReset>(_reset);
    on<StoryListSelect>(_select);
  }

  void _reset(StoryListReset event, Emitter<StoryListState> emit) {
    emit(state.copyWith(list: event.list));
  }

  void _select(StoryListSelect event, Emitter<StoryListState> emit) {
    emit(state.copyWith(list: event.list));
  }
}