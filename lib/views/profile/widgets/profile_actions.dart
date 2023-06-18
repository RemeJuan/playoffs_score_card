import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:playoffs_score_card/core/providers/core_provider.dart';

import 'auth_view.dart';

class ProfileActions extends HookConsumerWidget {
  const ProfileActions({super.key});

  @override
  Widget build(context, ref) {
    final _coreProvider = ref.read(coreProvider);
    final _status = ref.watch(coreProvider.select((value) => value.status));

    return _status == AuthStatus.LoggedIn
        ? Row(
            children: [
              const SizedBox(width: 40),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => _coreProvider.logout(),
                  child: const Text("Logout"),
                ),
              ),
              const SizedBox(width: 40),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => _showDeleteConfirmation(context, ref),
                  child: const Text("Delete Account"),
                ),
              ),
              const SizedBox(width: 40),
            ],
          )
        : ElevatedButton(
            onPressed: () => _showLogin(context),
            child: const Text("Signup / Register"),
          );
  }

  void _showDeleteConfirmation(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      barrierColor: Colors.black12.withOpacity(0.6),
      builder: (context) {
        return AlertDialog(
          title: const Text("Delete Account"),
          content: const Text(
            "Are you sure you want to delete your account? This action cannot be undone.",
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () => ref.read(coreProvider).deleteUser(),
              child: const Text("Delete"),
            ),
          ],
        );
      },
    );
  }

  void _showLogin(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierColor: Colors.black12.withOpacity(0.6),
      barrierDismissible: false,
      pageBuilder: (_, __, ___) {
        return const AuthView();
      },
    );
  }
}
