
class SubtaskModel{
  final String dateTime;
  final String title;

//<editor-fold desc="Data Methods">
  const SubtaskModel({
    required this.dateTime,
    required this.title,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SubtaskModel &&
          runtimeType == other.runtimeType &&
          dateTime == other.dateTime &&
          title == other.title);

  @override
  int get hashCode => dateTime.hashCode ^ title.hashCode;

  @override
  String toString() {
    return 'SubtaskModel{' + ' dateTime: $dateTime,' + ' title: $title,' + '}';
  }

  SubtaskModel copyWith({
    String? dateTime,
    String? title,
  }) {
    return SubtaskModel(
      dateTime: dateTime ?? this.dateTime,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dateTime': this.dateTime,
      'title': this.title,
    };
  }

  factory SubtaskModel.fromMap(Map<String, dynamic> map) {
    return SubtaskModel(
      dateTime: map['dateTime'] as String,
      title: map['title'] as String,
    );
  }

//</editor-fold>
}

List<SubtaskModel> subtasksList = const [
  SubtaskModel(
      dateTime: 'Today',
      title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eu nulla in mi blandit sollicitudin in ut lacus.',
  ),
  SubtaskModel(
    dateTime: '3 Days',
    title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eu nulla in mi blandit sollicitudin in ut lacus.',
  ),
  SubtaskModel(
    dateTime: 'Week',
    title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eu nulla in mi blandit sollicitudin in ut lacus.',
  ),
  SubtaskModel(
    dateTime: 'Fortnight',
    title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eu nulla in mi blandit sollicitudin in ut lacus.',
  ),
  SubtaskModel(
    dateTime: 'Month',
    title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eu nulla in mi blandit sollicitudin in ut lacus.',
  ),
];