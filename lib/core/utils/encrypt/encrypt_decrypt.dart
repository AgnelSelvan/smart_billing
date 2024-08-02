import 'package:encrypt/encrypt.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/utils/environments/environments.dart';

@injectable
class EncryptDecryptManager {
  final AppEnvironments appEnvironments;

  EncryptDecryptManager({required this.appEnvironments});

  String encrypt(String password) {
    final e = Encrypter(AES(appEnvironments.encryptKey, mode: AESMode.cbc));
    final encryptedData = e.encrypt(password, iv: appEnvironments.encryptIV);
    return encryptedData.base64;
  }

  String decrypt(String password) {
    final e = Encrypter(AES(appEnvironments.encryptKey, mode: AESMode.cbc));
    final decryptedData = e.decrypt(Encrypted.fromBase64(password),
        iv: appEnvironments.encryptIV);
    return decryptedData;
  }

  bool hasMatch(String hash, String password) {
    return decrypt(hash) == password;
  }
}
