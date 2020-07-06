import 'package:mobx/mobx.dart';
import 'package:desafio_tecnico_frame_flutter/model/album_model.dart';
import 'package:desafio_tecnico_frame_flutter/request/infra_request.dart';
part 'album_controller.g.dart';

class AlbumController = _AlbumController with _$AlbumController;

enum EstadoAlbum { ESTAVEL, LOADING }

abstract class _AlbumController with Store {

  final request = InfraRequest();

  @observable
  List<AlbumModel> listAlbums = [];

  @observable
  EstadoAlbum albumState = EstadoAlbum.ESTAVEL;

  @action
  buscarAlbuns(){

    albumState = EstadoAlbum.LOADING;

  this.request.getAlbums().then((response){

    var list = response as List;
    var albuns = list.map((e) => AlbumModel.fromJson(e)).toList();
    this.listAlbums = albuns;

    albumState = EstadoAlbum.ESTAVEL;

  }).catchError((onError){
    print('O errodo do método buscarAlbuns é => $onError');
    albumState = EstadoAlbum.ESTAVEL;

  });

  }

}