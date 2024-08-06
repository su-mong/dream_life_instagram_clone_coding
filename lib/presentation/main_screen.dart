import 'package:dream_life/app/responsive.dart';
import 'package:dream_life/domain/story_list/story_list_bloc.dart';
import 'package:dream_life/domain/story_list/story_list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<StoryListBloc>(
      create: (context) => StoryListBloc(),
      child: BlocBuilder<StoryListBloc, StoryListState>(
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  itemCount: state.list.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: context.responsive<int>(
                      3,
                      sm: 4,
                      md: 5,
                      lg: 6,
                      xl: 8,
                    ),
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 24,
                    childAspectRatio: 94/72,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(state.list[index].profileImage),
                        Text(state.list[index].name),
                      ],
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}