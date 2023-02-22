import 'package:flutter/material.dart';

class ShowDialok extends StatelessWidget {
  const ShowDialok({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text('ShowDialog'),
        centerTitle: true,
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () => _dialogBuilder(context),
          child: const Text(
            'dialoktu achuu',
            style: TextStyle(color: Colors.redAccent),
          ),
        ),
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Dialoktun atalychy'),
          content: const Text('<Bulprogmany ulantabersinbi>'),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('ochyryy'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('ishtetyy'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}





// class ShowDialok extends StatefulWidget {
//   const ShowDialok({Key? key}) : super(key: key);

//   @override
//   _ShowDialokState createState() => _ShowDialokState();
// }

// class _ShowDialokState extends State<ShowDialok> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ShovDialok'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: OutlinedButton(
//           onPressed: () => _dialogBuilder(context),
//           child: Text('dialoctu achuu'),
//         ),
//       ),
//     );
//   }
// }

// Future <void>_dialogBuilder(BuildContext context) {




