import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = Faker();
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
              DaftarNama(),
              Divider(),
              DaftarNama(),
            ],
          ),
        ),
      ),
    );
  }
}

class DaftarNama extends StatelessWidget {
  const DaftarNama({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(faker.internet.email()),
      subtitle: Text(faker.lorem.sentence()),
      leading: CircleAvatar(),
      trailing: Text('10:10:10'),
    );
  }
}
