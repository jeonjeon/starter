part of 'core_cubit.dart';

@freezed
class CoreState with _$CoreState {
  /// 코어 상태
  const factory CoreState({
    @Default(0) int id,
  }) = _CoreState;
}
