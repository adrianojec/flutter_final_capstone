import 'package:final_capstone/freezed_models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({required List<User> users}) = _AppState;

  factory AppState.initialState({required}) => AppState(users: List<User>.empty());

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}
