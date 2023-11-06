/*void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeActivity(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});
  MySnackBar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Memory"),
        backgroundColor: Colors.lightGreen,
        actions: [
          IconButton(onPressed: (){MySnackBar("Learn First",context);}, icon: const Icon(Icons.add)),
          IconButton(onPressed: (){MySnackBar("You are almost here",context);}, icon: const Icon(Icons.search)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){MySnackBar("You are almost here",context);},
        backgroundColor: Colors.lightGreen,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.lightGreen,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
        ],
        onTap: (int index){
          if(index==0){MySnackBar("You are almost here",context);}
          if(index==1){MySnackBar("You are almost here",context);}
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text("Menu")),
            ListTile(leading: const Icon(Icons.people),
              title: const Text("Profile"),
              onTap: (){ MySnackBar("Profile is on",context);},),
            ListTile(leading: const Icon(Icons.person),
              title: const Text("Contact"),
              onTap: (){ MySnackBar("Add to contact",context);},),
            ListTile(leading: const Icon(Icons.email),
              title: const Text("Email"),
              onTap: (){ MySnackBar("Go to chrome",context);},),
            ListTile(leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: (){ MySnackBar("Set here",context);},),
            ListTile(leading: const Icon(Icons.near_me_rounded),
              title: const Text("Go to"),
              onTap: (){ MySnackBar("Go to is not set",context);},),
            ListTile(leading: const Icon(Icons.search),
              title: const Text("Search"),
              onTap: (){ MySnackBar("Search now",context);},),
          ],
        ),
      ),
      
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:practice/appbar.dart';
import 'package:practice/drawer.dart';
import 'package:practice/login.dart';
import 'package:practice/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => const MyLogIn(),
      'appbar': (context) => const MyAppBar(),
      'register': (context) => const MyRegister(),
      'drawer': (context) => const MyDrawer(),
    },
  ));
}
