// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$divisionsHash() => r'b850923c6b71e1a46619e3d5581929fac8771a20';

/// See also [divisions].
@ProviderFor(divisions)
final divisionsProvider = AutoDisposeFutureProvider<List<Division>>.internal(
  divisions,
  name: r'divisionsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$divisionsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DivisionsRef = AutoDisposeFutureProviderRef<List<Division>>;
String _$districtsHash() => r'ad8a0b8ec6e041918a13b5abcac92c104af1a477';

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

/// See also [districts].
@ProviderFor(districts)
const districtsProvider = DistrictsFamily();

/// See also [districts].
class DistrictsFamily extends Family<AsyncValue<List<District>>> {
  /// See also [districts].
  const DistrictsFamily();

  /// See also [districts].
  DistrictsProvider call({
    required int division,
  }) {
    return DistrictsProvider(
      division: division,
    );
  }

  @override
  DistrictsProvider getProviderOverride(
    covariant DistrictsProvider provider,
  ) {
    return call(
      division: provider.division,
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
  String? get name => r'districtsProvider';
}

/// See also [districts].
class DistrictsProvider extends AutoDisposeFutureProvider<List<District>> {
  /// See also [districts].
  DistrictsProvider({
    required int division,
  }) : this._internal(
          (ref) => districts(
            ref as DistrictsRef,
            division: division,
          ),
          from: districtsProvider,
          name: r'districtsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$districtsHash,
          dependencies: DistrictsFamily._dependencies,
          allTransitiveDependencies: DistrictsFamily._allTransitiveDependencies,
          division: division,
        );

  DistrictsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.division,
  }) : super.internal();

  final int division;

  @override
  Override overrideWith(
    FutureOr<List<District>> Function(DistrictsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DistrictsProvider._internal(
        (ref) => create(ref as DistrictsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        division: division,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<District>> createElement() {
    return _DistrictsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DistrictsProvider && other.division == division;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, division.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DistrictsRef on AutoDisposeFutureProviderRef<List<District>> {
  /// The parameter `division` of this provider.
  int get division;
}

class _DistrictsProviderElement
    extends AutoDisposeFutureProviderElement<List<District>> with DistrictsRef {
  _DistrictsProviderElement(super.provider);

  @override
  int get division => (origin as DistrictsProvider).division;
}

String _$townshipsHash() => r'9467afc7dfbd440c3febbe4fb51fccf30550a9aa';

/// See also [townships].
@ProviderFor(townships)
const townshipsProvider = TownshipsFamily();

/// See also [townships].
class TownshipsFamily extends Family<AsyncValue<List<Township>>> {
  /// See also [townships].
  const TownshipsFamily();

  /// See also [townships].
  TownshipsProvider call({
    required int district,
  }) {
    return TownshipsProvider(
      district: district,
    );
  }

  @override
  TownshipsProvider getProviderOverride(
    covariant TownshipsProvider provider,
  ) {
    return call(
      district: provider.district,
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
  String? get name => r'townshipsProvider';
}

/// See also [townships].
class TownshipsProvider extends AutoDisposeFutureProvider<List<Township>> {
  /// See also [townships].
  TownshipsProvider({
    required int district,
  }) : this._internal(
          (ref) => townships(
            ref as TownshipsRef,
            district: district,
          ),
          from: townshipsProvider,
          name: r'townshipsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$townshipsHash,
          dependencies: TownshipsFamily._dependencies,
          allTransitiveDependencies: TownshipsFamily._allTransitiveDependencies,
          district: district,
        );

  TownshipsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.district,
  }) : super.internal();

  final int district;

  @override
  Override overrideWith(
    FutureOr<List<Township>> Function(TownshipsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TownshipsProvider._internal(
        (ref) => create(ref as TownshipsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        district: district,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Township>> createElement() {
    return _TownshipsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TownshipsProvider && other.district == district;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, district.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TownshipsRef on AutoDisposeFutureProviderRef<List<Township>> {
  /// The parameter `district` of this provider.
  int get district;
}

class _TownshipsProviderElement
    extends AutoDisposeFutureProviderElement<List<Township>> with TownshipsRef {
  _TownshipsProviderElement(super.provider);

  @override
  int get district => (origin as TownshipsProvider).district;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
