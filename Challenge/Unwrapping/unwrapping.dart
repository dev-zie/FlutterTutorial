import 'team.dart';
import 'stuct_class.dart';

List<NeonAcademyMember> getAllMembers() {
  return [
    NeonAcademyMember(
      fullName: 'Remzican',
      title: 'Flutter Developer',
      horoscope: 'Libra',
      memberLevel: 'A1',
      homeTown: 'Istanbul',
      age: 22,
      contactInformation: ContactInformation(
        phoneNumber: '+90 543 210 1234',
        email: 'remzican@gmail.com',
      ),
      team: Team.FLUTTERDEVELOPMENTTEAM,
      motivationLevel: 90,
    ),
    NeonAcademyMember(
      fullName: 'Beyza',
      title: 'Flutter Developer',
      horoscope: 'Lion',
      memberLevel: 'A2',
      homeTown: 'Ankara',
      age: 23,
      contactInformation: ContactInformation(
        phoneNumber: '+90 543 210 1235',
        email: 'beyza@gmail.com',
      ),
      team: Team.FLUTTERDEVELOPMENTTEAM,
    ),
    NeonAcademyMember(
      fullName: 'Baris',
      title: 'Full-Stack Developer',
      horoscope: 'Lion',
      memberLevel: 'A1',
      homeTown: 'Ankara',
      age: 21,
      contactInformation: ContactInformation(
        phoneNumber: '+90 543 210 1236',
        email: 'baris@gmail.com',
      ),
      team: Team.FULLSTACKTEAM,
    ),
    NeonAcademyMember(
      fullName: 'Irem',
      title: 'Flutter Developer',
      horoscope: 'Lion',
      memberLevel: 'A1',
      homeTown: 'Istanbul',
      age: 22,
      contactInformation: ContactInformation(
        phoneNumber: '+90 543 210 1238',
        email: 'irem@gmail.com',
      ),
      team: Team.FLUTTERDEVELOPMENTTEAM,
      motivationLevel: 60,
    ),
    NeonAcademyMember(
      fullName: 'Serhat',
      title: 'IOS Developer',
      horoscope: 'Libra',
      memberLevel: 'B1',
      homeTown: 'Eskisehir',
      age: 27,
      contactInformation: ContactInformation(
        phoneNumber: '+90 543 250 1236',
        email: 'Serhat@gmail.com',
      ),
      team: Team.IOSDEVELOPMENTTEAM,
    ),
    NeonAcademyMember(
      fullName: 'Samet',
      title: 'Full-Stack Developer',
      horoscope: 'Lion',
      memberLevel: 'A1',
      homeTown: 'Antalya',
      age: 25,
      contactInformation: ContactInformation(
        phoneNumber: '+90 543 210 1237',
        email: 'samet@gmail.com',
      ),
      team: Team.FULLSTACKTEAM,
    ),
    NeonAcademyMember(
      fullName: 'Tuna',
      title: 'UI/UX Designer',
      horoscope: 'Libra',
      memberLevel: 'A1',
      homeTown: 'Kocaeli',
      age: 24,
      contactInformation: ContactInformation(
        phoneNumber: '+90 543 210 1226',
        email: 'tuna@gmail.com',
      ),
      team: Team.UI_UXDESIGNTEAM,
      motivationLevel: 40,
    ),
    NeonAcademyMember(
      fullName: 'Anil',
      title: 'Flutter Developer',
      horoscope: 'Lion',
      memberLevel: 'B1',
      homeTown: 'Eskisehir',
      age: 27,
      contactInformation: ContactInformation(
        phoneNumber: '+90 543 250 1236',
        email: 'Serhat@gmail.com',
      ),
      team: Team.FLUTTERDEVELOPMENTTEAM,
    ),
    NeonAcademyMember(
      fullName: 'Zeynep',
      title: 'Full-stack Developer',
      horoscope: 'Lion',
      memberLevel: 'A1',
      homeTown: 'Hatay',
      age: 23,
      contactInformation: ContactInformation(
        phoneNumber: '+90 543 220 1236',
        email: 'Zeynep@gmail.com',
      ),
      team: Team.FULLSTACKTEAM,
    ),
    NeonAcademyMember(
      fullName: 'Sevval',
      title: 'Flutter Developer',
      horoscope: 'Lion',
      memberLevel: 'A1',
      homeTown: 'Istanbul',
      age: 20,
      contactInformation: ContactInformation(
        phoneNumber: '+90 553 210 1236',
        email: 'sevval@gmail.com',
      ),
      team: Team.FLUTTERDEVELOPMENTTEAM,
    ),
    NeonAcademyMember(
      fullName: 'Sercan',
      title: 'IOS Developer',
      horoscope: 'Libra',
      memberLevel: 'B2',
      homeTown: 'Bursa',
      age: 28,
      contactInformation: ContactInformation(
        phoneNumber: '+90 543 260 1236',
        email: 'sercan@gmail.com',
      ),
      mentorLevel: 'B2',
      team: Team.IOSDEVELOPMENTTEAM,
      motivationLevel: 20,
    ),
  ];
}

void main() {
  var allmembers = getAllMembers();

  void increaseMotivation(int level) {
    for (var i = 0; i < allmembers.length; i++) {
      if (allmembers[i].motivationLevel != null &&
          allmembers[i].motivationLevel! < 100) {
        allmembers[i].motivationLevel = allmembers[i].motivationLevel! + level;
      } else {
        allmembers[i].motivationLevel = 1;
      }
    }
  }

  increaseMotivation(50);

  print('\n==Section 1==\n');

  void getLevel(String name) {
    for (var member in allmembers) {
      if (name.toLowerCase() == member.fullName.toLowerCase()) {
        if (member.motivationLevel == null) {
          print('This member has no motivation level set');
        }

        if (member.motivationLevel! >= 5) {
          print('This member is highly motivated');
        }
      }
    }
  }

  getLevel('Remzican');

  print('\n==Section 2==\n');

  String motivationScale(int? motivationLevel) {
    if (motivationLevel == null) {
      return 'not motivated ';
    } else if (motivationLevel > 50) {
      return 'moderately motivated';
    } else {
      return 'highly motivated';
    }
  }

  print(motivationScale(60));

  print('\n==Section 3==\n');

  int getMotivationLevel(NeonAcademyMember member) {
    return member.motivationLevel ?? 0;
  }

  print(getMotivationLevel(allmembers.first));

  print('\n==Section 4==\n');

  bool resultMotivation(NeonAcademyMember member, var expectedMotivationLevel) {
    if (member.motivationLevel != null &&
        member.motivationLevel! >= expectedMotivationLevel) {
      return true;
    } else {
      return false;
    }
  }

  print(resultMotivation(allmembers.first, 60));
}
