// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postagem_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PostagemController on _PostagemController, Store {
  final _$listPostagensAtom = Atom(name: '_PostagemController.listPostagens');

  @override
  List<PostagemModel> get listPostagens {
    _$listPostagensAtom.reportRead();
    return super.listPostagens;
  }

  @override
  set listPostagens(List<PostagemModel> value) {
    _$listPostagensAtom.reportWrite(value, super.listPostagens, () {
      super.listPostagens = value;
    });
  }

  final _$postagemStateAtom = Atom(name: '_PostagemController.postagemState');

  @override
  EstadoPostagem get postagemState {
    _$postagemStateAtom.reportRead();
    return super.postagemState;
  }

  @override
  set postagemState(EstadoPostagem value) {
    _$postagemStateAtom.reportWrite(value, super.postagemState, () {
      super.postagemState = value;
    });
  }

  final _$_PostagemControllerActionController =
      ActionController(name: '_PostagemController');

  @override
  dynamic buscarPostagens() {
    final _$actionInfo = _$_PostagemControllerActionController.startAction(
        name: '_PostagemController.buscarPostagens');
    try {
      return super.buscarPostagens();
    } finally {
      _$_PostagemControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listPostagens: ${listPostagens},
postagemState: ${postagemState}
    ''';
  }
}
