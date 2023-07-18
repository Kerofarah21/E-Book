import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthService {
  final LocalAuthentication _localAuth = LocalAuthentication();

  Future<bool> authenticateUser() async {
    bool isAuthenticated = false;

    bool isBiometricSupported = await _localAuth.isDeviceSupported();
    bool canCheckBiometrics = await _localAuth.canCheckBiometrics;

    if (isBiometricSupported && canCheckBiometrics) {
      try {
        isAuthenticated = await _localAuth.authenticate(
          localizedReason: 'Please authenticate to read free books',
          options: const AuthenticationOptions(
            biometricOnly: true,
            useErrorDialogs: true,
            stickyAuth: true,
          ),
        );
      } on PlatformException catch (e) {
        print(e);
      }
    }

    return isAuthenticated;
  }
}
