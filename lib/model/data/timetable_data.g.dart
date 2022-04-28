// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseData _$$_CourseDataFromJson(Map<String, dynamic> json) =>
    _$_CourseData(
      url: json['url'] as String? ?? "",
      jpName: json['科目名'] as String? ?? "",
      enName: json['英語名'] as String? ?? "",
    );

Map<String, dynamic> _$$_CourseDataToJson(_$_CourseData instance) =>
    <String, dynamic>{
      'url': instance.url,
      '科目名': instance.jpName,
      '英語名': instance.enName,
    };

_$_TimeTableData _$$_TimeTableDataFromJson(Map<String, dynamic> json) =>
    _$_TimeTableData(
      timeTable: (json['timeTable'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => (e as List<dynamic>)
                      .map(
                          (e) => CourseData.fromJson(e as Map<String, dynamic>))
                      .toList())
                  .toList())
              .toList() ??
          const [[]],
    );

Map<String, dynamic> _$$_TimeTableDataToJson(_$_TimeTableData instance) =>
    <String, dynamic>{
      'timeTable': instance.timeTable,
    };
