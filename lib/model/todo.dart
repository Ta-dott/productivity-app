// Model class for ToDo items
class ToDo {
  String? id;
  String? todoText;
  bool isDone;
  DateTime? dueDate;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
    this.dueDate,
  });

  // Static method to return a list of sample ToDo items
  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Morning Exercise', isDone: true, dueDate: DateTime.now().add(Duration(days: 1))),
      ToDo(id: '02', todoText: 'Buy Groceries', isDone: true, dueDate: DateTime.now().add(Duration(days: 2))),
      ToDo(id: '03', todoText: 'Check Emails', dueDate: DateTime.now().add(Duration(days: 3))),
      ToDo(id: '04', todoText: 'Team Meeting', dueDate: DateTime.now().add(Duration(days: 4))),
      ToDo(id: '05', todoText: 'Work on mobile apps for 2 hour', dueDate: DateTime.now().add(Duration(days: 5))),
      ToDo(id: '06', todoText: 'Dinner with Ali', dueDate: DateTime.now().add(Duration(days: 6))),
    ];
  }
}
