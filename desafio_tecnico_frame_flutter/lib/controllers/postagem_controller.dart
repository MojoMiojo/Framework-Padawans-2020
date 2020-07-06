import 'package:mobx/mobx.dart';
import 'package:desafio_tecnico_frame_flutter/model/postagem_model.dart';
import 'package:desafio_tecnico_frame_flutter/request/infra_request.dart';
part 'postagem_controller.g.dart';

class PostagemController = _PostagemController with _$PostagemController;

enum EstadoPostagem { ESTAVEL, LOADING }

abstract class _PostagemController with Store {


  final request = InfraRequest();
  
  @observable
  List<PostagemModel> listPostagens = [];

  @observable
  EstadoPostagem postagemState = EstadoPostagem.ESTAVEL;

  @action
  buscarPostagens(){

    postagemState = EstadoPostagem.LOADING;

    request.getPosts().then((response){

      var list = response as List;
      var postagens = list.map((e) => PostagemModel.fromJson(e)).toList();
      this.listPostagens = postagens;

      postagemState = EstadoPostagem.ESTAVEL;

    }).catchError((onError){
      print('O erro do método buscarPostagens => $onError');
      postagemState = EstadoPostagem.ESTAVEL;

    });

//    request.multipartFile("post").then((response) {
//      var list = response as List;
//      var postagens = list.map((i) => PostagemModel.fromJson(i)).toList();
//      this.listPostagens = postagens;
//
//    }).catchError((onError){
//      print(onError);
//    });
  }

}