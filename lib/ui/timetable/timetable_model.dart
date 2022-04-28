import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minimum_hope/model/data/timetable_data.dart';
import 'package:minimum_hope/model/repository/myApi.dart';

class TimeTableDataNotifier extends StateNotifier<TimeTableData> {
  TimeTableDataNotifier() : super(const TimeTableData());
  Future<void> fetchTimeTableData() async {
    final rawData = await funApi.getTasks();
    final jsonString = json.encode({"timeTable": rawData});
    state = TimeTableData.fromJson(json.decode(jsonString));
  }
}

final timeTableDataProvider = Provider((ref) => TimeTableDataNotifier());
