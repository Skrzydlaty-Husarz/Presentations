import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: PageJeden(),
    ),
  );
}

class PageJeden extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Od zakąski do kufelka",
          textAlign: TextAlign.center,
          style: TextStyle(),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("Visibility/Opacity",
                  style: TextStyle(color: Colors.black)
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageDwa(),
                  ),
                );
              },
            ),
            TextButton(
              child:
              Text("Card/ListTile", style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageTrzy(),
                  ),
                );
              },
            ),
            TextButton(
              child: Text("ListView.builder",
                  style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageCztery(items: null),
                  ),
                );
              },
            ),
            TextButton(
              child: Text("TextField", style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PagePiec(),
                  ),
                );
              },
            ),
            TextButton(
              child: Text("TextEditingController",
                  style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageSzesc(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageDwa extends StatefulWidget {
  PageDwa();
  @override
  _PageDwaState createState() => _PageDwaState();
}

double _myOpacity = 1.0;

class _PageDwaState extends State<PageDwa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Invisible/Opacity", textAlign: TextAlign.center),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              child: Text(
                "To jest Tekst co go nie widać",
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 25,
                ),
              ),
              visible: false,
            ),
            SizedBox(
              height: 10,
            ),
            Visibility(
              child: Text(
                "To jest widoczny Tekst",
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 25,
                ),
              ),
              visible: true,
            ),
            SizedBox(
              height: 10,
            ),
            Opacity(
              opacity: 0.5,
              child: Text(
                "To jest Tekst mniej widoczny",
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Opacity(
                opacity: _myOpacity,
                child: Text(
                  "Czas na powiedzenia: "
                      "ilu chłopa tlu dwa razy więcej rąk i nóg do pracy, "
                      "Woły ciągnom wóz cobym się nie zmęczył i nie padł, "
                      "Hulaj dusza piekła nie ma jednak kto co ma do powiedzenia, "
                      "Róbta co chceta ale pieniądze oddać, "
                      "Jeśli mam wybrać pomiędzy złem a mniejszym złem, wolę nie wybierac wcale, "
                      "Jakie licho się ostatnio zalęgło w lesie, trzea wiedźmina, "
                      "A pal licho złamasie. ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                )),
            SizedBox(
              height: 10,
            ),
            TextButton(
              child: Text("Zmień widoczność",
                  style: TextStyle(color: Colors.black, fontSize: 30,)
              ),
              onPressed: () {
                setState(() {
                  if (_myOpacity > 0.1) {
                    _myOpacity = _myOpacity - 0.1;}
                  else{
                    _myOpacity = _myOpacity + 0.9;
                  }
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              child: Text("Wróć", style: TextStyle(color: Colors.black,fontSize: 20,)),
              onPressed: () {
                Navigator.pop(context, 6);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageTrzy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card and ListTile"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: ListTile(
                  dense: true,
                  title: Text("Lokacje"),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.map),
                  title: Text("Mapa"),
                  subtitle: Text("Otwórz mapę"),
                  trailing: Icon(Icons.settings),
                ),
              ),
              Card(
                child: ListTile(
                  dense: true,
                  title: Text("Inne"),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.cake),
                  title: Text("Wszędzie ciasta"),
                  subtitle: Text("Jedz ile chcesz!"),
                  trailing: Icon(Icons.settings),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.arrow_upward),
                  title: Text("Różne kierunki"),
                  subtitle: Text("Twoja droga, twój kierunek"),
                  trailing: Icon(Icons.settings),
                ),
              ),
              TextButton(
                child: Text("Wróć", style: TextStyle(color: Colors.black,fontSize: 20,)),
                onPressed: () {
                  Navigator.pop(context, 6);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageCztery extends StatelessWidget {
  final List<String> items;

  PageCztery({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var items = List<String>.generate(20001, (i) => "Item $i");
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.builder", textAlign: TextAlign.center),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        },
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<String>('items', items));
  }
}

class PagePiec extends StatelessWidget {
  PagePiec();

  TextEditingController _WordController = TextEditingController();
  TextEditingController _WordTwoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField", textAlign: TextAlign.center),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  controller: _WordController,
                  decoration: InputDecoration(
                      hintText: "Podaj imie",
                      labelText: "Imie",
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(),
                      ),
                  obscureText: false,
                  maxLength: 20,
                  maxLines: 1,
                  onChanged: (text) {}),
              TextField(
                  controller: _WordTwoController,
                  decoration: InputDecoration(
                      hintText: "Podaj nazwisko",
                      labelText: "Nazwisko",
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(),
                      ),
                  obscureText: false,
                  maxLength: 25,
                  maxLines: 1,
                  onChanged: (text) {}
                  ),
              TextField(
                  decoration: InputDecoration(
                    hintText: "hasło",
                    labelText: "Hasło",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  maxLength: 35,
                  maxLines: 1,
                  onChanged: (text) {
                  }
                  ),
              Center(
                child: FloatingActionButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                            content: Text("Witaj ponownie " +
                                _WordController.text +
                                " " +
                                _WordTwoController.text)));
                  },
                  tooltip: 'Increment',
                  child: Icon(Icons.arrow_circle_up_rounded),
                ),
                ),
              TextButton(
                child: Text(
                  "Wróć",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context, 6);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageSzesc extends StatefulWidget {
  @override
  _PageSzesc createState() => _PageSzesc();
}

class _PageSzesc extends State<PageSzesc> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TextEditingController", textAlign: TextAlign.center),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: myController,
              decoration: InputDecoration(
                hintText: "",
                labelText: "Napisz co tam chceta",
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(),
              ),
              maxLength: 100,
              maxLines: 1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                  content: Text("Żeś napisał: ${myController.text}")));
        },
        tooltip: 'Increment',
        child: Icon(Icons.arrow_circle_up_rounded),
      ),
        );
  }
}