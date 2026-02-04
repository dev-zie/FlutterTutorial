import 'members_data.dart';
import 'team.dart';

void main() {
  var allmembers = getAllMembers();

  var members = getAllMembers();
  printAlMembers(members);

  print('\nThird Person Deleted\n');

  var removedThirdList = removeThird(members);
  printAlMembers(removedThirdList);

  print('\n==Sorted By Ages==\n');

  var ageSortedMembers = sortAges(members);
  printAlMembers(ageSortedMembers);

  print('\n==Sorted By Names==\n');

  var sortedByName = sortNames(members);
  printAlMembers(sortedByName);

  print('\n==Older Than 24==\n');
  var olderThanTF = filterOlderThanTF(members);
  printAlMembers(olderThanTF);

  var IOSDeveloperCount = IOSDeveloperCounter(members);
  print('\nIos Developer Count : ${IOSDeveloperCount}\n');

  var myIndex = findMyIndex(allmembers);
  print('My Index is: ${myIndex + 1}');

  print('\n==Mentors==\n');
  var mentors = findMentors(members);
  printAlMembers(mentors);

  print('\n==Deleted A1 Members==\n');
  var deletedMembers = deleteSpesificMembers(members, 'A1');
  printAlMembers(deletedMembers);

  print('\n==Oldest Person==\n');
  var oldestPerson = findOlder(members);
  print(oldestPerson.fullName);

  print('\n==Longest Name==\n');
  var longestNamePerson = findLongestName(members);
  print(longestNamePerson.fullName);

  print('\n==Same Horoscope==\n');
  var sameHoroscopeMembers = findSameHoroscope(allmembers, 'Libra');
  printAlMembers(sameHoroscopeMembers);

  print('\n==Most Common Home Town==\n');
  var commonHomeTown = findCommonHouseTown(allmembers);
  print(commonHomeTown + ' ' + commonHomeTown.length.toString());

  print('\n==Average Age==\n');
  print(averageAge(allmembers).toString());

  print('\n==All Mails==\n');
  getAllContactInformations();

  print('\n==Sorted By Member Level==\n');
  var sortedByMemberLevel = sortForMemberLevel(allmembers);
  printAlMembers(sortedByMemberLevel);

  print('\n==Same Title Contact Informations==\n');
  var sameTitleContacts = getAllSameTitleContactInformations(
    allmembers,
    'Flutter Developer',
  );
  for (var contact in sameTitleContacts) {
    print('Phone: ${contact.phoneNumber}');
  }

  print('\n==Flutter Development Team==\n');
  var flutterDevelopmentTeam = getTeamMembers(
    allmembers,
    Team.FLUTTERDEVELOPMENTTEAM,
  );
  printAlMembers(flutterDevelopmentTeam);

  print('\n==Team Members==\n');

  var teamCounts = getTeamCounts(allmembers);
  print('Total UI/UX Members :  ${teamCounts['UI_UXDESIGNTEAM'] ?? 0}');

  getTeamMembersCount(allmembers, Team.FLUTTERDEVELOPMENTTEAM);

  print('\n====\n');

  describeMemberTeam(allmembers, 'Remzican');

  print('====');
  olderThan(allmembers, 21);

  print('====');
  promoteMember(allmembers, 'Remzican');

  print('====');
  var avgTeamMembersAge = averageAgeTeamMembers(
    members,
    Team.FLUTTERDEVELOPMENTTEAM,
  );

  print('This Team Members` Average Age: ${avgTeamMembersAge}');

  print('====');

  describeTeam(Team.FLUTTERDEVELOPMENTTEAM);

  print('====');
  getThistTeamContacts(allmembers, Team.FLUTTERDEVELOPMENTTEAM);

  print('====');
  describeMemberByTeamAndAge(allmembers);
}
