import 'package:chrconnecthpdraft/feature/app/extension/context.dart';
import 'package:chrconnecthpdraft/main.dart';
import 'package:flutter/material.dart';
import 'package:intro/intro.dart';

class Welcoming extends StatelessWidget {
  const Welcoming({
    Key? key,
    required this.state,
    required this.name,
  }) : super(key: key);

  final WelcomingStates state;
  final String name;

  @override
  Widget build(BuildContext context) {
    return IntroStepTarget(
      step: 1,
      controller: controller1,
      cardContents: TextSpan(
        text: "We'll take you on a quick tour of your homepage.",
      ),
      child:  DefaultTextStyle(
          style: Theme.of(context).textTheme.displayLarge!,
          child: Builder(builder: (context) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (state == WelcomingStates.morning)
                  Text(context.localizations.good_morning),
                if (state == WelcomingStates.afternoon)
                  Text(context.localizations.good_afternoon),
                if (state == WelcomingStates.evening)
                  Text(context.localizations.good_evening),
                Text(' ${context.localizations.name_exclamation(name)}'),
              ],
            );
          }),
        ),
    );
  }
}

enum WelcomingStates {
  morning,
  afternoon,
  evening,
}
