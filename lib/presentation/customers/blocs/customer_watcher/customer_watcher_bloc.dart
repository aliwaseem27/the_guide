import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/customers/entities/customer.dart';
import '../../../../domain/customers/repositories/i_customer_repository.dart';

part 'customer_watcher_event.dart';

part 'customer_watcher_state.dart';

part 'customer_watcher_bloc.freezed.dart';

@injectable
class CustomerWatcherBloc extends Bloc<CustomerWatcherEvent, CustomerWatcherState> {
  final ICustomerRepository _customerRepository;
  StreamSubscription<List<Customer>>? _customerSubscription;

  CustomerWatcherBloc(this._customerRepository) : super(const CustomerWatcherState.initial()) {
    on<_WatchAllStarted>((event, emit) async {
      emit(const CustomerWatcherState.loading());
      _customerSubscription?.cancel();
      _customerSubscription = _customerRepository.getAllCustomers().listen((customers) {
        add(CustomerWatcherEvent.customersReceived(customers));
      });
      // final customers = await _customerRepository.getAllCustomers();
      // emit(CustomerWatcherStateustomerWatcherState.loaded(customersomers));
    });
    on<_CustomersReceived>((event, emit) {
      emit(CustomerWatcherState.loaded(event.customers));
    });
  }
}
