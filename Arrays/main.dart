import 'members_data.dart';

void main() {
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

  var myIndex = findMyIndex(members);
  print('My Index is: ${myIndex + 1}');

  print('\n==Oldest Person==\n');
  var oldestPerson = findOlder(members);
  print(oldestPerson.fullName);
}
