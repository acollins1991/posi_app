import 'package:flutter/material.dart';
import 'package:posi_app/src/widgets/app_button.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class StorybookView extends StatelessWidget {
  const StorybookView({super.key});
  @override
  Widget build(BuildContext context) {
    return Storybook(
      stories: [
        Story(
          name: 'Widgets/Text',
          description: 'Simple text widget.',
          builder: (context) => const Center(child: Text('Simple text')),
        ),
        Story(
            name: 'App Button',
            builder: (context) => AppButton(
                text: 'I am a button!',
                onPressed: () => print('I am a pressed button!')))
      ],
    );
  }
}
