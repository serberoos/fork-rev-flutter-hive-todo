import 'package:flutter_hive_todo/domain/model/todo_domain.dart';
import 'package:flutter_hive_todo/domain/repository/todo_repository.dart';

class ToggleCompleteTodoUseCase {
  final TodoRepository repository;
  ToggleCompleteTodoUseCase(this.repository);

  void execute(TodoDomain todoDomain) {
    return repository.toggleCompleteTodo(todoDomain);
  }
}
