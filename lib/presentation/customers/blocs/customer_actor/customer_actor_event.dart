part of 'customer_actor_bloc.dart';

@freezed
class CustomerActorEvent with _$CustomerActorEvent {
  const factory CustomerActorEvent.deletePressed(Customer customer) = _DeletePressed;
}
