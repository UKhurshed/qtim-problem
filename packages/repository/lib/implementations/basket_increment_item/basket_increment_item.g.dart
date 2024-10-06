// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_increment_item.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$basketIncrementItemHash() =>
    r'745a2efb1d4056fc528839fbe248ba078d66d778';

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

abstract class _$BasketIncrementItem
    extends BuildlessAutoDisposeAsyncNotifier<int> {
  late final int productId;

  FutureOr<int> build(
    int productId,
  );
}

/// See also [BasketIncrementItem].
@ProviderFor(BasketIncrementItem)
const basketIncrementItemProvider = BasketIncrementItemFamily();

/// See also [BasketIncrementItem].
class BasketIncrementItemFamily extends Family<AsyncValue<int>> {
  /// See also [BasketIncrementItem].
  const BasketIncrementItemFamily();

  /// See also [BasketIncrementItem].
  BasketIncrementItemProvider call(
    int productId,
  ) {
    return BasketIncrementItemProvider(
      productId,
    );
  }

  @override
  BasketIncrementItemProvider getProviderOverride(
    covariant BasketIncrementItemProvider provider,
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
  String? get name => r'basketIncrementItemProvider';
}

/// See also [BasketIncrementItem].
class BasketIncrementItemProvider
    extends AutoDisposeAsyncNotifierProviderImpl<BasketIncrementItem, int> {
  /// See also [BasketIncrementItem].
  BasketIncrementItemProvider(
    int productId,
  ) : this._internal(
          () => BasketIncrementItem()..productId = productId,
          from: basketIncrementItemProvider,
          name: r'basketIncrementItemProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$basketIncrementItemHash,
          dependencies: BasketIncrementItemFamily._dependencies,
          allTransitiveDependencies:
              BasketIncrementItemFamily._allTransitiveDependencies,
          productId: productId,
        );

  BasketIncrementItemProvider._internal(
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
    covariant BasketIncrementItem notifier,
  ) {
    return notifier.build(
      productId,
    );
  }

  @override
  Override overrideWith(BasketIncrementItem Function() create) {
    return ProviderOverride(
      origin: this,
      override: BasketIncrementItemProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<BasketIncrementItem, int>
      createElement() {
    return _BasketIncrementItemProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BasketIncrementItemProvider && other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BasketIncrementItemRef on AutoDisposeAsyncNotifierProviderRef<int> {
  /// The parameter `productId` of this provider.
  int get productId;
}

class _BasketIncrementItemProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BasketIncrementItem, int>
    with BasketIncrementItemRef {
  _BasketIncrementItemProviderElement(super.provider);

  @override
  int get productId => (origin as BasketIncrementItemProvider).productId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
