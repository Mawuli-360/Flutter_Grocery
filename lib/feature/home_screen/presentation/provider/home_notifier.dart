import 'package:groceries/feature/home_screen/presentation/provider/home_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'home_notifier.g.dart';

@riverpod
class HomeNotifier extends _$HomeNotifier {
  @override
  HomeScreenState build() {
    return HomeScreenState.initial();
  }

  void changeScreen(int index) {
    state = state.copyWith(index: index);
  }
}
