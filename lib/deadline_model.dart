import 'package:hive/hive.dart';

part 'deadline_model.g.dart';

@HiveType(typeId: 0)
class DeadlineModel {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String note;
  @HiveField(2)
  final String start;
  @HiveField(3)
  final String end;
  @HiveField(4)
  final bool isCompleted;

  DeadlineModel(
      {required this.title,
      required this.note,
      required this.start,
      required this.end,
      required this.isCompleted});
}
