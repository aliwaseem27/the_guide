part of 'customer_actor_bloc.dart';

@freezed
class CustomerActorState with _$CustomerActorState {
  const factory CustomerActorState.initial() = _Initial;

  const factory CustomerActorState.actionInProgress() = _ActionInProgress;

  const factory CustomerActorState.deleteFailure(CustomerFailure customerFailure) = _DeleteFailure;

  const factory CustomerActorState.deleteSuccess() = _DeleteSuccess;
}
