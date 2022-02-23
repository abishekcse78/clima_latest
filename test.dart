void main() {
  performTasks();
}

void performTasks() async {
  task1();

  String task2Result = await task2();
  task25();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  late String result;
  Duration threeSeconds = const Duration(seconds: 3);

  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  print('Hai Bro');
  return result;
}

void task25() {
  String result = 'Bye Bro';
  print(result);
}

void task3(String task2result) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2result');
}
