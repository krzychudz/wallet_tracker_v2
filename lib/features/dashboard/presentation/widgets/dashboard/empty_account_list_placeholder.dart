import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class EmptyAccountListPlaceholder extends StatelessWidget {
  const EmptyAccountListPlaceholder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 12.0),
        child: Center(
          child: Text(
            'dashboard_no_accounts_placeholder',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displaySmall,
          ).tr(),
        ),
      ),
    );
  }
}
