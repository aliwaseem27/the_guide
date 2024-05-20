import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'customer_watcher_event.dart';
part 'customer_watcher_state.dart';
part 'customer_watcher_bloc.freezed.dart';

@injectable
class CustomerWatcherBloc extends Bloc<CustomerWatcherEvent, CustomerWatcherState> {
  CustomerWatcherBloc() : super(const CustomerWatcherState.initial()) {
    on<CustomerWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
