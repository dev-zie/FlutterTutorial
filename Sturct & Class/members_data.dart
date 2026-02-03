import 'contact_information.dart';
import 'neon_academy_members.dart';

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
    ),
    NeonAcademyMember(
      fullName: 'Beyza Yalvac',
      title: 'Flutter Developer',
      horoscope: 'Lion',
      memberLevel: 'A2',
      homeTown: 'Ankara',
      age: 23,
      contactInformation: ContactInformation(
        phoneNumber: '+90 543 210 1235',
        email: 'beyza@gmail.com',
      ),
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
    ),
  ];
}

void printAlMembers(List<NeonAcademyMember> members) {
  for (final member in members) {
    print(
      '${member.fullName} | ${member.memberLevel} | ${member.title}  | ${member.age} | ${member.horoscope} | ${member.homeTown} | ${member.contactInformation.email} | ${member.contactInformation.phoneNumber}',
    );
  }
}
