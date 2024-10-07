// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_catalog_by_id.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCatalogByIdHash() => r'9f57a5a55e0c8bd0043ace1ebe0d9e9ce6d97b6f';

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

abstract class _$GetCatalogById
    extends BuildlessAutoDisposeAsyncNotifier<CatalogElement> {
  late final int id;

  FutureOr<CatalogElement> build(
    int id,
  );
}

/// See also [GetCatalogById].
@ProviderFor(GetCatalogById)
const getCatalogByIdProvider = GetCatalogByIdFamily();

/// See also [GetCatalogById].
class GetCatalogByIdFamily extends Family<AsyncValue<CatalogElement>> {
  /// See also [GetCatalogById].
  const GetCatalogByIdFamily();

  /// See also [GetCatalogById].
  GetCatalogByIdProvider call(
    int id,
  ) {
    return GetCatalogByIdProvider(
      id,
    );
  }

  @override
  GetCatalogByIdProvider getProviderOverride(
    covariant GetCatalogByIdProvider provider,
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
  String? get name => r'getCatalogByIdProvider';
}

/// See also [GetCatalogById].
class GetCatalogByIdProvider extends AutoDisposeAsyncNotifierProviderImpl<
    GetCatalogById, CatalogElement> {
  /// See also [GetCatalogById].
  GetCatalogByIdProvider(
    int id,
  ) : this._internal(
          () => GetCatalogById()..id = id,
          from: getCatalogByIdProvider,
          name: r'getCatalogByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCatalogByIdHash,
          dependencies: GetCatalogByIdFamily._dependencies,
          allTransitiveDependencies:
              GetCatalogByIdFamily._allTransitiveDependencies,
          id: id,
        );

  GetCatalogByIdProvider._internal(
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
  FutureOr<CatalogElement> runNotifierBuild(
    covariant GetCatalogById notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(GetCatalogById Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetCatalogByIdProvider._internal(
        () => create()..id = id,
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
  AutoDisposeAsyncNotifierProviderElement<GetCatalogById, CatalogElement>
      createElement() {
    return _GetCatalogByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCatalogByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetCatalogByIdRef on AutoDisposeAsyncNotifierProviderRef<CatalogElement> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GetCatalogByIdProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GetCatalogById,
        CatalogElement> with GetCatalogByIdRef {
  _GetCatalogByIdProviderElement(super.provider);

  @override
  int get id => (origin as GetCatalogByIdProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
