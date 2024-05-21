part of 'customer_watcher_bloc.dart';

@freezed
class CustomerWatcherState with _$CustomerWatcherState {
  const factory CustomerWatcherState.initial() = _Initial;
  const factory CustomerWatcherState.loading() = _Loading;
  const factory CustomerWatcherState.loaded(List<Customer> customers) = _Loaded;
  const factory CustomerWatcherState.error(String message) = _Error;
}
