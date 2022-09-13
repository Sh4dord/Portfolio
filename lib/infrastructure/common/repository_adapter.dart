abstract class RepositoryAdapter<T> {
  Future<List<T>> findAll();
  Future<T> findOne();
}