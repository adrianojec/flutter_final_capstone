import 'package:final_capstone/freezed_models/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({User? user}) = _AppState;

  factory AppState.initialState({required}) => AppState(user: null);

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}
