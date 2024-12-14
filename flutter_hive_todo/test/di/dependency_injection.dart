import 'package:flutter_hive_todo/app/bloc/todo_bloc.dart';
import 'package:flutter_hive_todo/data/datasource/crud_datasource.dart';
import 'package:flutter_hive_todo/data/repository_impl/todo_repository_impl.dart';
import 'package:flutter_hive_todo/domain/repository/todo_repository.dart';
import 'package:flutter_hive_todo/domain/usecase/add_todo_usecase.dart';
import 'package:flutter_hive_todo/domain/usecase/delete_todo_usecase.dart';
import 'package:flutter_hive_todo/domain/usecase/get_all_todo_usecase.dart';
import 'package:flutter_hive_todo/domain/usecase/toggle_complete_todo_usecase.dart';
import 'package:flutter_hive_todo/domain/usecase/undo_deleted_todo_usecase.dart';
import 'package:flutter_hive_todo/domain/usecase/update_todo_usecase.dart';
import '../mock/mock_database.dart';

//datasource
CRUDDataSource provideCRUDDataSource() => MockDatabase();

//repository
TodoRepository provideTodoRepository() =>
    TodoRepositoryImpl(provideCRUDDataSource());

//use case
GetAllTodoUseCase provideGetAllTodoUseCase() =>
    GetAllTodoUseCase(provideTodoRepository());
AddTodoUseCase provideAddTodoUseCase() =>
    AddTodoUseCase(provideTodoRepository());
UpdateTodoUseCase provideUpdateTodoUseCase() =>
    UpdateTodoUseCase(provideTodoRepository());
ToggleCompleteTodoUseCase provideToggleCompleteTodoUseCase() =>
    ToggleCompleteTodoUseCase(provideTodoRepository());
DeleteTodoUseCase provideDeleteTodoUseCase() =>
    DeleteTodoUseCase(provideTodoRepository());
UndoDeletedTodoUseCase provideUndoDeletedTodoUseCase() =>
    UndoDeletedTodoUseCase(provideTodoRepository());

//bloc
TodoBloc provideTodoBloc() => TodoBloc(
    getAllTodoUseCase: provideGetAllTodoUseCase(),
    addTodoUseCase: provideAddTodoUseCase(),
    updateTodoUseCase: provideUpdateTodoUseCase(),
    toggleCompleteTodoUseCase: provideToggleCompleteTodoUseCase(),
    deleteTodoUseCase: provideDeleteTodoUseCase(),
    undoDeletedTodoUseCase: provideUndoDeletedTodoUseCase());
