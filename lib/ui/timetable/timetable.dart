import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minimum_hope/ui/timetable/timetable_model.dart';

class TimeTable extends HookConsumerWidget {
  const TimeTable({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeTableProvider = ref.watch(timeTableDataProvider);
    final timeTableData = timeTableProvider.state.timeTable;
    useEffect(() {
      if (timeTableData.isEmpty) {
        timeTableProvider.fetchTimeTableData();
      }
    }, [timeTableData]);

    return Scaffold(
      body: Table(
        children: [
          TableRow(
            children: const [
              Text('Mon'),
              Text('Tue'),
              Text('Wed'),
              Text('Thu'),
              Text('Fri'),
            ],
          ),
        ],
      ),
    );
  }
}
