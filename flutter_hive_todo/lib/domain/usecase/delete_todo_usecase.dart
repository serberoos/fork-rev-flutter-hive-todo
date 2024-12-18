import 'package:flutter_hive_todo/domain/model/todo_domain.dart';
import 'package:flutter_hive_todo/domain/repository/todo_repository.dart';

class DeleteTodoUseCase {
  final TodoRepository repository;
  DeleteTodoUseCase(this.repository);

  void execute(int id) {
    return repository.deleteTodo(id);
  }
}
