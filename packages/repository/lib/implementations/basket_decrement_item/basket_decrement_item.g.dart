// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_decrement_item.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$basketDecrementItemHash() =>
    r'281b311be19cacf45f86051f4abbfef4dabd6a8c';

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

abstract class _$BasketDecrementItem
    extends BuildlessAutoDisposeAsyncNotifier<int> {
  late final int productId;

  FutureOr<int> build(
    int productId,
  );
}

/// See also [BasketDecrementItem].
@ProviderFor(BasketDecrementItem)
const basketDecrementItemProvider = BasketDecrementItemFamily();

/// See also [BasketDecrementItem].
class BasketDecrementItemFamily extends Family<AsyncValue<int>> {
  /// See also [BasketDecrementItem].
  const BasketDecrementItemFamily();

  /// See also [BasketDecrementItem].
  BasketDecrementItemProvider call(
    int productId,
  ) {
    return BasketDecrementItemProvider(
      productId,
    );
  }

  @override
  BasketDecrementItemProvider getProviderOverride(
    covariant BasketDecrementItemProvider provider,
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
  String? get name => r'basketDecrementItemProvider';
}

/// See also [BasketDecrementItem].
class BasketDecrementItemProvider
    extends AutoDisposeAsyncNotifierProviderImpl<BasketDecrementItem, int> {
  /// See also [BasketDecrementItem].
  BasketDecrementItemProvider(
    int productId,
  ) : this._internal(
          () => BasketDecrementItem()..productId = productId,
          from: basketDecrementItemProvider,
          name: r'basketDecrementItemProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$basketDecrementItemHash,
          dependencies: BasketDecrementItemFamily._dependencies,
          allTransitiveDependencies:
              BasketDecrementItemFamily._allTransitiveDependencies,
          productId: productId,
        );

  BasketDecrementItemProvider._internal(
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
    covariant BasketDecrementItem notifier,
  ) {
    return notifier.build(
      productId,
    );
  }

  @override
  Override overrideWith(BasketDecrementItem Function() create) {
    return ProviderOverride(
      origin: this,
      override: BasketDecrementItemProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<BasketDecrementItem, int>
      createElement() {
    return _BasketDecrementItemProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BasketDecrementItemProvider && other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BasketDecrementItemRef on AutoDisposeAsyncNotifierProviderRef<int> {
  /// The parameter `productId` of this provider.
  int get productId;
}

class _BasketDecrementItemProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BasketDecrementItem, int>
    with BasketDecrementItemRef {
  _BasketDecrementItemProviderElement(super.provider);

  @override
  int get productId => (origin as BasketDecrementItemProvider).productId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
