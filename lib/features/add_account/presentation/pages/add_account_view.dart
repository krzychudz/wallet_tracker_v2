import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_tracker_v2/core/widgets/app_bar/app_bar.dart';
import 'package:wallet_tracker_v2/core/widgets/submit_button/submit_button.dart';
import 'package:wallet_tracker_v2/core/widgets/text_field/underline_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:wallet_tracker_v2/features/add_account/presentation/cubit/add_account_cubit.dart';
import 'package:wallet_tracker_v2/features/add_account/presentation/cubit/add_account_state.dart';

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
              onChange: (value) =>
                  context.read<AddAccountCubit>().onNameChanged(value),
            ),
            const SizedBox(height: 16),
            UnderlineTextField(
              hintText: 'add_account_enter_account_value'.tr(),
              keyboardType: TextInputType.number,
              onChange: (value) =>
                  context.read<AddAccountCubit>().onValueChanged(value),
            ),
            const SizedBox(height: 24),
            const SaveButton()
          ],
        ),
      ),
    );
  }
}

class SaveButton extends StatelessWidget {
  const SaveButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddAccountCubit, AddAccountState>(
        buildWhen: (previous, current) =>
            previous.accountCreationState != current.accountCreationState,
        builder: (context, state) {
          return SubmitButton(
            label: tr('add_account_create_account'),
            onPressed: () => context.read<AddAccountCubit>().onSubmit(),
            inProgress:
                state.accountCreationState == AccountCreationState.inProgress,
          );
        });
  }
}
