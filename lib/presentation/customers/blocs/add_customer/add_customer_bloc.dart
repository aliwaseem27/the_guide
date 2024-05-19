import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:the_guide/domain/customers/entities/customer.dart';
import 'package:uuid/uuid.dart';

import '../../../../domain/customers/entities/location_coordinates.dart';
import '../../../../domain/customers/repositories/i_customer_repository.dart';

part 'add_customer_event.dart';

part 'add_customer_state.dart';

part 'add_customer_bloc.freezed.dart';

@injectable
class AddCustomerBloc extends Bloc<AddCustomerEvent, AddCustomerState> {
  final ICustomerRepository _customerRepository;

  AddCustomerBloc(this._customerRepository) : super(AddCustomerState.initial()) {
    on<_NameChanged>((event, emit) {
      emit(state.copyWith(name: event.nameStr));
    });
    on<_PhoneChanged>((event, emit) {
      emit(state.copyWith(phoneNumber: event.phoneStr));
    });
    on<_EmailChanged>((event, emit) {
      emit(state.copyWith(email: event.emailStr));
    });
    on<_NotesChanged>((event, emit) {
      emit(state.copyWith(notes: event.notesStr));
    });
    on<_TagsChanged>((event, emit) {
      final tagsList = event.tagsStr.split(",").map((e) => e.trim()).toList();
      emit(state.copyWith(tags: tagsList));
    });
    on<_AddCustomerButtonPressed>((event, emit) {
      // emit(AddCustomerState.loading());
      // _customerRepository
      //     .addCustomer(state.toCustomer())
      //     .then((value) => emit(AddCustomerState.success()))
      //     .catchError((e) => emit(AddCustomerState.failure(e)));
      final Customer customer = Customer(
        id: state.id,
        name: state.name,
        phoneNumber: state.phoneNumber,
        email: state.email,
        notes: state.notes,
        dateAdded: state.dateAdded,
        tags: state.tags,
        // locationCoordinates: state.locationCoordinates,
      );
      _customerRepository.addCustomer(customer);
    });
  }
}
