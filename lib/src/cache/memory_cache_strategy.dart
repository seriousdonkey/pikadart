import 'package:pikadart/src/cache/cache_strategy.dart';

class MemoryCacheStrategy implements CacheStrategy {
  final Map<String, dynamic> _cache = {};
  final Duration ttl;

  MemoryCacheStrategy({
    this.ttl = const Duration(hours: 1),
  });

  @override
  Future<T?> get<T>(String key) async {
    final entry = _cache[key];
    if (entry == null) return null;

    if (entry.isExpired) {
      _cache.remove(key);
      return null;
    }

    return entry.value as T;
  }

  @override
  Future<void> set<T>(String key, T value) async {
    _cache[key] = _CacheEntry(value: value, expiresAt: DateTime.now().add(ttl));
  }

  @override
  Future<void> remove(String key) async {
    _cache.remove(key);
  }

  @override
  Future<void> clear() async {
    _cache.clear();
  }
}

class _CacheEntry {
  final dynamic value;
  final DateTime expiresAt;

  _CacheEntry({
    required this.value,
    required this.expiresAt,
  });

  bool get isExpired => DateTime.now().isAfter(expiresAt);
}
