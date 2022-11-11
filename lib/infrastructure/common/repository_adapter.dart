abstract class RepositoryAdapter<T> {
  Future<List<T>> findAll();

  Future<T> findOne();

  Future<bool> insertOne(T entity);

  Future<bool> insertAll(List<T> entities);
}