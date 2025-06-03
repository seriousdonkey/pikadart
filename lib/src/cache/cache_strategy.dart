abstract class CacheStrategy {
  /// Fetches a resource from the cache.
  Future<T?> get<T>(String key);

  /// Saves a resource to the cache.
  Future<void> set<T>(String key, T value);

  /// Deletes a resource from the cache.
  Future<void> remove(String key);

  /// Clears all resources from the cache.
  Future<void> clear();
}
