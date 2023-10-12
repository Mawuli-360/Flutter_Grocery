
class HomeScreenState {
  final int index;

  HomeScreenState({
    required this.index,
  });
    

  factory HomeScreenState.initial(){
    return HomeScreenState(index: 0);
  }

  HomeScreenState copyWith({
    int? index,
  }) {
    return HomeScreenState(
      index: index ?? this.index,
    );
  }
}


