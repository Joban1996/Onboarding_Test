import 'package:chrconnecthpdraft/feature/app/extension/context.dart';
import 'package:chrconnecthpdraft/feature/home/components/section/section_column.dart';
import 'package:chrconnecthpdraft/feature/main/main_screen.dart';
import 'package:chrconnecthpdraft/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intro/intro.dart';

import '../section/section.dart';
import '../section/section_row.dart';
import 'appointments_item.dart';

class Appointments extends StatelessWidget {
  const Appointments({
    Key? key,
    this.verticalLayout = false,
  }) : super(key: key);

  final bool verticalLayout;

  @override
  Widget build(BuildContext context) {
    return IntroStepTarget(
      onStepWillDeactivate: (willToStep){
        controller.jumpTo(MediaQuery.of(context).size.height/2);
      },
      step: 3,
        controller: controller1,
        cardContents: const TextSpan(
          text: "This second section gives you easy \naccess to your upcoming appointments.",
        ),
      child:  Section(
          name: context.localizations.upcoming_appointments,
          showViewAll: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    ChoiceChip(
                      label: Text(context.localizations.today),
                      selected: true,
                      onSelected: (_) {},
                    ),
                    const SizedBox(width: 8),
                    ChoiceChip(
                      label: const Text('June 13'),
                      selected: false,
                      onSelected: (_) {},
                    ),
                    const SizedBox(width: 8),
                    ChoiceChip(
                      label: const Text('July 25'),
                      selected: false,
                      onSelected: (_) {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              _sectionLayoutContent(context)
            ],
          ),
        )
    );
  }

  Widget _sectionLayoutContent(BuildContext context) {
    var children = [
      IntroStepTarget(
        onStepWillDeactivate: (willToStep){
          controller.jumpTo(controller.position.maxScrollExtent);
        },
        step: 4,
        controller: controller1,
        cardContents: const TextSpan(
          text: "There are direct links to your virtual appointments.",
        ),
        child: AppointmentsItem(
          date: DateTime.now(),
          duration: const Duration(minutes: 30),
          title: "Counselling Session",
          subtitle: "Dr. Gregory House",
          place: 'LMC Optometry & Eye Care',
          cta: "Join virtual visit",
          image: Image.asset('images/house.png').image,
          condensed: verticalLayout,
        ),
      ),
      AppointmentsItem(
        date: DateTime.now(),
        duration: const Duration(minutes: 30),
        title: "Counselling Session",
        subtitle: "Dr. Gregory House",
        place: 'LMC Optometry & Eye Care',
        cta: "Check in",
        image: Image.asset('images/house.png').image,
        condensed: verticalLayout,
      ),
    ];

    return verticalLayout
        ? SectionColumn(children: children)
        : SectionRow(children: children);
  }
}
