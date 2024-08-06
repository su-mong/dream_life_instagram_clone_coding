import 'package:dream_life/model/story_list_item_model.dart';
import 'package:equatable/equatable.dart';

class StoryListState extends Equatable {
  final List<StoryListItemModel> list;

  const StoryListState({
    this.list = const <StoryListItemModel>[],
  });

  StoryListState copyWith({
    required List<StoryListItemModel> list,
  }) {
    return StoryListState(list: list);
  }

  @override
  List<Object> get props => [list];
}