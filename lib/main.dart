import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: LAB_1(),
    ),
  );
}


class LAB_1 extends StatelessWidget {
  LAB_1({super.key});
  String fullSurname = '', fullName = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Збір даних',
        home: Scaffold(
            appBar: AppBar(title:Text('Збір даних'), backgroundColor: Colors.red,),
            body: Center(child: Column(children: <Widget>[
              Container(
                  margin: const EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Введіть Прізвище',
                    ),
                    onChanged: (text) {
                      fullSurname = text;
                    },
                  )),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Введіть ім'я",
                    ),
                    onChanged: (text) {
                      fullName = text;
                    },
                  )),
              Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => LogPage(fullSurname : fullSurname, fullName : fullName )));
                    },
                    child: const Text('Далі'),
                  )
              ),],
            ),
            )));
  }
}

class LogPage extends StatelessWidget {
  String fullSurname, fullName;
  LogPage({required this.fullSurname,required this.fullName});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Привітання',
      home: Scaffold(
        appBar: AppBar(title: Text('Привітання')),
        body:Center(
          child:Text(
            'Вітаю $fullSurname $fullName',
          ),
        ),
      ),
    );
  }
}