class ToDo{
  String? id;
  String ? todoText;
  bool isDone;
  ToDo({
  required this.id,
   required this.todoText,
    this.isDone=false,
  });
  static List<ToDo>todoList(){
    return [
      ToDo(id: '01', todoText: "Morning exercise",isDone:true),
      ToDo(id: '02', todoText: "Buy gloceries",isDone:true),
      ToDo(id: '03', todoText: "Check emails"),
      ToDo(id: '04', todoText: "Team meeting"),
      ToDo(id: '05', todoText: "develop flutter app for 10 hours"),
      ToDo(id: '06', todoText: "develop surafel app",isDone: true),
    ];
  }
}