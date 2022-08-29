import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playoffs_score_card/core/providers/core_provider.dart';
import 'package:playoffs_score_card/theme.dart';
import 'package:playoffs_score_card/views/profile/provider/profile.provider.dart';
import 'package:playoffs_score_card/views/profile/widgets/auth_view.dart';

class ProfileView extends ConsumerWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final _coreProvider = ref.read(coreProvider);
    final _profileProvider = ref.watch(profileProvider);

    final _status = ref.watch(coreProvider.select((value) => value.status));

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(height: AppTheme.paddingDefault * 2),
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(
                      AppTheme.paddingDefault * 1.25,
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 80,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppTheme.paddingDefault * 2),
          _coreProvider.status == AuthStatus.LoggedIn
              ? ElevatedButton(
                  onPressed: () => _coreProvider.logout(),
                  child: const Text("Logout"),
                )
              : ElevatedButton(
                  onPressed: () => _showLogin(context),
                  child: const Text("Signup / Register"),
                ),
          const Expanded(child: SizedBox.shrink()),
          Container(
            margin: const EdgeInsets.only(
              bottom: AppTheme.paddingDefault,
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(AppTheme.paddingDefault),
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Data:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '\n\n',
                        ),
                        TextSpan(
                          text:
                              "You can use the following buttons to either export your data for a local backup or to import data from a previous backup.",
                        ),
                        TextSpan(
                          text: '\n\n',
                        ),
                        TextSpan(
                          text:
                              "We will be adding registration shortly, which will allow you to save your data on a server.",
                        ),
                        TextSpan(
                          text: '\n\n',
                        ),
                        TextSpan(
                          text:
                              "This keeps you in full control over your data.",
                        ),
                      ],
                      style: TextStyle(color: Colors.black),
                    ),
                    softWrap: true,
                  ),
                ),
                const SizedBox(height: AppTheme.paddingDefault),
                ElevatedButton(
                  onPressed: _profileProvider.hasRecords
                      ? () => _profileProvider.exportData()
                      : null,
                  child: const Text('Backup Data'),
                ),
                const SizedBox(height: AppTheme.paddingDefault * 2),
                ElevatedButton(
                  onPressed: () => _profileProvider.importData(),
                  child: const Text('Restore Data'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showLogin(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierColor: Colors.black12.withOpacity(0.6),
      barrierDismissible: false,
      pageBuilder: (_, __, ___) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider<ProfileProvider>.value(
              value: context.read<ProfileProvider>(),
            ),
            ChangeNotifierProvider<CoreProvider>.value(
              value: context.read<CoreProvider>(),
            ),
          ],
          child: const AuthView(),
        );
      },
    );
  }
}
