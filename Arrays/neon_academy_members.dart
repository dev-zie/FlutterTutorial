import 'contact_information.dart';

class NeonAcademyMember {
  String fullName;
  String title;
  String horoscope;
  String memberLevel;
  String homeTown;
  int age;
  ContactInformation contactInformation;
  String? mentorLevel;

  NeonAcademyMember({
    required this.fullName,
    required this.title,
    required this.horoscope,
    required this.memberLevel,
    required this.homeTown,
    required this.age,
    required this.contactInformation,
    this.mentorLevel,
  });
}
