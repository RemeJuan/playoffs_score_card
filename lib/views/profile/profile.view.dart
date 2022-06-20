import 'package:flutter/material.dart';
import 'package:playoffs_score_card/locator.dart';
import 'package:playoffs_score_card/theme.dart';
import 'package:playoffs_score_card/views/profile/provider/profile.provider.dart';
import 'package:provider/provider.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return ChangeNotifierProvider<ProfileProvider>.value(
      value: sl<ProfileProvider>(),
      child: Center(
        child: Consumer<ProfileProvider>(
          builder: (context, provider, _) {
            return Column(
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
                        onPressed: provider.hasRecords
                            ? () => provider.exportData()
                            : null,
                        child: const Text('Backup Data'),
                      ),
                      const SizedBox(height: AppTheme.paddingDefault * 2),
                      const ElevatedButton(
                        onPressed: null,
                        child: Text('Restore Data'),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
