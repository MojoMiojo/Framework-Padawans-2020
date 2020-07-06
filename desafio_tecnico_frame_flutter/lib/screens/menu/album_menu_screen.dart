import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:desafio_tecnico_frame_flutter/controllers/album_controller.dart';
import 'package:desafio_tecnico_frame_flutter/model/album_model.dart';
import 'package:desafio_tecnico_frame_flutter/screens/widgets/loading_widget.dart';
class AlbumMenuScreen extends StatelessWidget {

  final _albumController = AlbumController();

  @override
  Widget build(BuildContext context) {
  _albumController.buscarAlbuns();
    return Scaffold(
      backgroundColor: Colors.purple.withOpacity(0.1),
      appBar: _retornaAppBar(),
      body: Observer(
        builder: (_) => _albumController.albumState == EstadoAlbum.LOADING ? LoadingWidget() :
        _retornaBody(context),
      ),
    );
  }

  Widget _retornaAppBar(){
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 1,
      title: Text('Albuns',
          style: TextStyle(
            color: Colors.purple,
          )),
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
                    children: _albumController.listAlbums.map((albuns) {
                      return _cardInfo(context, albuns);
                    }).toList(),
                  ),
                ),
          ),
        ]
    );
  }

  Widget _cardInfo(BuildContext context, AlbumModel album){
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
                                text: '${album.userId}',
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
                              text: 'Album Nº: ',
                              style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              children:[
                                TextSpan(
                                    text: '${album.id}',
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
                            text: '${album.title}',
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



