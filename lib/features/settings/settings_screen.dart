import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_tracker_v2/core/cubit/app_configuration_cubit.dart';
import 'package:wallet_tracker_v2/core/cubit/app_configuration_state.dart';
import 'package:wallet_tracker_v2/core/widgets/app_bar/app_bar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  static String route = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: 'settings_label'.tr()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: const [
            DarkModeSection(),
          ],
        ),
      ),
    );
  }
}

class DarkModeSection extends StatelessWidget {
  const DarkModeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "settings_dark_mode",
          style: Theme.of(context).textTheme.bodyLarge,
        ).tr(),
        const Spacer(),
        BlocBuilder<AppConfigurationCubit, AppConfigurationState>(
            builder: (context, state) {
          return Switch(
              value: state.isDarkModeEnabled,
              onChanged: (isSelected) => context
                  .read<AppConfigurationCubit>()
                  .toggleDarkMode(isSelected));
        })
      ],
    );
  }
}
