import 'package:chrconnecthpdraft/feature/home/components/appointments/appointments.dart';
import 'package:chrconnecthpdraft/feature/home/components/inboxAndMore.dart';
import 'package:chrconnecthpdraft/feature/home/components/welcoming.dart';
import 'package:chrconnecthpdraft/main.dart';
import 'package:flutter/material.dart';
import 'components/reminders/reminders.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('images/background.png'),
         SingleChildScrollView(
          controller: controller,
          child:  const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Welcoming(
                  state: WelcomingStates.evening,
                  name: "Linda",
                ),
              ),
              SizedBox(height: 32),
              Reminders(),
              SizedBox(height: 32),
              Appointments(
                  verticalLayout: true),
              SizedBox(height: 32),
              InboxAndMore()
            ],
          ),
        ),
      ],
    );
  }
}
