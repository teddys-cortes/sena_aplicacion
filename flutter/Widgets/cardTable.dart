import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sena_aplicacion/modelos/area.dart';
import 'package:http/http.dart' as http;

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   listaAreas();
    return Table(
      children: [
        TableRow(children: [
          InkWell(
            child: _SigleCard(
                color: Colors.blue,
                img: Image(
                  image: NetworkImage(
                      'https://avatars.githubusercontent.com/u/109951?s=400&v=4'),
                ),
                text: 'Salud'),
            onTap: () {
              print("teddys");
            },
          ),
          InkWell(
            child: _SigleCard(
                color: Colors.pinkAccent,
                img: Image(
                  image: NetworkImage(
                      'https://avatars.githubusercontent.com/u/109951?s=400&v=4'),
                ),
                text: 'Informática'),
            onTap: () {
              print("Click event on Container");
            },
          ),
        ]),
        TableRow(children: [
          InkWell(
            child: _SigleCard(
                color: Colors.purple,
                img: Image(
                  image: NetworkImage(
                      'https://avatars.githubusercontent.com/u/109951?s=400&v=4'),
                ),
                text: 'Diseño y animación'),
            onTap: () {
              print("Click event on Container");
            },
          ),
          InkWell(
            child: _SigleCard(
                color: Colors.purpleAccent,
                img: Image(
                  image: NetworkImage(
                      'https://avatars.githubusercontent.com/u/109951?s=400&v=4'),
                ),
                text: 'Dibujo'),
            onTap: () {
              print("Click event on Container");
            },
          ),
        ]),
        TableRow(children: [
          InkWell(
            child: _SigleCard(
                color: Colors.deepPurple,
                img: Image(
                  image: NetworkImage(
                      'https://avatars.githubusercontent.com/u/109951?s=400&v=4'),
                ),
                text: 'Industria'),
            onTap: () {
              print("Click event on Container");
            },
          ),
          InkWell(
            child: _SigleCard(
                color: Colors.pinkAccent,
                img: Image(
                  image: NetworkImage(
                      'https://avatars.githubusercontent.com/u/109951?s=400&v=4'),
                ),
                text: 'Carpintería'),
            onTap: () {
              print("Click event on Container");
            },
          ),
        ]),
        TableRow(children: [
          InkWell(
            child: _SigleCard(
                color: Colors.blue,
                img: Image(
                  image: NetworkImage(
                      'https://avatars.githubusercontent.com/u/109951?s=400&v=4'),
                ),
                text: 'Comercio y Finanzas'),
            onTap: () {
              print("Click event on Container");
            },
          ),
          InkWell(
            child: _SigleCard(
                color: Colors.pinkAccent,
                img: Image(
                  image: NetworkImage(
                      'https://avatars.githubusercontent.com/u/109951?s=400&v=4'),
                ),
                text: 'Educacion'),
            onTap: () {
              print("Click event on Container");
            },
          ),
        ]),
        TableRow(children: [
          InkWell(
            child: _SigleCard(
                color: Colors.blue,
                img: Image(
                  image: NetworkImage(
                      'https://avatars.githubusercontent.com/u/109951?s=400&v=4'),
                ),
                text: 'Cocina'),
            onTap: () {
              print("Click event on Container");
            },
          ),
          InkWell(
            child: _SigleCard(
                color: Colors.pinkAccent,
                img: Image(
                  image: NetworkImage(
                      'https://avatars.githubusercontent.com/u/109951?s=400&v=4'),
                ),
                text: 'construcción'),
            onTap: () {
              print("Click event on Container");
            },
          ),
        ]),
        TableRow(children: [
          InkWell(
            child: _SigleCard(
                color: Colors.blue,
                img: Image(
                  image: NetworkImage(
                      'https://avatars.githubusercontent.com/u/109951?s=400&v=4'),
                ),
                text: 'Mercadeo'),
            onTap: () {
              print("Click event on Container");
            },
          ),
          InkWell(
            child: _SigleCard(
                color: Colors.pinkAccent,
                img: Image(
                  image: NetworkImage(
                      'https://avatars.githubusercontent.com/u/109951?s=400&v=4'),
                ),
                text: 'Trasporte'),
            onTap: () {
              print("Click event on Container");
            },
          ),
        ]),
      ],
    );
  }

  Future<void> listaAreas() async {
  final uri = Uri.parse('https://reqres.in/api/users?page=2');
  final respuesta = await http.get(uri);
  print('resp=> ${respuesta.body}');

}
}

class _SigleCard extends StatelessWidget {
  final Image img;
  final Color color;
  final String text;

  const _SigleCard(
      {Key? key, required this.color, required this.text, required this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: this.color,
          child: this.img,
          radius: 30,
        ),
        SizedBox(height: 10),
        Text(
          this.text,
          style:
              TextStyle(color: Color.fromRGBO(35, 130, 118, 5), fontSize: 18),
        )
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}