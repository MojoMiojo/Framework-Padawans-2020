import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:desafio_tecnico_frame_flutter/controllers/postagem_controller.dart';
import 'package:desafio_tecnico_frame_flutter/model/postagem_model.dart';
import 'package:desafio_tecnico_frame_flutter/screens/widgets/loading_widget.dart';
import 'package:desafio_tecnico_frame_flutter/screens/widgets/titulo_widget.dart';
class PostagemMenuScreen extends StatelessWidget {

  final _postagemController = PostagemController();

//  TituloWidget(
//  titulo: 'Postagens',
//  color: Colors.purple,
//  fontSize: 16,
//  fontWeight: FontWeight.bold,
//  ),

  @override
  Widget build(BuildContext context) {
    _postagemController.buscarPostagens();
    return Scaffold(
      backgroundColor: Colors.purple.withOpacity(0.1),
      appBar: _retornaAppBar(),
        body: Observer(
          builder: (_) => _postagemController.postagemState == EstadoPostagem.ESTAVEL ?
          _retornaBody(context) : LoadingWidget(),
        )
    );
  }

  Widget _retornaAppBar(){
    return AppBar(
      centerTitle: true,
      title: Text('Postagens',
          style: TextStyle(
              color: Colors.purple
          )),
      backgroundColor: Colors.white,
      elevation: 1,
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
                    children: _postagemController.listPostagens.map((posts) {
                      return _cardInfo(context, posts);
                    }).toList(),
                  ),
                ),
          ),
        ]
    );
  }

  Widget _cardInfo(BuildContext context, PostagemModel postagem){
    return Container(
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.all(
            Radius.circular(8)
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
                              text: '${postagem.userId}',
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
                            text: 'Post Nº: ',
                            style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            children:[
                              TextSpan(
                                  text: '${postagem.id}',
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
                          text: '${postagem.title}',
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
              SizedBox(
                height: 6,
              ),
              Container(
                child: RichText(
                  text: TextSpan(
                      text: 'Postagem: ',
                      style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      children:[
                        TextSpan(
                          text: '${postagem.body}',
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
            ]
        ),
      )
    );
  }

}
