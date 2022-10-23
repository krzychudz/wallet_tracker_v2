import 'package:flutter/material.dart';
import 'package:wallet_tracker_v2/core/widgets/app_bar/app_bar.dart';
import 'package:wallet_tracker_v2/core/widgets/text_field/underline_itext_field.dart';

class AddAccountView extends StatelessWidget {
  const AddAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        title: "New Account Screen",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(height: 16),
            Text(
              'Add a new money source',
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const UnderlineTextField(
              hintText: 'Enter a source name',
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 16),
            const UnderlineTextField(
              hintText: 'Enter a initial value',
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => print("clcked"),
              child: const Text('Create a source'),
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
