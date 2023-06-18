import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:playoffs_score_card/theme.dart';
import 'package:playoffs_score_card/views/profile/provider/profile.provider.dart';

class ProfileDataControls extends HookConsumerWidget {
  const ProfileDataControls({super.key});

  @override
  Widget build(context, ref) {
    final _profileProvider = ref.read(profileProvider);

    return Container(
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
                    text: "This keeps you in full control over your data.",
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
    );
  }
}
