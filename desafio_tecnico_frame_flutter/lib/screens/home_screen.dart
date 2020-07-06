import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:desafio_tecnico_frame_flutter/controllers/menu_controller.dart';
import 'package:desafio_tecnico_frame_flutter/screens/menu/album_menu_screen.dart';
import 'package:desafio_tecnico_frame_flutter/screens/menu/postagem_menu_screen.dart';
import 'package:desafio_tecnico_frame_flutter/screens/menu/to_do_menu_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _menuController = GetIt.I<MenuController>();

  final List<Widget> _option = [
    PostagemMenuScreen(),
    AlbumMenuScreen(),
    ToDoMenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _returnAppBar(context),
      body: Observer(
        builder: (_) => _option[_menuController.menuIndex],
      ),
      bottomNavigationBar: _returnBottomNavigationBar(context, _menuController.menuIndex)
    );
  }


  //Widgets
  
  Widget _returnAppBar(BuildContext context){
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.purple,
      title: Text(
        "Framework Padawans 2020",
        style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Widget _returnBottomNavigationBar(BuildContext context, index){
    return Observer(
      builder: (_) => BottomNavigationBar(
        backgroundColor: Colors.purple,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.mail,
                color: this._menuController.menuIndex == 0 ? Colors.black : Colors.white,),
              title: Text("Postagem",
                style: TextStyle(
                    color: this._menuController.menuIndex == 0 ? Colors.black : Colors.white
                ),
              ),
              backgroundColor: Colors.purple
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.album,
                color: this._menuController.menuIndex == 1 ? Colors.black : Colors.white,),
              title: Text("Álbum",
                style: TextStyle(
                    color: this._menuController.menuIndex == 1 ? Colors.black : Colors.white
                ),
              ),
              backgroundColor: Colors.purple
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.playlist_add_check,
              color: this._menuController.menuIndex == 2 ? Colors.black : Colors.white,),
              title: Text("To do",
                style: TextStyle(
                    color: this._menuController.menuIndex == 2 ? Colors.black : Colors.white
                ),
              ),
              backgroundColor: Colors.purple
          ),

        ],
        currentIndex: index,
        onTap:(index){
          this._menuController.alterarMenuIndex(index);
        },
      ),
    );
}

}
