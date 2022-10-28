import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = Faker();
  String angka = (100 + Random().nextInt(900)).toString();
  // const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Extrak WIdget"),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              DaftarNama(
                imageUrl: 'https://picsum.photos/id/2/200/300',
                nama: faker.person.name(),
                desc: faker.lorem.sentence(),
              ),
              DaftarNama(
                imageUrl: 'https://picsum.photos/id/3/200/300',
                nama: faker.person.name(),
                desc: faker.lorem.sentence(),
              ),
              DaftarNama(
                imageUrl: 'https://picsum.photos/id/4/200/300',
                nama: faker.person.name(),
                desc: faker.lorem.sentence(),
              ),
              DaftarNama(
                imageUrl: 'https://picsum.photos/id/5/200/300',
                nama: faker.person.name(),
                desc: faker.lorem.sentence(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DaftarNama extends StatelessWidget {
  final String imageUrl;
  final String nama;
  final String desc;

  DaftarNama({required this.imageUrl, required this.nama, required this.desc});
  // DaftarNama({required this.imageUrl, required this.nama, required this.desc});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(nama),
      subtitle: Text(desc),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: Text('10:10:10'),
    );
  }
}
