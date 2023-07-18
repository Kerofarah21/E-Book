// ignore_for_file: use_build_context_synchronously

import 'package:bookly/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly/core/utils/local_auth_service.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class LockView extends StatelessWidget {
  const LockView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.lock_outline,
              size: 100.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextButton(
              onPressed: () async {
                bool isAuthenticated =
                    await LocalAuthService().authenticateUser();
                if (isAuthenticated) {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SplashView(),
                    ),
                    (route) => false,
                  );
                }
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: Text(
                'Continue to the app',
                style: Styles.textStyle20.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
