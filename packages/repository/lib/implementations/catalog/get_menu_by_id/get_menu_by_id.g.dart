// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_menu_by_id.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getMenuByIdHash() => r'b75dd004541e942a085ed1b76eeb11b99aba33f8';

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
  late final int id;

  FutureOr<Menu> build(
    int id,
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
    int id,
  ) {
    return GetMenuByIdProvider(
      id,
    );
  }

  @override
  GetMenuByIdProvider getProviderOverride(
    covariant GetMenuByIdProvider provider,
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
  String? get name => r'getMenuByIdProvider';
}

/// See also [GetMenuById].
class GetMenuByIdProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GetMenuById, Menu> {
  /// See also [GetMenuById].
  GetMenuByIdProvider(
    int id,
  ) : this._internal(
          () => GetMenuById()..id = id,
          from: getMenuByIdProvider,
          name: r'getMenuByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMenuByIdHash,
          dependencies: GetMenuByIdFamily._dependencies,
          allTransitiveDependencies:
              GetMenuByIdFamily._allTransitiveDependencies,
          id: id,
        );

  GetMenuByIdProvider._internal(
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
  FutureOr<Menu> runNotifierBuild(
    covariant GetMenuById notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(GetMenuById Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetMenuByIdProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<GetMenuById, Menu> createElement() {
    return _GetMenuByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMenuByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetMenuByIdRef on AutoDisposeAsyncNotifierProviderRef<Menu> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GetMenuByIdProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GetMenuById, Menu>
    with GetMenuByIdRef {
  _GetMenuByIdProviderElement(super.provider);

  @override
  int get id => (origin as GetMenuByIdProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
