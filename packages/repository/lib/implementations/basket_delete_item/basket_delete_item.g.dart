// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_delete_item.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$basketDeleteItemHash() => r'5b4d2f2e260634c9426d1906bc5afa640b15bc3d';

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

abstract class _$BasketDeleteItem
    extends BuildlessAutoDisposeAsyncNotifier<int> {
  late final int productId;

  FutureOr<int> build(
    int productId,
  );
}

/// See also [BasketDeleteItem].
@ProviderFor(BasketDeleteItem)
const basketDeleteItemProvider = BasketDeleteItemFamily();

/// See also [BasketDeleteItem].
class BasketDeleteItemFamily extends Family<AsyncValue<int>> {
  /// See also [BasketDeleteItem].
  const BasketDeleteItemFamily();

  /// See also [BasketDeleteItem].
  BasketDeleteItemProvider call(
    int productId,
  ) {
    return BasketDeleteItemProvider(
      productId,
    );
  }

  @override
  BasketDeleteItemProvider getProviderOverride(
    covariant BasketDeleteItemProvider provider,
  ) {
    return call(
      provider.productId,
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
  String? get name => r'basketDeleteItemProvider';
}

/// See also [BasketDeleteItem].
class BasketDeleteItemProvider
    extends AutoDisposeAsyncNotifierProviderImpl<BasketDeleteItem, int> {
  /// See also [BasketDeleteItem].
  BasketDeleteItemProvider(
    int productId,
  ) : this._internal(
          () => BasketDeleteItem()..productId = productId,
          from: basketDeleteItemProvider,
          name: r'basketDeleteItemProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$basketDeleteItemHash,
          dependencies: BasketDeleteItemFamily._dependencies,
          allTransitiveDependencies:
              BasketDeleteItemFamily._allTransitiveDependencies,
          productId: productId,
        );

  BasketDeleteItemProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productId,
  }) : super.internal();

  final int productId;

  @override
  FutureOr<int> runNotifierBuild(
    covariant BasketDeleteItem notifier,
  ) {
    return notifier.build(
      productId,
    );
  }

  @override
  Override overrideWith(BasketDeleteItem Function() create) {
    return ProviderOverride(
      origin: this,
      override: BasketDeleteItemProvider._internal(
        () => create()..productId = productId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productId: productId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<BasketDeleteItem, int>
      createElement() {
    return _BasketDeleteItemProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BasketDeleteItemProvider && other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BasketDeleteItemRef on AutoDisposeAsyncNotifierProviderRef<int> {
  /// The parameter `productId` of this provider.
  int get productId;
}

class _BasketDeleteItemProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BasketDeleteItem, int>
    with BasketDeleteItemRef {
  _BasketDeleteItemProviderElement(super.provider);

  @override
  int get productId => (origin as BasketDeleteItemProvider).productId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
