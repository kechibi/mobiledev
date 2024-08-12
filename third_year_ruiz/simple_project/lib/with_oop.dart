import 'dart:async';
import 'dart:io';

class Task {
  String name;
  bool isCompleted;

  Task({ required this.name, this.isCompleted = false});

  @override
  String toString() {
    return isCompleted ? '$name (completed)' : name;
  }
  }

class TodoService {
List<Task> tasks = [];

void addTask(String tasks){
  print('Enter the task:');
  var task = stdin.readLineSync();
  if (task != null && task.isNotEmpty){
    tasks.add(task);
    print('Task added.');
  } else {
    print('Invalid task. Please try again.');
  }
}

void viewTask(List<String>tasks){
  if (tasks.isEmpty) {
    print('No tasks available.');
    for (int i = 0; i < tasks.length; i++) {
      print('${i + 1}. ${tasks[i]}');
    }
  }
}

void markTaskAsCompleted(List<String> tasks) {
if(tasks.isEmpty) {
  print('No tasks Available.');
} else {
  print('Enter the task nummber to mark as completed:');
  String? input = stdin.readLineSync();
  int? taskNumber = int.tryParse(input ?? '');

  if(taskNumber != null && taskNumber > 0 && taskNumber <= tasks.length) {
    tasks[taskNumber - 1] += '(completed)';
    print('Task marked as completed.');
  } else {
    print('Ivalid task number, please try again.');
  }
}
}

void deleteTask(List<String> tasks) {
  if (tasks.isEmpty) {
    print('No tasks available.');
  } else {
    print('Enter the task number to delete:');
    String? input = stdin.readLineSync();
    int? taskNumber = int.tryParse(input ?? '');

    if (taskNumber != null && taskNumber > 0 && taskNumber > 0 && taskNumber <= tasks.length){
      tasks.removeAt(taskNumber - 1);
      print('Task Deleted.');
  } else {
      print('Invalid task number. Please try again.');
  }
  }
}
}
