import 'package:task_sample_app/utils/constants/assets_manager.dart';

class TaskModel{
  final String noTasks;
  final String name;
  final String iconPath;

//<editor-fold desc="Data Methods">
  const TaskModel({
    required this.noTasks,
    required this.name,
    required this.iconPath,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TaskModel &&
          runtimeType == other.runtimeType &&
          noTasks == other.noTasks &&
          name == other.name &&
          iconPath == other.iconPath);

  @override
  int get hashCode => noTasks.hashCode ^ name.hashCode ^ iconPath.hashCode;

  @override
  String toString() {
    return 'TaskModel{' +
        ' noTasks: $noTasks,' +
        ' name: $name,' +
        ' iconPath: $iconPath,' +
        '}';
  }

  TaskModel copyWith({
    String? noTasks,
    String? name,
    String? iconPath,
  }) {
    return TaskModel(
      noTasks: noTasks ?? this.noTasks,
      name: name ?? this.name,
      iconPath: iconPath ?? this.iconPath,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'noTasks': this.noTasks,
      'name': this.name,
      'iconPath': this.iconPath,
    };
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      noTasks: map['noTasks'] as String,
      name: map['name'] as String,
      iconPath: map['iconPath'] as String,
    );
  }

//</editor-fold>
}

List<TaskModel> tasksList = const [
  TaskModel(noTasks: '6', name: 'Assignments', iconPath: AppAssets.tasksIcon),
  TaskModel(noTasks: '1', name: 'Cooking', iconPath: AppAssets.cookingIcon),
  TaskModel(noTasks: '2', name: 'Cleaning', iconPath: AppAssets.cleaningIcon),
  TaskModel(noTasks: '6', name: 'Homework', iconPath: AppAssets.homeTaskIcon),
  TaskModel(noTasks: '3', name: 'Book Read', iconPath: AppAssets.booksIcon),
];


