import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_guide/domain/customers/entities/location_coordinates.dart';

 
part 'customer.freezed.dart';
part 'customer.g.dart';

/// {@template customer}
/// Customer description
/// {@endtemplate}
@freezed
class Customer with _$Customer {
  /// {@macro customer}
  const factory Customer({ 
    required String id,
    required String name,
    required String phoneNumber,
    required String email,
    required String notes,
    required DateTime dateAdded,
    required List<String> tags,
    required LocationCoordinates locationCoordinates,
  }) = _Customer;
  
    /// Creates a Customer from Json map
  factory Customer.fromJson(Map<String, dynamic> data) => _$CustomerFromJson(data);
}
