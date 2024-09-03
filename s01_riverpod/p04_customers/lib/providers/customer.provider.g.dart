// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$customerPageHash() => r'05d4a42e0e5974af75d8b49a2d6fc04af7f7eda8';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [customerPage].
@ProviderFor(customerPage)
const customerPageProvider = CustomerPageFamily();

/// See also [customerPage].
class CustomerPageFamily extends Family<AsyncValue<PageInfo<CustomerInfo>>> {
  /// See also [customerPage].
  const CustomerPageFamily();

  /// See also [customerPage].
  CustomerPageProvider call({
    int page = 0,
    int size = 10,
  }) {
    return CustomerPageProvider(
      page: page,
      size: size,
    );
  }

  @override
  CustomerPageProvider getProviderOverride(
    covariant CustomerPageProvider provider,
  ) {
    return call(
      page: provider.page,
      size: provider.size,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'customerPageProvider';
}

/// See also [customerPage].
class CustomerPageProvider
    extends AutoDisposeFutureProvider<PageInfo<CustomerInfo>> {
  /// See also [customerPage].
  CustomerPageProvider({
    int page = 0,
    int size = 10,
  }) : this._internal(
          (ref) => customerPage(
            ref as CustomerPageRef,
            page: page,
            size: size,
          ),
          from: customerPageProvider,
          name: r'customerPageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$customerPageHash,
          dependencies: CustomerPageFamily._dependencies,
          allTransitiveDependencies:
              CustomerPageFamily._allTransitiveDependencies,
          page: page,
          size: size,
        );

  CustomerPageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.size,
  }) : super.internal();

  final int page;
  final int size;

  @override
  Override overrideWith(
    FutureOr<PageInfo<CustomerInfo>> Function(CustomerPageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CustomerPageProvider._internal(
        (ref) => create(ref as CustomerPageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        size: size,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PageInfo<CustomerInfo>> createElement() {
    return _CustomerPageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CustomerPageProvider &&
        other.page == page &&
        other.size == size;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, size.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CustomerPageRef on AutoDisposeFutureProviderRef<PageInfo<CustomerInfo>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `size` of this provider.
  int get size;
}

class _CustomerPageProviderElement
    extends AutoDisposeFutureProviderElement<PageInfo<CustomerInfo>>
    with CustomerPageRef {
  _CustomerPageProviderElement(super.provider);

  @override
  int get page => (origin as CustomerPageProvider).page;
  @override
  int get size => (origin as CustomerPageProvider).size;
}

String _$customerByIdHash() => r'bb908d2dcbfd9575700ad8fbd17fd022ae3c75c1';

/// See also [customerById].
@ProviderFor(customerById)
const customerByIdProvider = CustomerByIdFamily();

/// See also [customerById].
class CustomerByIdFamily extends Family<AsyncValue<Customer>> {
  /// See also [customerById].
  const CustomerByIdFamily();

  /// See also [customerById].
  CustomerByIdProvider call({
    required String id,
  }) {
    return CustomerByIdProvider(
      id: id,
    );
  }

  @override
  CustomerByIdProvider getProviderOverride(
    covariant CustomerByIdProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'customerByIdProvider';
}

/// See also [customerById].
class CustomerByIdProvider extends AutoDisposeFutureProvider<Customer> {
  /// See also [customerById].
  CustomerByIdProvider({
    required String id,
  }) : this._internal(
          (ref) => customerById(
            ref as CustomerByIdRef,
            id: id,
          ),
          from: customerByIdProvider,
          name: r'customerByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$customerByIdHash,
          dependencies: CustomerByIdFamily._dependencies,
          allTransitiveDependencies:
              CustomerByIdFamily._allTransitiveDependencies,
          id: id,
        );

  CustomerByIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<Customer> Function(CustomerByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CustomerByIdProvider._internal(
        (ref) => create(ref as CustomerByIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Customer> createElement() {
    return _CustomerByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CustomerByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CustomerByIdRef on AutoDisposeFutureProviderRef<Customer> {
  /// The parameter `id` of this provider.
  String get id;
}

class _CustomerByIdProviderElement
    extends AutoDisposeFutureProviderElement<Customer> with CustomerByIdRef {
  _CustomerByIdProviderElement(super.provider);

  @override
  String get id => (origin as CustomerByIdProvider).id;
}

String _$createCustomerHash() => r'0d8922d661e051910e7c10727cd310ec22841dc4';

/// See also [createCustomer].
@ProviderFor(createCustomer)
const createCustomerProvider = CreateCustomerFamily();

/// See also [createCustomer].
class CreateCustomerFamily extends Family<AsyncValue<Customer>> {
  /// See also [createCustomer].
  const CreateCustomerFamily();

  /// See also [createCustomer].
  CreateCustomerProvider call({
    required ({
      String? building,
      String? dob,
      String? email,
      String? name,
      String? phone,
      String? quarter,
      String? street,
      int? township
    }) form,
  }) {
    return CreateCustomerProvider(
      form: form,
    );
  }

  @override
  CreateCustomerProvider getProviderOverride(
    covariant CreateCustomerProvider provider,
  ) {
    return call(
      form: provider.form,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createCustomerProvider';
}

/// See also [createCustomer].
class CreateCustomerProvider extends AutoDisposeFutureProvider<Customer> {
  /// See also [createCustomer].
  CreateCustomerProvider({
    required ({
      String? building,
      String? dob,
      String? email,
      String? name,
      String? phone,
      String? quarter,
      String? street,
      int? township
    }) form,
  }) : this._internal(
          (ref) => createCustomer(
            ref as CreateCustomerRef,
            form: form,
          ),
          from: createCustomerProvider,
          name: r'createCustomerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createCustomerHash,
          dependencies: CreateCustomerFamily._dependencies,
          allTransitiveDependencies:
              CreateCustomerFamily._allTransitiveDependencies,
          form: form,
        );

  CreateCustomerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.form,
  }) : super.internal();

  final ({
    String? building,
    String? dob,
    String? email,
    String? name,
    String? phone,
    String? quarter,
    String? street,
    int? township
  }) form;

  @override
  Override overrideWith(
    FutureOr<Customer> Function(CreateCustomerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateCustomerProvider._internal(
        (ref) => create(ref as CreateCustomerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        form: form,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Customer> createElement() {
    return _CreateCustomerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateCustomerProvider && other.form == form;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, form.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateCustomerRef on AutoDisposeFutureProviderRef<Customer> {
  /// The parameter `form` of this provider.
  ({
    String? building,
    String? dob,
    String? email,
    String? name,
    String? phone,
    String? quarter,
    String? street,
    int? township
  }) get form;
}

class _CreateCustomerProviderElement
    extends AutoDisposeFutureProviderElement<Customer> with CreateCustomerRef {
  _CreateCustomerProviderElement(super.provider);

  @override
  ({
    String? building,
    String? dob,
    String? email,
    String? name,
    String? phone,
    String? quarter,
    String? street,
    int? township
  }) get form => (origin as CreateCustomerProvider).form;
}

String _$updateCustomerHash() => r'ea2c746f6e7c3868d9a5bedbdf738944784ac1e2';

/// See also [updateCustomer].
@ProviderFor(updateCustomer)
const updateCustomerProvider = UpdateCustomerFamily();

/// See also [updateCustomer].
class UpdateCustomerFamily extends Family<AsyncValue<Customer>> {
  /// See also [updateCustomer].
  const UpdateCustomerFamily();

  /// See also [updateCustomer].
  UpdateCustomerProvider call({
    required String id,
    required ({
      String? building,
      String? dob,
      String? email,
      String? name,
      String? phone,
      String? quarter,
      String? street,
      int? township
    }) form,
  }) {
    return UpdateCustomerProvider(
      id: id,
      form: form,
    );
  }

  @override
  UpdateCustomerProvider getProviderOverride(
    covariant UpdateCustomerProvider provider,
  ) {
    return call(
      id: provider.id,
      form: provider.form,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updateCustomerProvider';
}

/// See also [updateCustomer].
class UpdateCustomerProvider extends AutoDisposeFutureProvider<Customer> {
  /// See also [updateCustomer].
  UpdateCustomerProvider({
    required String id,
    required ({
      String? building,
      String? dob,
      String? email,
      String? name,
      String? phone,
      String? quarter,
      String? street,
      int? township
    }) form,
  }) : this._internal(
          (ref) => updateCustomer(
            ref as UpdateCustomerRef,
            id: id,
            form: form,
          ),
          from: updateCustomerProvider,
          name: r'updateCustomerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateCustomerHash,
          dependencies: UpdateCustomerFamily._dependencies,
          allTransitiveDependencies:
              UpdateCustomerFamily._allTransitiveDependencies,
          id: id,
          form: form,
        );

  UpdateCustomerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.form,
  }) : super.internal();

  final String id;
  final ({
    String? building,
    String? dob,
    String? email,
    String? name,
    String? phone,
    String? quarter,
    String? street,
    int? township
  }) form;

  @override
  Override overrideWith(
    FutureOr<Customer> Function(UpdateCustomerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateCustomerProvider._internal(
        (ref) => create(ref as UpdateCustomerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        form: form,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Customer> createElement() {
    return _UpdateCustomerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateCustomerProvider &&
        other.id == id &&
        other.form == form;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, form.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateCustomerRef on AutoDisposeFutureProviderRef<Customer> {
  /// The parameter `id` of this provider.
  String get id;

  /// The parameter `form` of this provider.
  ({
    String? building,
    String? dob,
    String? email,
    String? name,
    String? phone,
    String? quarter,
    String? street,
    int? township
  }) get form;
}

class _UpdateCustomerProviderElement
    extends AutoDisposeFutureProviderElement<Customer> with UpdateCustomerRef {
  _UpdateCustomerProviderElement(super.provider);

  @override
  String get id => (origin as UpdateCustomerProvider).id;
  @override
  ({
    String? building,
    String? dob,
    String? email,
    String? name,
    String? phone,
    String? quarter,
    String? street,
    int? township
  }) get form => (origin as UpdateCustomerProvider).form;
}

String _$customerEditHash() => r'0a322cd5de117497afd249982fb1461dd7e656da';

/// See also [CustomerEdit].
@ProviderFor(CustomerEdit)
final customerEditProvider =
    NotifierProvider<CustomerEdit, CustomerForm>.internal(
  CustomerEdit.new,
  name: r'customerEditProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$customerEditHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CustomerEdit = Notifier<CustomerForm>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
