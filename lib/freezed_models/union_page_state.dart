import 'package:freezed_annotation/freezed_annotation.dart';

part 'union_page_state.freezed.dart';

@freezed
class UnionPage<T> with _$UnionPage<T> {
  const factory UnionPage(T value) = Data<T>;
  const factory UnionPage.loading() = Loading<T>;
  const factory UnionPage.error([String? message]) = Error<T>;
}
