import 'package:dio/dio.dart';
import 'package:p04_customers/clients/base.url.dart';
import 'package:p04_customers/domains/customer.domain.dart';

class CustomerClient {
  CustomerClient._();

  final _dio = Dio(BaseOptions(baseUrl: baseUrl()));

  static CustomerClient? _instance;

  static CustomerClient getInstance() {
    _instance ??= CustomerClient._();
    return _instance!;
  }

  Future<PageInfo<CustomerInfo>> search({int page = 0, int size = 10}) async {
    final resp = await _dio.get<Map<String, dynamic>>("/customers",
        queryParameters: {"page": page, "size": size});
    var result = customerPageFromJson(resp.data!);
    return result;
  }

  Future<Customer> create(CustomerForm form) async {
    var formData = FormData.fromMap(form.toJson());
    final resp =
        await _dio.post<Map<String, dynamic>>("/customers", data: formData);
    return customerFromJson(resp.data!);
  }

  Future<Customer> update(
      {required String id, required CustomerForm form}) async {
    var formData = FormData.fromMap(form.toJson());
    final resp =
        await _dio.put<Map<String, dynamic>>("/customers/$id", data: formData);
    return customerFromJson(resp.data!);
  }

  Future<Customer> findById({required String id}) async {
    final resp = await _dio.get<Map<String, dynamic>>("/customers/$id");
    return customerFromJson(resp.data!);
  }
}
