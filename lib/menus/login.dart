import 'package:flutter/material.dart';
import 'package:uts_project/menu_screen.dart';

class LoginTab extends StatefulWidget {
  @override
  State<LoginTab> createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {
  bool isHidden = true;

  void navigateToDaftarTab() {
    Navigator.push(context,MaterialPageRoute(builder: (context) => DaftarTab()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(labelText: "Email", prefixIcon: Icon(Icons.email)),
          ),
          TextField(
            autocorrect: false,
            obscureText: isHidden,
            decoration: InputDecoration(labelText: "Password", prefixIcon: Icon(Icons.vpn_key)),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
               Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MenuScreen()));
            },
            child: Text("Login"),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
          ),
          SizedBox(height: 10),
          TextButton(
            onPressed: () {
              navigateToDaftarTab();
            },
            child: Text("Belum punya akun? Daftar disini!"),
      )],
        ),
      );
  }
}
class DaftarTab extends StatefulWidget {
  @override
  State<DaftarTab> createState() => _DaftarTabState();
}

class _DaftarTabState extends State<DaftarTab> {
  int _currentIndex = 3;
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Manga ID"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            autocorrect: false,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(labelText: "Nama", prefixIcon: Icon(Icons.person)),
          ),
          TextField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(labelText: "Email", prefixIcon: Icon(Icons.email)),
          ),
          TextField(
            autocorrect: false,
            obscureText: isHidden,
            decoration: InputDecoration(labelText: "Password", prefixIcon: Icon(Icons.vpn_key)),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MenuScreen()));
            },
            child: Text("Daftar"),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
          ),],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.greenAccent,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Daftar Manga',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Login',
          ),
        ],
        selectedItemColor: Colors.white,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}