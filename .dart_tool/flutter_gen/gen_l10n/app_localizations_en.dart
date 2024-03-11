import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get chr_connect => 'CHR Connect';

  @override
  String get good_morning => 'Good morning,';

  @override
  String get good_afternoon => 'Good afternoon,';

  @override
  String get good_evening => 'Good evening,';

  @override
  String name_exclamation(String name) {
    return '$name!';
  }

  @override
  String get show_notifications => 'Show notifications';

  @override
  String get reminders => 'Reminders';

  @override
  String get upcoming_appointments => 'Upcoming appointments';

  @override
  String get view_all => 'View all';

  @override
  String get home => 'Home';

  @override
  String get appointments => 'Appointments';

  @override
  String get inbox => 'Inbox';

  @override
  String get billing => 'Billing';

  @override
  String get unpaid => 'Unpaid';

  @override
  String get today => 'Today';

  @override
  String get confirmed => 'Confirmed';

  @override
  String get more_resources => 'More resources';

  @override
  String get faq => 'FAQ';

  @override
  String get troubleshooting => 'Troubleshooting';

  @override
  String get find_new_clinic => 'Find new clinic';

  @override
  String get new_message => 'New message';

  @override
  String get book_appointment => 'Book appointment';

  @override
  String get empty_reminders_message => 'You don\'t have any reminders yet';

  @override
  String get new_appointment => 'New appointment';
}
