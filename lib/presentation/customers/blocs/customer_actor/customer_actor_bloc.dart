import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:the_guide/domain/customers/entities/customer.dart';

import '../../../../core/error/failure.dart';
import '../../../../domain/customers/repositories/i_customer_repository.dart';

part 'customer_actor_event.dart';

part 'customer_actor_state.dart';

part 'customer_actor_bloc.freezed.dart';

@injectable
class CustomerActorBloc extends Bloc<CustomerActorEvent, CustomerActorState> {
  final ICustomerRepository _customerRepository;

  CustomerActorBloc(this._customerRepository) : super(const CustomerActorState.initial()) {
    on<_DeletePressed>((event, emit) async {
      emit(const CustomerActorState.actionInProgress());
      await _customerRepository.deleteCustomer(event.customer.id);
      emit(const CustomerActorState.deleteSuccess());
      // final possibleFailure = await _customerRepository.deleteCustomer(event.customer.id);
      // possibleFailure.fold(
      //   (failure) => emit(CustomerActorState.deleteFailure(failure)),
      //   (r) => emit(const CustomerActorState.deleteSuccess()),
      // );
    });
  }
}
