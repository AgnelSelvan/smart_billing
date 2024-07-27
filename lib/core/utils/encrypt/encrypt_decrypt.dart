import 'package:crypt/crypt.dart';
import 'package:injectable/injectable.dart';

@injectable
class EncryptDecryptManager {
  static String encrypt(String password) {
    return Crypt.sha256(password).toString();
  }

  static bool decrypt(String hash, String password) {
    return Crypt(hash).match(password);
  }
}
