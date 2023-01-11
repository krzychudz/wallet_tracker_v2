import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/core/widgets/underline_text_button/underline_text_button.dart';
import 'package:wallet_tracker_v2/features/accounts_history/accounts_history_module.dart';
import 'package:wallet_tracker_v2/features/add_account/add_account_module.dart';

class AccountsHeader extends StatelessWidget {
  const AccountsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "dashboard_accounts_label",
              style: Theme.of(context).textTheme.headline2,
            ).tr(),
            Row(
              children: [
                UnderlineTextButton(
                  label: 'dashboard_accounts_add'.tr(),
                  onTap: () => Modular.to.pushNamed(AddAccountModule.route),
                ),
                const SizedBox(width: 10),
                UnderlineTextButton(
                  label: 'dashboard_accounts_history'.tr(),
                  onTap: () =>
                      Modular.to.pushNamed(AccountsHistoryModule.route),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
