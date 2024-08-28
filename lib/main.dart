/*import 'package:flutter/material.dart'; //this gives access to pre built widgets

void main() {  //main function has the programms to be executed
  runApp(const MyApp()); //runApp function is a global function that takes in a widget and reders it on chosen device
}
//if you type st and choose statelessWidget you should just add the class name of youur widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      /*home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text('Flutter is good'),
          ),
        body:Container(
          child: const Text('hi mom '),
          margin: const  EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          color: Colors.green,
          height: 50,
          width: 50,
          decoration: BoxDecoration(),
        )*/
        /*body: Column(
          children: const [
            Icon(Icons.backpack),
            Icon(Icons.leaderboard),
            Icon(Icons.person),

          ],
        ),*/
       /*body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Icon(Icons.backpack),
            Icon(Icons.leaderboard),
            Icon(Icons.person),

          ],
        ),*/
       /* body:ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(color: Colors.blue,),
            Container(color: Colors.green,),
            Container(color: Colors.yellow,)
          ],
        ),*/
        /*body: ListView.builder(
          itemBuilder: (_,index){
           return Container(
           color: Colors.green,
           width: 500,
           height: 500,
           );
          },
         ),
         body: ElevatedButton(
         child: const Text('navigate'),
         onPressed: (){
          Navigator.push(context, 
          MaterialPageRoute(builder: (_) => const AboutScreen(),
          ),
          );
         },
         ),
        bottomNavigationBar: BottomNavigationBar(
          items:const[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',),
           BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',),
               BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',)]
          ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){print('pressed');},
          ),
       drawer: Drawer(child: Text('Yo'),//menu button 
       ),*/ 
       );

  }
}

//widget we want to navigate to
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;//It imports the http package, which provides a set of high-level functions and classes for making HTTP requests, such as GET, POST, PUT, DELETE, etc.
import 'dart:convert'; //It imports the dart:convert library, which provides utilities for encoding and decoding various data formats, particularly JSON, UTF-8, and Base64.

void main() => runApp(RecipeApp());

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI-Powered Recipe App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: RecipeHomePage(), //home is set to the stateful widget RecipeHomePage
    );
  }
}

class RecipeHomePage extends StatefulWidget {
  @override
  _RecipeHomePageState createState() => _RecipeHomePageState();
}/*this code defines a stateful widget called RecipeHomePage.
 The createState() method is overridden to link the RecipeHomePage
  widget to its corresponding state class, _RecipeHomePageState. 
  This state class will contain the logic and state management 
  for the RecipeHomePage widget, enabling the widget to rebuild 
its UI dynamically in response to state changes*/ 

class _RecipeHomePageState extends State<RecipeHomePage> { //in state<> give class name that extends statefulWidget
 
  final TextEditingController _controller = TextEditingController();
  /* TextEditingController: This is a class in Flutter that controls and tracks 
  the state of a text field. It is used to read, modify, or listen to changes 
  in the text field. For instance, you can use it to
   get the current value of the text field, clear the text,
    or set the text programmatically */

  List<String> _recipes = []; //initialise a recipe list

  Future<void> _getRecipes() async {
    final response = await http.post(
      Uri.parse('http://127.0.0.1:5000/get-recipes'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'ingredients': _controller.text.split(','),
      }),
      /*body: This is the actual data being sent to the server in the request.
    jsonEncode(...): This function converts a Dart object into a JSON string.
     In this case, it converts a map containing the ingredients to a JSON string.
    <String, dynamic>{ 'ingredients': _controller.text.split(','), }: 
    This is a map representing the data to be sent.
    'ingredients': The key in the JSON object that will be sent to the server.
     _controller.text.split(','): This splits the text from the _controller 
     (likely connected to a text input) into a list of ingredients
     based on commas. This list is then associated with the ingredients key in the JSON body */
    );
    /*await: This keyword indicates that the program should
     wait for the http.post request to complete before moving
      on to the next line of code. The function that contains 
      this code must be marked as async to use await.
     http.post(...): This is a function from the http package that
     sends an HTTP POST request to the specified URL with the provided headers and body */

    if (response.statusCode == 200) {
      setState(() {
        _recipes = List<String>.from(jsonDecode(response.body)); //get response and jsonify the response body
      });
    } else {
      throw Exception('Failed to load recipes');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AI-Powered Recipe App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), 
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter ingredients (comma-separated)',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _getRecipes,
              child: Text('Get Recipes'),
            ),
            Expanded(                         //The Expanded widget tells its parent to allocate remaining space to its child.  The child widget will grow to fill the available 
              child: ListView.builder(         //space in the parent widget’s main axis direction (vertical for Column, horizontal for Row).
                itemCount: _recipes.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_recipes[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*This specifies the child widget to be used within a parent widget. 
In this case, ListView.builder is the child widget.
ListView.builder(...)

itemCount: _recipes.length

itemCount: Specifies the number of items in the list. _recipes.
length is a variable that holds the number of items you want to display in the list.
 Each item will be created and displayed based on this count.
itemBuilder: (context, index) { ... }

itemBuilder: This is a callback function that builds each item in the list.
 It is called for each item in the list with its position (index) and a BuildContext.
context: The BuildContext that provides information about the location of the widget in the widget tree.
index: The position of the current item being built. This index is used to access data from the _recipes list. */
