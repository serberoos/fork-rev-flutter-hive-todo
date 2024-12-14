import 'package:flutter_hive_todo/domain/model/todo_domain.dart';
import 'package:flutter_hive_todo/domain/repository/todo_repository.dart';

class AddTodoUseCase {
  final TodoRepository repository;
  AddTodoUseCase(this.repository);

  void execute(TodoDomain todoDomain) {
    return repository.addTodo(todoDomain);
  }
}
