part of 'add_customer_bloc.dart';

@freezed
class AddCustomerEvent with _$AddCustomerEvent {
  const factory AddCustomerEvent.nameChanged(String nameStr) = _NameChanged;

  const factory AddCustomerEvent.phoneChanged(String phoneStr) = _PhoneChanged;

  const factory AddCustomerEvent.emailChanged(String emailStr) = _EmailChanged;

  const factory AddCustomerEvent.notesChanged(String notesStr) = _NotesChanged;

  const factory AddCustomerEvent.tagsChanged(String tagsStr) = _TagsChanged;

  const factory AddCustomerEvent.addCustomerButtonPressed() = _AddCustomerButtonPressed;
}
