import 'package:flutter/material.dart';
import 'package:secondapp/screens/ligth_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Icon _coeur = const Icon(Icons.favorite_border);
  bool _likeBool = false;
  int _compteur = 0;
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Second App"),
        backgroundColor: const Color.fromRGBO(248, 230, 239, 1.0),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: _likeThis,
            //icon: Icons.favorite_border,
            icon: _coeur,
          ),
        ],
      ),
      body: [
        Container(
          alignment: Alignment.center,
          color: Colors.orange,
          child: Center(
            child: Column(
              children: [
                Text("Vous avez cliquez : ",
                    style: Theme.of(context).textTheme.bodyLarge),
                Text(
                  "$_compteur",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.amberAccent,
          alignment: Alignment.center,
          child: const Text("Commute"),
        ),
        Container(
          color: Colors.brown,
          alignment: Alignment.center,
          child: const Text("Sauvegarder"),
        ),
        Container(
          color: Colors.purple,
          alignment: Alignment.center,
          child: Column(
            children: [
              FilledButton(
                onPressed: () {},
                child: const Text("FielledButton"),
              ),
              FilledButton.tonal(
                onPressed: () {},
                child: const Text("FilledButton Tonal"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("ElevatedButton"),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text("Outline Button"),
              ),
            ],
          ),
        ),
      ][_currentPageIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementerLeCompteur,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        /*onDestinationSelected: (int index) {
          setState(() {
            _currentPageIndex = index;
          });
        },*/
        onDestinationSelected: _switchMenu,
        selectedIndex: _currentPageIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.explore),
            label: "Explorer",
          ),
          NavigationDestination(
            icon: Icon(Icons.commute),
            label: "Commute",
          ),
          NavigationDestination(
            icon: Icon(Icons.bookmark),
            label: "Sauvegarder",
            selectedIcon: Icon(Icons.bookmark_border),
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: "Parametres",
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text("Menu"),
            ),
            ListTile(
              title: const Text("Light"),
              trailing: const Icon(Icons.light),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LigthPage()));
              },
            )
          ],
        ),
      ),
    );
  }

  void _likeThis() {
    //print("Icon taper");
    setState(() {
      if (!_likeBool) {
        _coeur = const Icon(Icons.favorite);
        _likeBool = true;
      } else {
        _coeur = const Icon(Icons.favorite_border);
        _likeBool = false;
      }
    });
  }

  void _incrementerLeCompteur() {
    //print("Compteur cliquer");
    setState(() {
      _compteur++;
    });
  }

  void _switchMenu(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }
}
