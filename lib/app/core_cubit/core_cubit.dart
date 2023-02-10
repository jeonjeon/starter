import 'dart:developer';
import 'package:starter/core.dart';

part 'core_state.dart';

part 'core_cubit.freezed.dart';

class CoreCubit extends Cubit<CoreState> {
  CoreCubit() : super(const CoreState());
  void init() {
    log('CoreCubit init');
  }
}
