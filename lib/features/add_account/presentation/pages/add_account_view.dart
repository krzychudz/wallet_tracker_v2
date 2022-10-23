import 'package:flutter/material.dart';
import 'package:wallet_tracker_v2/core/widgets/app_bar/app_bar.dart';
import 'package:wallet_tracker_v2/core/widgets/text_field/underline_text_field.dart';
import 'package:easy_localization/easy_localization.dart';

class AddAccountView extends StatelessWidget {
  const AddAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: 'add_account_title'.tr(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(height: 16),
            Text(
              'add_account_info',
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            ).tr(),
            const SizedBox(height: 16),
            UnderlineTextField(
              hintText: 'add_account_enter_account_name'.tr(),
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 16),
            UnderlineTextField(
              hintText: 'add_account_enter_account_value'.tr(),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => print("clcked"),
              child: const Text('add_account_create_account').tr(),
            )
          ],
        ),
      ),
    );
  }
}

class AddAccount extends StatelessWidget {
  const AddAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
