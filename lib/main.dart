import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:Container(
        child: Column(
          children: [
            CatItems(),
            Contact(),
            subCatItem(),
            BottomMenu(),

          ],
        ),
      )

    );
  }
}

   class CatItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 2,
      child: Container(
        height: 200,
        color: Colors.blue,
        child: ListView.builder(itemBuilder: (context, index) =>Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 100,
            child: CircleAvatar(
              backgroundColor: Colors.green,
            ),
          ),
        ),itemCount: 10, scrollDirection: Axis.horizontal),
      ),
    );
  }
 }


 class Contact extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        height: 200,
        color: Colors.orange,
        child: ListView.builder(itemBuilder: (context,index)=>Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 100,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
              ),
              title: Text('Name'),
              subtitle: Text('Mobile no'),
              trailing: Icon(Icons.delete),
            ),
          ),
        ),
            itemCount: 10, scrollDirection: Axis.vertical),
      ),
    );
  }

 }

 class subCatItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 200,
        color: Colors.grey,
        child: ListView.builder(
          itemBuilder: (context, index)=>
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    ),
                  )),
          itemCount:10, scrollDirection:Axis.horizontal,


        ),
      ),
    );
  }
 }

 class BottomMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 200,
        color: Colors.green,
        child: ListView.builder(
          itemBuilder: (context, index)=>
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    ),
                  )),
          itemCount:10, scrollDirection:Axis.horizontal,
        ),

      ),
    );
  }

 }