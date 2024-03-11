import 'package:chrconnecthpdraft/feature/app/theme/app_theme.dart';
import 'package:flutter/material.dart';


class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      padding: const EdgeInsets.all(8),
      alignment: Alignment.center,
      decoration: BoxDecoration(border: Border.all(color: AppTheme.colorScheme.primary,width: 2),
      borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Text('Show Onboarding',style: Theme.of(context)
          .textTheme
          .displaySmall
          ?.copyWith(fontWeight: FontWeight.w700,color: AppTheme.colorScheme.primary),),
    );
  }
}
