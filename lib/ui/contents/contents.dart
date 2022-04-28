import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minimum_hope/ui/tasks/tasks.dart';
import 'package:minimum_hope/ui/timetable/timetable.dart';

class Contents extends HookConsumerWidget {
  Contents({Key? key}) : super(key: key);

  static const List<String> titleTexts = [
    'Timetable',
    'Tasks',
    'Chats',
    'Settings'
  ];
  final bottomBarItems = [
    BottomNavigationBarItem(
      icon: const Icon(Icons.calendar_today),
      label: titleTexts[0],
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.list),
      label: titleTexts[1],
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.chat),
      label: titleTexts[2],
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.settings),
      label: titleTexts[3],
    ),
  ];
  final screens = [TimeTable(), Tasks(), Tasks(), Tasks()];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexState = useState(0);
    return Scaffold(
      appBar: AppBar(
        title: Text(titleTexts[indexState.value]),
      ),
      body: screens[indexState.value],
      bottomNavigationBar: BottomNavigationBar(
        items: bottomBarItems,
        currentIndex: indexState.value,
        onTap: (value) {
          indexState.value = value;
        },
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).shadowColor,
      ),
    );
  }
}
