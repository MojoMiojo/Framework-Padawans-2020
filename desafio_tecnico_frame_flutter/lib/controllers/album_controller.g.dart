// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AlbumController on _AlbumController, Store {
  final _$listAlbumsAtom = Atom(name: '_AlbumController.listAlbums');

  @override
  List<AlbumModel> get listAlbums {
    _$listAlbumsAtom.reportRead();
    return super.listAlbums;
  }

  @override
  set listAlbums(List<AlbumModel> value) {
    _$listAlbumsAtom.reportWrite(value, super.listAlbums, () {
      super.listAlbums = value;
    });
  }

  final _$albumStateAtom = Atom(name: '_AlbumController.albumState');

  @override
  EstadoAlbum get albumState {
    _$albumStateAtom.reportRead();
    return super.albumState;
  }

  @override
  set albumState(EstadoAlbum value) {
    _$albumStateAtom.reportWrite(value, super.albumState, () {
      super.albumState = value;
    });
  }

  final _$_AlbumControllerActionController =
      ActionController(name: '_AlbumController');

  @override
  dynamic buscarAlbuns() {
    final _$actionInfo = _$_AlbumControllerActionController.startAction(
        name: '_AlbumController.buscarAlbuns');
    try {
      return super.buscarAlbuns();
    } finally {
      _$_AlbumControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listAlbums: ${listAlbums},
albumState: ${albumState}
    ''';
  }
}
