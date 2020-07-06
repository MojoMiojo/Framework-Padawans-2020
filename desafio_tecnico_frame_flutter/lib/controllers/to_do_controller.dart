import 'package:mobx/mobx.dart';
import 'package:desafio_tecnico_frame_flutter/model/to_do_model.dart';
import 'package:desafio_tecnico_frame_flutter/request/infra_request.dart';
part 'to_do_controller.g.dart';

class ToDoController = _ToDoController with _$ToDoController;

enum EstadoToDo { ESTAVEL, LOADING }

abstract class _ToDoController with Store {

  final request = InfraRequest();

  @observable
  List<ToDoModel> tarefas = [];

  @observable
  EstadoToDo toDoState = EstadoToDo.ESTAVEL;

  @action
  buscaToDos(){

    toDoState = EstadoToDo.LOADING;

    request.getToDos().then((response){

      var list = response as List;
      var guardaTarefas = list.map((e) => ToDoModel.fromJson(e)).toList();
      this.tarefas = guardaTarefas;
     toDoState = EstadoToDo.ESTAVEL;

    }).catchError((onError){
      print('O erro do método buscaToDos é => $onError');
      toDoState = EstadoToDo.ESTAVEL;
    });

  }

}