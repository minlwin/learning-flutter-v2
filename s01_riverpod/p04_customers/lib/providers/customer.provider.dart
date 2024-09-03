import 'package:p04_customers/clients/customer.client.dart';
import 'package:p04_customers/domains/customer.domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'customer.provider.g.dart';

@riverpod
Future<PageInfo<CustomerInfo>> customerPage(CustomerPageRef ref,
    {int page = 0, int size = 10}) async {
  final result = CustomerClient.getInstance().search(page: page, size: size);
  return result;
}

@riverpod
Future<Customer> customerById(CustomerByIdRef ref, {required String id}) async {
  final result = CustomerClient.getInstance().findById(id: id);
  return result;
}

@riverpod
Future<Customer> createCustomer(CreateCustomerRef ref,
    {required CustomerForm form}) async {
  final result = CustomerClient.getInstance().create(form);
  return result;
}

@riverpod
Future<Customer> updateCustomer(UpdateCustomerRef ref,
    {required String id, required CustomerForm form}) async {
  final result = CustomerClient.getInstance().update(id: id, form: form);
  return result;
}

@Riverpod(keepAlive: true)
class CustomerEdit extends _$CustomerEdit {
  @override
  CustomerForm build() => newCustomerForm();

  void setInfo({
    required String name,
    required phone,
    required email,
    required dob,
  }) {
    state = state.withInfo(
      name: name,
      phone: phone,
      email: email,
      dob: dob,
    );
  }

  void setAddress({
    required String building,
    required String street,
    required String quarter,
    required int township,
  }) {
    state = state.withAddress(
      building: building,
      street: street,
      quarter: quarter,
      township: township,
    );
  }

  void clear() {
    state = newCustomerForm();
  }
}
