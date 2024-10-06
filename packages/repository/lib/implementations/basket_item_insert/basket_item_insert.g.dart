// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_item_insert.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$basketItemInsertHash() => r'b8a4d1763ad5d9f1408c762bc1c76e609e3ed62b';

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

abstract class _$BasketItemInsert
    extends BuildlessAutoDisposeAsyncNotifier<int> {
  late final BasketItemObject basketEntry;

  FutureOr<int> build(
    BasketItemObject basketEntry,
  );
}

/// See also [BasketItemInsert].
@ProviderFor(BasketItemInsert)
const basketItemInsertProvider = BasketItemInsertFamily();

/// See also [BasketItemInsert].
class BasketItemInsertFamily extends Family<AsyncValue<int>> {
  /// See also [BasketItemInsert].
  const BasketItemInsertFamily();

  /// See also [BasketItemInsert].
  BasketItemInsertProvider call(
    BasketItemObject basketEntry,
  ) {
    return BasketItemInsertProvider(
      basketEntry,
    );
  }

  @override
  BasketItemInsertProvider getProviderOverride(
    covariant BasketItemInsertProvider provider,
  ) {
    return call(
      provider.basketEntry,
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
  String? get name => r'basketItemInsertProvider';
}

/// See also [BasketItemInsert].
class BasketItemInsertProvider
    extends AutoDisposeAsyncNotifierProviderImpl<BasketItemInsert, int> {
  /// See also [BasketItemInsert].
  BasketItemInsertProvider(
    BasketItemObject basketEntry,
  ) : this._internal(
          () => BasketItemInsert()..basketEntry = basketEntry,
          from: basketItemInsertProvider,
          name: r'basketItemInsertProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$basketItemInsertHash,
          dependencies: BasketItemInsertFamily._dependencies,
          allTransitiveDependencies:
              BasketItemInsertFamily._allTransitiveDependencies,
          basketEntry: basketEntry,
        );

  BasketItemInsertProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.basketEntry,
  }) : super.internal();

  final BasketItemObject basketEntry;

  @override
  FutureOr<int> runNotifierBuild(
    covariant BasketItemInsert notifier,
  ) {
    return notifier.build(
      basketEntry,
    );
  }

  @override
  Override overrideWith(BasketItemInsert Function() create) {
    return ProviderOverride(
      origin: this,
      override: BasketItemInsertProvider._internal(
        () => create()..basketEntry = basketEntry,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        basketEntry: basketEntry,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<BasketItemInsert, int>
      createElement() {
    return _BasketItemInsertProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BasketItemInsertProvider &&
        other.basketEntry == basketEntry;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, basketEntry.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BasketItemInsertRef on AutoDisposeAsyncNotifierProviderRef<int> {
  /// The parameter `basketEntry` of this provider.
  BasketItemObject get basketEntry;
}

class _BasketItemInsertProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BasketItemInsert, int>
    with BasketItemInsertRef {
  _BasketItemInsertProviderElement(super.provider);

  @override
  BasketItemObject get basketEntry =>
      (origin as BasketItemInsertProvider).basketEntry;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
