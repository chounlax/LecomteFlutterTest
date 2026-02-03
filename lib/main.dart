import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _noteCGE = 0;
  int _noteAnglais = 0;
  int _noteMaths = 0;
  int _noteCEJM = 0;
  int _noteService = 0;
  int _noteDev = 0;
  int _noteCyber = 0;
  double _moyenne = 0;
  String _message = "";

  void _plusCGE() {
    setState(() {
      if (_noteCGE < 20) {
        _noteCGE++;
      }
    });
  }

  void _moinsCGE()  {
    setState(() {
      if (_noteCGE > 0) {
        _noteCGE--;
      }
    });
  }

  void _plusAnglais() {
    setState(() {
      if (_noteAnglais < 20) {
        _noteAnglais++;
      }
    });
  }

  void _moinsAnglais() {
    setState(() {
      if (_noteAnglais > 0) {
        _noteAnglais--;
      }
    });
  }

  void _plusMaths() {
    setState(() {
      if (_noteMaths < 20) {
        _noteMaths++;
      }
    });
  }

  void _moinsMaths() {
    setState(() {
      if (_noteMaths > 0) {
        _noteMaths--;
      }
    });
  }

  void _plusCEJM() {
    setState(() {
      if (_noteCEJM < 20) {
        _noteCEJM++;
      }
    });
  }

  void _moinsCEJM() {
    setState(() {
      if (_noteCEJM > 0) {
        _noteCEJM--;
      }
    });
  }

  void _plusService() {
    setState(() {
      if (_noteService < 20) {
        _noteService++;
      }
    });
  }

  void _moinsService() {
    setState(() {
      if (_noteService > 0) {
        _noteService--;
      }
    });
  }

  void _plusDev() {
    setState(() {
      if (_noteDev < 20) {
        _noteDev++;
      }
    });
  }

  void _moinsDev() {
    setState(() {
      if (_noteDev > 0) {
        _noteDev--;
      }
    });
  }

  void _plusCyber() {
    setState(() {
      if (_noteCyber < 20) {
        _noteCyber++;
      }
    });
  }

  void _moinsCyber() {
    setState(() {
      if (_noteCyber > 0) {
        _noteCyber--;
      }
    });
  }

  void _calculeMoyenne() {
    setState(() {
      _moyenne = (_noteCGE * 2 +
              _noteAnglais * 2 +
              _noteMaths * 3 +
              _noteCEJM * 3 +
              _noteService * 4 +
              _noteDev * 4 +
              _noteCyber * 4) /
          22;
      if (_moyenne < 8) {
        _message = "Vous n'avez pas obtenu votre BTS";
      } else {
        if (_moyenne < 10) {
          _message = "Rattrapage";
        } else {
          _message = "Vous avez obtenu votre BTS";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Note de Culture générale expression :"),
                IconButton(onPressed: _moinsCGE, icon: Icon(Icons.remove)),
                Text("$_noteCGE"),
                IconButton(onPressed: _plusCGE, icon: Icon(Icons.add)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Note de Expression et communication en langue anglaise :"),
                IconButton(onPressed: _moinsAnglais, icon: Icon(Icons.remove)),
                Text("$_noteAnglais"),
                IconButton(onPressed: _plusAnglais, icon: Icon(Icons.add)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Note de Mathématiques pour l’informatique :"),
                IconButton(onPressed: _moinsMaths, icon: Icon(Icons.remove)),
                Text("$_noteMaths"),
                IconButton(onPressed: _plusMaths, icon: Icon(Icons.add)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Note de Culture économique, juridique et managériale pour l’informatique  :"),
                IconButton(onPressed: _moinsCEJM, icon: Icon(Icons.remove)),
                Text("$_noteCEJM"),
                IconButton(onPressed: _plusCEJM, icon: Icon(Icons.add)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Note de Support et mise à disposition de services informatiques:"),
                IconButton(onPressed: _moinsService, icon: Icon(Icons.remove)),
                Text("$_noteService"),
                IconButton(onPressed: _plusService, icon: Icon(Icons.add)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Note de Conception et développement d’applications :"),
                IconButton(onPressed: _moinsDev, icon: Icon(Icons.remove)),
                Text("$_noteDev"),
                IconButton(onPressed: _plusDev, icon: Icon(Icons.add)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Note de Cybersécurité des services informatiques  :"),
                IconButton(onPressed: _moinsCyber, icon: Icon(Icons.remove)),
                Text("$_noteCyber"),
                IconButton(onPressed: _plusCyber, icon: Icon(Icons.add)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Votre moyenne est de :"),
                Text("$_moyenne"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$_message"),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _calculeMoyenne,
        tooltip: 'Increment',
        child: const Icon(Icons.history),
      ),
    );
  }
}
