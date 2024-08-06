import 'package:dream_life/model/story_list_item_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class StoryListEvent extends Equatable {
  const StoryListEvent();

  @override
  List<Object?> get props => [];
}

class StoryListReset extends StoryListEvent {
  final List<StoryListItemModel> list;
  const StoryListReset(this.list);

  @override
  List<Object?> get props => [list];
}

class StoryListSelect extends StoryListEvent {
  final List<StoryListItemModel> list;
  const StoryListSelect(this.list);

  @override
  List<Object?> get props => [list];
}