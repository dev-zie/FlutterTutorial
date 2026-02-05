import 'stuct_class.dart';
import 'team.dart';

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
    ),
  ];
}

void main() {
  var members = getAllMembers();
  var allmembers = getAllMembers();

  void printAllMembers(List<NeonAcademyMember> members) {
    for (final member in members) {
      print(
        '${member.fullName} | ${member.memberLevel} | ${member.title} | ${member.age} | ${member.horoscope} | ${member.homeTown} | ${member.contactInformation.email} | ${member.contactInformation.phoneNumber}',
      );
    }
  }

  int averageAge(List<NeonAcademyMember> members) {
    int totalAge = 0;

    for (var member in members) {
      totalAge += member.age;
    }

    return (totalAge / members.length).round();
  }

  List<NeonAcademyMember> getTeamMembers(
    List<NeonAcademyMember> members,
    Team team,
  ) {
    List<NeonAcademyMember> newList = [];

    for (var member in members) {
      if (member.team == team) {
        newList.add(member);
      }
    }

    return newList;
  }

  print('\n==Section 1==\n');

  print('\n==Flutter Development Team==\n');
  var flutterDevelopmentTeam = getTeamMembers(
    allmembers,
    Team.FLUTTERDEVELOPMENTTEAM,
  );
  printAllMembers(flutterDevelopmentTeam);

  print('\n==Section 2==\n');
  Map<String, int> getTeamCounts(List<NeonAcademyMember> members) {
    Map<String, int> teamCounts = {};

    for (var member in members) {
      teamCounts.update(
        member.team.name,
        (value) => value + 1,
        ifAbsent: () => 1,
      );
    }

    return teamCounts;
  }

  var teamCounts = getTeamCounts(allmembers);
  print('Total UI/UX Members :  ${teamCounts['UI_UXDESIGNTEAM'] ?? 0}');

  print('\n==Section 3==\n');

  print('\n==Team Members==\n');

  var teamMembers = getTeamMembers(allmembers, Team.FULLSTACKTEAM);
  printAllMembers(teamMembers);

  print('\n==Section 4==\n');

  NeonAcademyMember? findMemberByName(
    List<NeonAcademyMember> members,
    String name,
  ) {
    for (var member in members) {
      if (member.fullName.toLowerCase() == name.toLowerCase()) {
        return member;
      }
    }
  }

  void describeMemberTeam(List<NeonAcademyMember> members, String memberName) {
    NeonAcademyMember? member = findMemberByName(members, memberName);

    switch (member!.team) {
      case Team.FLUTTERDEVELOPMENTTEAM:
        print('This member is a skilled Flutter developer');
        break;

      case Team.IOSDEVELOPMENTTEAM:
        print('This member is a skilled IOS developer');
        break;
      case Team.ANDROIDDEVELOPMENTTEAM:
        print('This member is a skilled Android developer');
        break;
      case Team.UI_UXDESIGNTEAM:
        print('This member is a talented designer');
        break;

      default:
        print('This member belongs to another team');
    }
  }

  describeMemberTeam(allmembers, 'Remzican');

  print('\n==Section 5==\n');

  void olderThan(List<NeonAcademyMember> members, int age) {
    for (var member in members) {
      if (member.age > age && member.team == Team.FLUTTERDEVELOPMENTTEAM) {
        print(member.fullName);
      }
    }
  }

  olderThan(allmembers, 25);

  print('\n==Section 6==\n');

  void promoteMember(List<NeonAcademyMember> members, String memberName) {
    NeonAcademyMember? member = findMemberByName(members, memberName);

    switch (member!.team) {
      case Team.FLUTTERDEVELOPMENTTEAM:
        print('This member is promoted to Senior Flutter Developer');
        break;

      case Team.IOSDEVELOPMENTTEAM:
        print('This member is promoted to Senior IOS Developer');
        break;
      case Team.ANDROIDDEVELOPMENTTEAM:
        print('This member is promoted to Senior Android Developer');
        break;
      case Team.UI_UXDESIGNTEAM:
        print('This member is promoted to Lead Designer');
        break;

      default:
        print('This member belongs to another team');
    }
  }

  promoteMember(members, 'Remzican');

  print('\n==Section 7==\n');

  int averageAgeTeamMembers(List<NeonAcademyMember> members, Team team) {
    getTeamMembers(members, team);
    return averageAge(members);
  }

  var avgAgeTeamMembers = averageAgeTeamMembers(
    allmembers,
    Team.FLUTTERDEVELOPMENTTEAM,
  );

  print('Flutter team age average: ${avgAgeTeamMembers}');

  print('\n==Section 8==\n');

  void describeTeam(Team team) {
    switch (team) {
      case Team.FLUTTERDEVELOPMENTTEAM:
        print('The Flutter Development Team is the backbone of our academy');
        break;

      case Team.UI_UXDESIGNTEAM:
        print('The UI/UX Design Team is the face of our academy');
        break;

      default:
        print('This team is not found');
    }
  }

  describeTeam(Team.FLUTTERDEVELOPMENTTEAM);

  print('\n==Section 9==\n');

  List<ContactInformation> getThistTeamContacts(
    List<NeonAcademyMember> members,
    Team team,
  ) {
    var teamMembers = getTeamMembers(members, team);

    List<ContactInformation> contactInformations = [];

    for (var member in teamMembers) {
      contactInformations.add(member.contactInformation);
    }

    for (final member in contactInformations) {
      print('Email: ${member.email} Phone: ${member.phoneNumber}');
    }

    return contactInformations;
  }

  getThistTeamContacts(allmembers, Team.FLUTTERDEVELOPMENTTEAM);

  print('\n==Section 10==\n');

  void describeMemberByTeamAndAge(List<NeonAcademyMember> members) {
    for (var member in members) {
      switch (member.team) {
        case Team.FLUTTERDEVELOPMENTTEAM:
          if (member.age > 23) {
            print('${member.fullName} is a seasoned Flutter developer');
          } else {
            print(
              '${member.fullName} is a Flutter developer with great potential',
            );
          }
          break;

        case Team.UI_UXDESIGNTEAM:
          if (member.age < 24) {
            print('${member.fullName} is a rising star in the design world');
          } else {
            print('${member.fullName} is an experienced UI/UX designer');
          }
          break;

        case Team.ANDROIDDEVELOPMENTTEAM:
          if (member.age < 24) {
            print('${member.fullName} is a rising star in the Android world');
          } else {
            print('${member.fullName} is an experienced Android developer');
          }
          break;

        case Team.FULLSTACKTEAM:
          if (member.age < 24) {
            print('${member.fullName} is a rising star in the FullStack world');
          } else {
            print('${member.fullName} is an experienced FullStack developer');
          }
          break;

        case Team.IOSDEVELOPMENTTEAM:
          if (member.age < 24) {
            print('${member.fullName} is a rising star in the IOS world');
          } else {
            print('${member.fullName} is an experienced IOS developer');
          }
          break;
      }
    }
  }
  describeMemberByTeamAndAge(allmembers);
}
