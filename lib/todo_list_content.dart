
class Todo
{
  String? id;
  String? todoText;
  bool isDone;

  Todo ({
    required this.id,
    required this.todoText,
    this.isDone =false,
});

  static List<Todo> todoList(){
    return [
      Todo(id: '01', todoText:'Whatsapp' ,),
      Todo(id: '02', todoText: 'Telegram', isDone: true),
      Todo(id: '03', todoText: 'Facebook', isDone: true),
      Todo(id: '04', todoText: 'Instagram', isDone: true),
      Todo(id: '05', todoText: 'Snap', isDone: true),
      Todo(id: '06', todoText: 'Youtube', ),
    ];
  }
}

