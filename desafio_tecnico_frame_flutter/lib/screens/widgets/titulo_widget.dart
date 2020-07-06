import 'package:flutter/material.dart';

class TituloWidget extends StatefulWidget {

  final String titulo;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;

  TituloWidget({this.titulo,
                this.color,
                this.fontWeight,
                this.fontSize});

  @override
  _TituloWidgetState createState() => _TituloWidgetState();
}

class _TituloWidgetState extends State<TituloWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 16),
            child: Text(
              this.widget.titulo,
              style: TextStyle(
                  color: this.widget.color,
                  fontWeight: this.widget.fontWeight,
                  fontSize: this.widget.fontSize
              ),
            ),
          ),
          Divider(
            thickness: 1,
          )
        ],
      ),
    );
  }
}
