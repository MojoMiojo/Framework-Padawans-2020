// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_do_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ToDoController on _ToDoController, Store {
  final _$tarefasAtom = Atom(name: '_ToDoController.tarefas');

  @override
  List<ToDoModel> get tarefas {
    _$tarefasAtom.reportRead();
    return super.tarefas;
  }

  @override
  set tarefas(List<ToDoModel> value) {
    _$tarefasAtom.reportWrite(value, super.tarefas, () {
      super.tarefas = value;
    });
  }

  final _$toDoStateAtom = Atom(name: '_ToDoController.toDoState');

  @override
  EstadoToDo get toDoState {
    _$toDoStateAtom.reportRead();
    return super.toDoState;
  }

  @override
  set toDoState(EstadoToDo value) {
    _$toDoStateAtom.reportWrite(value, super.toDoState, () {
      super.toDoState = value;
    });
  }

  final _$_ToDoControllerActionController =
      ActionController(name: '_ToDoController');

  @override
  dynamic buscaToDos() {
    final _$actionInfo = _$_ToDoControllerActionController.startAction(
        name: '_ToDoController.buscaToDos');
    try {
      return super.buscaToDos();
    } finally {
      _$_ToDoControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tarefas: ${tarefas},
toDoState: ${toDoState}
    ''';
  }
}
