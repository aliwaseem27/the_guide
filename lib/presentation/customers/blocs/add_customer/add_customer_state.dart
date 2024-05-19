part of 'add_customer_bloc.dart';

@freezed
class AddCustomerState with _$AddCustomerState {
  const factory AddCustomerState({
    required String id,
    required String name,
    required String phoneNumber,
    required String email,
    required String notes,
    required DateTime dateAdded,
    required List<String> tags,
    // required LocationCoordinates locationCoordinates,
  }) = _Initial;

  factory AddCustomerState.initial() => AddCustomerState(
        id: const Uuid().v4(),
        name: '',
        phoneNumber: '',
        email: '',
        notes: '',
        dateAdded: DateTime.now(),
        tags: [],
        // locationCoordinates: LocationCoordinates(latitude: 0, longitude: 0),
      );
}
