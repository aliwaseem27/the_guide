import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:the_guide/domain/customers/entities/customer.dart';
import 'package:the_guide/domain/customers/repositories/i_customer_repository.dart';

@LazySingleton(as: ICustomerRepository)
class FirebaseCustomerRepository implements ICustomerRepository {
  final FirebaseFirestore _firestore;

  FirebaseCustomerRepository(this._firestore);

  @override
  Future<void> addCustomer(Customer customer) async {
    await _firestore.collection("customers").doc(customer.id).set(customer.toJson());
  }

  @override
  Future<void> deleteCustomer(String id) async {
    await _firestore.collection("customers").doc(id).delete();
  }

  @override
  Stream<List<Customer>> getAllCustomers() async* {
    final customerDocuments = _firestore.collection("customers");
    yield* customerDocuments
        .snapshots()
        .map((snapshot) => snapshot.docs.map((doc) => Customer.fromJson(doc.data())).toList());
  }

  @override
  Future<Customer?> getCustomerById(String id) async {
    final doc = await _firestore.collection("customers").doc(id).get();
    if (doc.exists) {
      return Customer.fromJson(doc.data()!);
    }
    return null;
  }

  @override
  Future<void> updateCustomer(Customer customer) async {
    await _firestore.collection("customers").doc(customer.id).update(customer.toJson());
  }

  @override
  Future<void> updateCustomerField(String id, String fieldName, value) async {
    await _firestore.collection("customers").doc(id).update({fieldName: value});
  }
}
