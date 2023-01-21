// dart async library you will refer to when setting up real time updates
import 'dart:async';

// flutter and ui libraries
import 'package:flutter/material.dart';

// amplify packages you will need to use
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_datastore/amplify_datastore.dart';

// amplify configuration and models that should have been generated for you
import 'amplifyconfiguration.dart';
import 'models/ModelProvider.dart';
import 'models/Todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Amplified Todo',
      home: TodosPage(),
    );
  }
}

class TodosPage extends StatefulWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  State<TodosPage> createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  @override
  void initState() {
    // to be filled in a later step
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    // to be filled in a later step
  }

  Future<void> _initializeApp() async {
    // to be filled in a later step
  }

  Future<void> _configureAmplify() async {
    // to be filled in a later step
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Todo List'),
      ),
      body: const Center(child: CircularProgressIndicator()),
      // body: _isLoading
      //     ? Center(child: CircularProgressIndicator())
      //     : TodosList(todos: _todos),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddTodoForm()),
          );
        },
        tooltip: 'Add Todo',
        label: Row(
          children: const [Icon(Icons.add), Text('Add todo')],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class TodosList extends StatelessWidget {
  const TodosList({
    required this.todos,
    Key? key,
  }) : super(key: key);

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return todos.isNotEmpty
        ? ListView(
            padding: const EdgeInsets.all(8),
            children: todos.map((todo) => TodoItem(todo: todo)).toList())
        : const Center(
            child: Text('Tap button below to add a todo!'),
          );
  }
}

class TodoItem extends StatelessWidget {
  const TodoItem({
    required this.todo,
    Key? key,
  }) : super(key: key);

  final double iconSize = 24.0;
  final Todo todo;

  void _deleteTodo(BuildContext context) async {
    // to be filled in a later step
  }

  Future<void> _toggleIsComplete() async {
    // to be filled in a later step
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          _toggleIsComplete();
        },
        onLongPress: () {
          _deleteTodo(context);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    todo.name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(todo.description ?? 'No description'),
                ],
              ),
            ),
            Icon(
                todo.isComplete
                    ? Icons.check_box
                    : Icons.check_box_outline_blank,
                size: iconSize),
          ]),
        ),
      ),
    );
  }
}

class AddTodoForm extends StatefulWidget {
  const AddTodoForm({Key? key}) : super(key: key);

  @override
  State<AddTodoForm> createState() => _AddTodoFormState();
}

class _AddTodoFormState extends State<AddTodoForm> {
  late final TextEditingController _nameController;
  late final TextEditingController _descriptionController;

  @override
  void initState() {
    _nameController = TextEditingController();
    _descriptionController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _descriptionController.dispose();
  }

  Future<void> _saveTodo() async {
    // to be filled in a later step
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _nameController,
                decoration:
                    const InputDecoration(filled: true, labelText: 'Name'),
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                    filled: true, labelText: 'Description'),
              ),
              ElevatedButton(
                onPressed: _saveTodo,
                child: const Text('Save'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:sliding_up_panel/sliding_up_panel.dart';

// import 'src/features/landing-page/panel.dart';
// import 'src/features/landing-page/background.dart';
// import 'src/features/landing-page/sliding_background.dart';

// import './assets/constants.dart' as constants;

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("SlidingUpPanelExample"),
//       ),
//       body: SlidingUpPanel(),
//     );
//   }

//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     final panelHeightOpen =
//         MediaQuery.of(context).size.height * constants.MAX_PANEL_HEIGHT;
//     final panelHeightClosed =
//         MediaQuery.of(context).size.height * constants.MIN_PANEL_HEIGHT;

//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.

//     return Scaffold(
//       body: SlidingUpPanel(
//         maxHeight: panelHeightOpen,
//         minHeight: panelHeightClosed,
//         parallaxEnabled: true,
//         parallaxOffset: 1,
//         body: Stack(children: [BackgroundColorPage(), PagedBackground()]),
//         panelBuilder: (controller) => PanelWidget(
//           controller: controller,
//         ),
//         borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
//         boxShadow: const [
//           BoxShadow(blurRadius: 8.0, color: Color.fromRGBO(0, 0, 0, 0.5))
//         ],
//       ),
//     );
//   }
// }
