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
    ),
  ];
}

void main(List<String> args) {
  var members = getAllMembers();
  var allmembers = getAllMembers();

  print('==Section 1==\n');

  print('==Before==\n');

  void printAllMembers(List<NeonAcademyMember> members) {
    for (final member in members) {
      print(
        '${member.fullName} | ${member.memberLevel} | ${member.title} | ${member.age} | ${member.horoscope} | ${member.homeTown} | ${member.contactInformation.email} | ${member.contactInformation.phoneNumber}',
      );
    }
  }

  printAllMembers(allmembers);

  print('\n==After==\n');

  List<NeonAcademyMember> removeThird(List<NeonAcademyMember> members) {
    List<NeonAcademyMember> newList = members;
    newList.removeAt(2);
    return newList;
  }

  var removedThird = removeThird(members);
  printAllMembers(removedThird);

  print('\n===================\n');

  print('==Section 2==\n');

  print('==Before==\n');
  printAllMembers(allmembers);

  print('\n==After==\n');

  List<NeonAcademyMember> sortAges(List<NeonAcademyMember> members) {
    List<NeonAcademyMember> newList = members;

    newList.sort((a, b) => b.age.compareTo(a.age));

    return newList;
  }

  var sortedAgeList = sortAges(members);
  printAllMembers(sortedAgeList);

  print('\n===================\n');

  print('==Section 3==\n');

  print('==Before==\n');
  printAllMembers(allmembers);

  print('\n==After==\n');

  List<NeonAcademyMember> sortNames(List<NeonAcademyMember> members) {
    List<NeonAcademyMember> newList = members;

    newList.sort(
      (a, b) => a.fullName.toLowerCase().compareTo(b.fullName.toLowerCase()),
    );

    return newList;
  }

  var sortedNameList = sortNames(members);
  printAllMembers(sortedNameList);

  print('\n===================\n');

  print('==Section 4==\n');

  print('==Before==\n');
  printAllMembers(allmembers);

  print('\n==After==\n');

  List<NeonAcademyMember> filterOlderThanTF(List<NeonAcademyMember> members) {
    List<NeonAcademyMember> newList = [];

    for (var member in members) {
      if (member.age >= 24) {
        newList.add(member);
      }
    }

    return newList;
  }

  var filteredList = filterOlderThanTF(members);
  printAllMembers(filteredList);

  print('\n===================\n');

  print('==Section 5==\n');

  int IOSDeveloperCounter(List<NeonAcademyMember> members) {
    int IOSDeveloperCount = 0;
    for (var member in members) {
      if (member.title.toLowerCase() == 'ios developer') {
        IOSDeveloperCount++;
      }
    }
    return IOSDeveloperCount;
  }

  print('IOS developer count: ${IOSDeveloperCounter(members)}');

  print('\n===================\n');

  print('==Section 6==\n');

  int findMyIndex(List<NeonAcademyMember> members) {
    return members.indexWhere((element) => element.fullName == 'Remzican');
  }

  print('My Index is ${findMyIndex(members)}');

  print('\n===================\n');

  print('==Section 7==\n');

  List<NeonAcademyMember> findMentors(List<NeonAcademyMember> members) {
    List<NeonAcademyMember> mentors = [];

    for (var member in members) {
      if (member.mentorLevel != null) {
        mentors.add(member);
      }
    }

    for (var mentor in mentors) {
      if (mentor.mentorLevel != null) {
        print('Mentor List:\n ${mentor.fullName} | ${mentor.mentorLevel}');
      }
    }
    return mentors;
  }

  findMentors(members);

  print('==Section 8==\n');

  print('==Before==\n');
  printAllMembers(allmembers);

  print('\n==After==\n');

  List<NeonAcademyMember> deleteSpesificMembers(
    List<NeonAcademyMember> members,
    String memberLevel,
  ) {
    List<NeonAcademyMember> newList = members;

    members.removeWhere((member) => member.memberLevel == memberLevel);

    return newList;
  }

  var deletedList = deleteSpesificMembers(members, 'A2');
  printAllMembers(deletedList);

  print('==Section 9==\n');

  print('==Before==\n');
  printAllMembers(allmembers);

  print('\n==After==\n');

  NeonAcademyMember findOlder(List<NeonAcademyMember> members) {
    sortAges(members);

    return members.first;
  }

  print(
    findOlder(allmembers).fullName + '' + findOlder(allmembers).age.toString(),
  );

  print('==Section 10==\n');

  print('==Before==\n');
  printAllMembers(allmembers);

  print('\n==After Longest Name==\n');

  NeonAcademyMember findLongestName(List<NeonAcademyMember> member) {
    int nameLength = 0;
    member.sort((a, b) => b.fullName.length.compareTo(a.fullName.length));

    nameLength = member.first.fullName.length;
    print('Longest Name Length: $nameLength');
    return member.first;
  }

  print(findLongestName(allmembers).fullName);

  print('==Section 11==\n');

  print('==Before==\n');
  printAllMembers(allmembers);

  print('\n==Same Horoscope==\n');

  List<NeonAcademyMember> findSameHoroscope(
    List<NeonAcademyMember> members,
    String horoscope,
  ) {
    List<NeonAcademyMember> newList = [];

    for (var member in members) {
      if (member.horoscope.toLowerCase() == horoscope.toLowerCase()) {
        newList.add(member);
      }
    }

    return newList;
  }

  printAllMembers(findSameHoroscope(allmembers, 'Libra'));

  print('==Section 12==\n');

  print('==Before==\n');
  printAllMembers(allmembers);

  print('\n==Most Common Hometown==\n');

  String findCommonHouseTown(List<NeonAcademyMember> members) {
    Map<String, int> homeTownCount = {};

    for (var member in members) {
      homeTownCount.update(
        member.homeTown,
        (value) => value + 1,
        ifAbsent: () => 1,
      );
    }

    String commonHomeTown = '';
    int maxCount = 0;

    homeTownCount.forEach((key, value) {
      if (value > maxCount) {
        maxCount = value;
        commonHomeTown = key;
      }
    });

    return commonHomeTown;
  }

  print(findCommonHouseTown(allmembers));

  print('==Section 13==\n');
  print('\n==Average Age==\n');

  int averageAge(List<NeonAcademyMember> members) {
    int totalAge = 0;

    for (var member in members) {
      totalAge += member.age;
    }

    return (totalAge / members.length).round();
  }

  print('Average Age: ${averageAge(members)}');

  print('==Section 14==\n');
  print('\n==All Contact infos Age==\n');

  List<ContactInformation> getAllContactInformations() {
    List<NeonAcademyMember> members = getAllMembers();
    List<ContactInformation> contactInformations = [];

    for (var member in members) {
      contactInformations.add(member.contactInformation);
    }

    for (final member in contactInformations) {
      print('Email: ${member.email}');
    }

    return contactInformations;
  }

  getAllContactInformations();

  print('==Section 15==\n');

  print('==Before==\n');
  printAllMembers(allmembers);

  print('\n==After==\n');

  List<NeonAcademyMember> sortForMemberLevel(List<NeonAcademyMember> members) {
    List<NeonAcademyMember> newList = members;

    newList.sort((a, b) => b.memberLevel.compareTo(a.memberLevel));

    return newList;
  }

  var sortedLevels = sortForMemberLevel(allmembers);
  printAllMembers(sortedLevels);

  print('==Section 16==\n');

  print('==Before==\n');
  printAllMembers(allmembers);

  print('\n==After==\n');

  void getAllSameTitleContactInformations(
    List<NeonAcademyMember> members,
    String title,
  ) {
    List<ContactInformation> contactInformations = [];

    for (var member in members) {
      if (member.title.toLowerCase() == title.toLowerCase()) {
        contactInformations.add(member.contactInformation);
      }
    }

    for (var member in contactInformations) {
      print(member.phoneNumber);
    }
  }

  getAllSameTitleContactInformations(allmembers, 'Flutter Developer');
}
