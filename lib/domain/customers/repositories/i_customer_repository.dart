import '../entities/customer.dart';

abstract class ICustomerRepository {
  Future<void> addCustomer(Customer customer);

  Future<void> updateCustomer(Customer customer);

  Future<void> updateCustomerField(String id, String fieldName, dynamic value);

  Future<void> deleteCustomer(String id);

  Future<Customer?> getCustomerById(String id);

  Future<List<Customer>> getAllCustomers();
}
