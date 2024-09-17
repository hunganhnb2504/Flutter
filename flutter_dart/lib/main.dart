import 'package:flutter/material.dart';

// class MyAppBar extends StatelessWidget {
//   const MyAppBar({required this.title, super.key});

//   final Widget title;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height:   56.0, // in logical pixels
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       decoration: BoxDecoration(color: Colors.blue[500]),

//       child: Row(
//         children: [
//           const IconButton(
//             icon: Icon(Icons.menu),
//             tooltip: 'Navigation menu',
//             onPressed: null, // null disables the button
//           ),

//           Expanded(child: title),

//           const IconButton(
//             icon: Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: null,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyScaffold extends StatelessWidget {
//   const MyScaffold({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Column(
//         children: [
//           MyAppBar(
//             title: Text('Example title', style: Theme.of(context).primaryTextTheme.titleLarge),
//           ),
//           Expanded(
//             child: Center(
//               child: Text('Hello, World!'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



void main() {
  // runApp(
  //   const MaterialApp(
  //     title: 'My App',
  //     home: SafeArea(child: MyScaffold()
  //     ),
  //   )
  // );

    runApp(
      const MaterialApp(
        title: 'Flutter Tutorial',
        home: TutorialHome(),
      )
    );
}

class TutorialHome extends StatelessWidget {
  const TutorialHome({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Example title'),
        actions: const <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      body: const Center(
        child: Text('Hello, World!'),
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}

  

