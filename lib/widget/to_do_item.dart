import 'package:flutter/material.dart';
import 'package:to_do/constants/colors.dart';
import 'package:to_do/model/to_do.dart';

class ToDoItem extends StatelessWidget {
final ToDo todo;
final onToDoChanged;
final onDeleteItem;
const ToDoItem({ Key? key, required this.todo,required this.onToDoChanged, required this.onDeleteItem }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
       margin:EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap:(){
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        leading:todo.isDone? Icon(Icons.check_box,color: tdBlue,): Icon(Icons.check_box_outline_blank_outlined),
        title: Text(todo.todoText!,
        style: TextStyle(
          fontSize: 16,
          color: tdBlack,
          decoration: todo.isDone? TextDecoration.lineThrough:TextDecoration.none
        ),
    
        ),
        trailing: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5)
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: (){
             onDeleteItem(todo.id);
            },
          ),
        ),

      ),
    );
  }
}