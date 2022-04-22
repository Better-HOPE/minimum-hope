import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Root extends HookConsumerWidget {
  Root({Key? key}) : super(key: key);

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

  final indexState = useState(0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleTexts[indexState.value]),
      ),
      body: const Center(
        child: Text('Root'),
      ),
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
