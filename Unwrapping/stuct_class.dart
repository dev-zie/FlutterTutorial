import 'team.dart';

class NeonAcademyMember {
  String fullName;
  String title;
  String horoscope;
  String memberLevel;
  String homeTown;
  int age;
  ContactInformation contactInformation;
  String? mentorLevel;
  Team team;
  int? motivationLevel;

  NeonAcademyMember({
    required this.fullName,
    required this.title,
    required this.horoscope,
    required this.memberLevel,
    required this.homeTown,
    required this.age,
    required this.contactInformation,
    this.mentorLevel,
    required this.team,
    this.motivationLevel,
  });
}

class ContactInformation {
  String phoneNumber;
  String email;
  ContactInformation({required this.phoneNumber, required this.email});
}

void main() {
  var contact = ContactInformation(
    phoneNumber: '1111',
    email: "remzican@gmail.com",
  );
  var neonAcademyMember = NeonAcademyMember(
    fullName: "Remzican Kolanci",
    title: "Flutter Developer",
    horoscope: "Libra",
    memberLevel: "A1",
    homeTown: "Istanbul",
    age: 22,
    contactInformation: contact,
    team: Team.FLUTTERDEVELOPMENTTEAM,
  );
  print("phone: ${contact.phoneNumber}");
  print("email: ${contact.email}");
  print("fullName: ${neonAcademyMember.fullName}");
  print("title: ${neonAcademyMember.title}");
  print("horoscope: ${neonAcademyMember.horoscope}");
  print("memberLevel: ${neonAcademyMember.memberLevel}");
  print("homeTown: ${neonAcademyMember.homeTown}");
  print("age: ${neonAcademyMember.age}");
}
