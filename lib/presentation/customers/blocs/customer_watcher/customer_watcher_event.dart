part of 'customer_watcher_bloc.dart';

@freezed
class CustomerWatcherEvent with _$CustomerWatcherEvent {
  const factory CustomerWatcherEvent.watchAllStarted() = _WatchAllStarted;

  const factory CustomerWatcherEvent.customersReceived(List<Customer> customers) = _CustomersReceived;
}
