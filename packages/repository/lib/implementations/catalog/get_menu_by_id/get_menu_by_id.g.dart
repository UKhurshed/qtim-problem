// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_menu_by_id.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getMenuByIdHash() => r'74b76bc1fff3c4ff2bce2b676aeccf37575f89c3';

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

abstract class _$GetMenuById extends BuildlessAutoDisposeAsyncNotifier<Menu> {
  late final int menuId;
  late final int catalogId;

  FutureOr<Menu> build(
    int menuId,
    int catalogId,
  );
}

/// See also [GetMenuById].
@ProviderFor(GetMenuById)
const getMenuByIdProvider = GetMenuByIdFamily();

/// See also [GetMenuById].
class GetMenuByIdFamily extends Family<AsyncValue<Menu>> {
  /// See also [GetMenuById].
  const GetMenuByIdFamily();

  /// See also [GetMenuById].
  GetMenuByIdProvider call(
    int menuId,
    int catalogId,
  ) {
    return GetMenuByIdProvider(
      menuId,
      catalogId,
    );
  }

  @override
  GetMenuByIdProvider getProviderOverride(
    covariant GetMenuByIdProvider provider,
  ) {
    return call(
      provider.menuId,
      provider.catalogId,
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
  String? get name => r'getMenuByIdProvider';
}

/// See also [GetMenuById].
class GetMenuByIdProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GetMenuById, Menu> {
  /// See also [GetMenuById].
  GetMenuByIdProvider(
    int menuId,
    int catalogId,
  ) : this._internal(
          () => GetMenuById()
            ..menuId = menuId
            ..catalogId = catalogId,
          from: getMenuByIdProvider,
          name: r'getMenuByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMenuByIdHash,
          dependencies: GetMenuByIdFamily._dependencies,
          allTransitiveDependencies:
              GetMenuByIdFamily._allTransitiveDependencies,
          menuId: menuId,
          catalogId: catalogId,
        );

  GetMenuByIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.menuId,
    required this.catalogId,
  }) : super.internal();

  final int menuId;
  final int catalogId;

  @override
  FutureOr<Menu> runNotifierBuild(
    covariant GetMenuById notifier,
  ) {
    return notifier.build(
      menuId,
      catalogId,
    );
  }

  @override
  Override overrideWith(GetMenuById Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetMenuByIdProvider._internal(
        () => create()
          ..menuId = menuId
          ..catalogId = catalogId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        menuId: menuId,
        catalogId: catalogId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GetMenuById, Menu> createElement() {
    return _GetMenuByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMenuByIdProvider &&
        other.menuId == menuId &&
        other.catalogId == catalogId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, menuId.hashCode);
    hash = _SystemHash.combine(hash, catalogId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetMenuByIdRef on AutoDisposeAsyncNotifierProviderRef<Menu> {
  /// The parameter `menuId` of this provider.
  int get menuId;

  /// The parameter `catalogId` of this provider.
  int get catalogId;
}

class _GetMenuByIdProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GetMenuById, Menu>
    with GetMenuByIdRef {
  _GetMenuByIdProviderElement(super.provider);

  @override
  int get menuId => (origin as GetMenuByIdProvider).menuId;
  @override
  int get catalogId => (origin as GetMenuByIdProvider).catalogId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
