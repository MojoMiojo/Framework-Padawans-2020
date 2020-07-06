import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:desafio_tecnico_frame_flutter/controllers/to_do_controller.dart';
import 'package:desafio_tecnico_frame_flutter/model/to_do_model.dart';
import 'package:desafio_tecnico_frame_flutter/screens/widgets/loading_widget.dart';
class ToDoMenuScreen extends StatelessWidget {
  
  final _toDoController = ToDoController();
  
  @override
  Widget build(BuildContext context) {
    _toDoController.buscaToDos();
    return Scaffold(
      backgroundColor: Colors.purple.withOpacity(0.1),
      appBar: _retornaAppBar(),
      body: Observer(
        builder: (_) => _toDoController.toDoState == EstadoToDo.LOADING ? LoadingWidget() :
        _retornaBody(context),
      )
     );
  }

  Widget _retornaBody(BuildContext context){
    return ListView(
        children: <Widget>[
          Observer(
            builder: (_) =>
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _toDoController.tarefas.map((tarefas) {
                      return _cardInfo(context, tarefas);
                    }).toList(),
                  ),
                ),
          ),
        ]
    );
  }


  Widget _cardInfo(BuildContext context, ToDoModel toDo){
    return Container(
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.all(
            Radius.circular(12)
          ),
        ),
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                          text: 'ID Usuário: ',
                          style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          children:[
                            TextSpan(
                                text: '${toDo.userId}',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14
                                )
                            )
                          ]
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                              text: 'Nº Tarefa: ',
                              style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              children:[
                                TextSpan(
                                    text: '${toDo.id}',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14
                                    )
                                )
                              ]
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  child: RichText(
                    text: TextSpan(
                        text: 'Título: ',
                        style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        children:[
                          TextSpan(
                            text: '${toDo.title}',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Container(
                  child: RichText(
                    text: TextSpan(
                        text: 'Status: ',
                        style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        children:[
                          toDo.completed == true ?
                          TextSpan(
                            text: 'Finalizada',
                            style: TextStyle(
                                color: Colors.greenAccent,
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            ),
                          ) : TextSpan(
                              text: 'Pendente',
                              style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              )
                          )
                        ]
                    ),
                  ),
                ),
              ]
          ),
        )
    );
  }

  Widget _retornaAppBar(){
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 1,
      title: Text('Tarefas',
          style: TextStyle(
            color: Colors.purple,
          )),
    );
  }

}