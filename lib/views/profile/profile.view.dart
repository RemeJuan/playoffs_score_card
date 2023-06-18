import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playoffs_score_card/theme.dart';
import 'package:playoffs_score_card/views/profile/widgets/profile_actions.dart';
import 'package:playoffs_score_card/views/profile/widgets/profile_data_controls.dart';

class ProfileView extends ConsumerWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
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
          const ProfileActions(),
          const Expanded(child: SizedBox.shrink()),
          const ProfileDataControls(),
        ],
      ),
    );
  }
}
