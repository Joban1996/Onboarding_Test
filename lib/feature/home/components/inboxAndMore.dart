import 'package:flutter/material.dart';
import 'package:intro/intro.dart';

import '../../../main.dart';
import 'inbox/inbox.dart';
import 'more_resources.dart';


class InboxAndMore extends StatelessWidget {
  const InboxAndMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroStepTarget(
      step: 5,
      controller: Intro.of(context).controller,
      cardContents: const TextSpan(
        text: "At the Bottom of the page,\n you'll find your messages and\n some extra resources.",
      ),
      onStepWillDeactivate: (will){
        showGeneralDialog(
            context: context,
            pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
              return  Dialog(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(child:  Text("That's all for now! Click close to return to your homepage.")),
                      IconButton(onPressed: (){
                        controller.jumpTo(controller.position.minScrollExtent);
                        Navigator.pop(context);
                      }, icon: const Icon(Icons.close))
                    ],
                  ),
                ),
              );
            });
      },
      child: const Column(
        children: [
          Inbox(
              verticalLayout: true),
          SizedBox(height: 32),
          MoreResources(),
          SizedBox(height: 88),
        ],
      ),
    );
  }
}
