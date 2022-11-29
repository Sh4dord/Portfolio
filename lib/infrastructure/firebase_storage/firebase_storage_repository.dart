import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageRepository {
  final storage = FirebaseStorage.instanceFor(bucket: 'gs://portfolio-ebaa5.appspot.com');

  FirebaseStorageRepository();

  Future<String> getDocument(String path) async {
    final imagesRef = storage.ref(path);
    final url = await imagesRef.getDownloadURL();
    return url;
  }
}
