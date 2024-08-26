// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$DistrictImpl _$$$DistrictImplFromJson(Map<String, dynamic> json) =>
    _$$DistrictImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      divisionId: (json['divisionId'] as num).toInt(),
      division: json['division'] as String,
      townships: (json['townships'] as num).toInt(),
    );

Map<String, dynamic> _$$$DistrictImplToJson(_$$DistrictImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'divisionId': instance.divisionId,
      'division': instance.division,
      'townships': instance.townships,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$districtForDivisionHash() =>
    r'59e11985add04af39efdc8f066eadfad3f8857a5';

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

/// See also [districtForDivision].
@ProviderFor(districtForDivision)
const districtForDivisionProvider = DistrictForDivisionFamily();

/// See also [districtForDivision].
class DistrictForDivisionFamily extends Family<AsyncValue<List<District>>> {
  /// See also [districtForDivision].
  const DistrictForDivisionFamily();

  /// See also [districtForDivision].
  DistrictForDivisionProvider call(
    int divisionId,
  ) {
    return DistrictForDivisionProvider(
      divisionId,
    );
  }

  @override
  DistrictForDivisionProvider getProviderOverride(
    covariant DistrictForDivisionProvider provider,
  ) {
    return call(
      provider.divisionId,
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
  String? get name => r'districtForDivisionProvider';
}

/// See also [districtForDivision].
class DistrictForDivisionProvider
    extends AutoDisposeFutureProvider<List<District>> {
  /// See also [districtForDivision].
  DistrictForDivisionProvider(
    int divisionId,
  ) : this._internal(
          (ref) => districtForDivision(
            ref as DistrictForDivisionRef,
            divisionId,
          ),
          from: districtForDivisionProvider,
          name: r'districtForDivisionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$districtForDivisionHash,
          dependencies: DistrictForDivisionFamily._dependencies,
          allTransitiveDependencies:
              DistrictForDivisionFamily._allTransitiveDependencies,
          divisionId: divisionId,
        );

  DistrictForDivisionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.divisionId,
  }) : super.internal();

  final int divisionId;

  @override
  Override overrideWith(
    FutureOr<List<District>> Function(DistrictForDivisionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DistrictForDivisionProvider._internal(
        (ref) => create(ref as DistrictForDivisionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        divisionId: divisionId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<District>> createElement() {
    return _DistrictForDivisionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DistrictForDivisionProvider &&
        other.divisionId == divisionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, divisionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DistrictForDivisionRef on AutoDisposeFutureProviderRef<List<District>> {
  /// The parameter `divisionId` of this provider.
  int get divisionId;
}

class _DistrictForDivisionProviderElement
    extends AutoDisposeFutureProviderElement<List<District>>
    with DistrictForDivisionRef {
  _DistrictForDivisionProviderElement(super.provider);

  @override
  int get divisionId => (origin as DistrictForDivisionProvider).divisionId;
}

String _$selectedDivisionHash() => r'861c7b8a74f80b066fa521ae35ec3b52016fccac';

/// See also [selectedDivision].
@ProviderFor(selectedDivision)
const selectedDivisionProvider = SelectedDivisionFamily();

/// See also [selectedDivision].
class SelectedDivisionFamily extends Family<AsyncValue<Division>> {
  /// See also [selectedDivision].
  const SelectedDivisionFamily();

  /// See also [selectedDivision].
  SelectedDivisionProvider call(
    int id,
  ) {
    return SelectedDivisionProvider(
      id,
    );
  }

  @override
  SelectedDivisionProvider getProviderOverride(
    covariant SelectedDivisionProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'selectedDivisionProvider';
}

/// See also [selectedDivision].
class SelectedDivisionProvider extends AutoDisposeFutureProvider<Division> {
  /// See also [selectedDivision].
  SelectedDivisionProvider(
    int id,
  ) : this._internal(
          (ref) => selectedDivision(
            ref as SelectedDivisionRef,
            id,
          ),
          from: selectedDivisionProvider,
          name: r'selectedDivisionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$selectedDivisionHash,
          dependencies: SelectedDivisionFamily._dependencies,
          allTransitiveDependencies:
              SelectedDivisionFamily._allTransitiveDependencies,
          id: id,
        );

  SelectedDivisionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<Division> Function(SelectedDivisionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SelectedDivisionProvider._internal(
        (ref) => create(ref as SelectedDivisionRef),
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
  AutoDisposeFutureProviderElement<Division> createElement() {
    return _SelectedDivisionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SelectedDivisionProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SelectedDivisionRef on AutoDisposeFutureProviderRef<Division> {
  /// The parameter `id` of this provider.
  int get id;
}

class _SelectedDivisionProviderElement
    extends AutoDisposeFutureProviderElement<Division>
    with SelectedDivisionRef {
  _SelectedDivisionProviderElement(super.provider);

  @override
  int get id => (origin as SelectedDivisionProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
