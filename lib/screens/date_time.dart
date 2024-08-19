// import 'package:flutter/material.dart';
// // import 'package:intl/intl.dart';

// class DateTimeScreen extends StatefulWidget {
//   const DateTimeScreen({super.key});

//   @override
//   State<DateTimeScreen> createState() => _DateTimeScreenState();
// }

// class _DateTimeScreenState extends State<DateTimeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     // date time format
//     DateTime time = DateTime.now();

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               //date time format
//               /* Center(
//                   child: Text("Current Date: ${DateFormat("Hms").format(time)}")),
//               ElevatedButton(
//                   onPressed: () {
//                     setState(() {});
//                   },
//                   child: const Text("Current")) */

//               const Text("Select Date"),
//               ElevatedButton(
//                   onPressed: () async {
//                     DateTime? datepicker = await showDatePicker(
//                         context: context,
//                         initialDate: DateTime.now(),
//                         firstDate: DateTime(1900),
//                         lastDate: DateTime(2023));
//                     setState(() {
//                       datepicker = time;
//                     });
//                     if (datepicker != null && datepicker != time) {
//                       print("Show Date Picker");
//                     }
//                   },
//                   child: const Text("Show"))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MyDatePicker(),
//     );
//   }
// }

// class MyDatePicker extends StatefulWidget {
//   const MyDatePicker({super.key});

//   @override
//   _MyDatePickerState createState() => _MyDatePickerState();
// }

// class _MyDatePickerState extends State<MyDatePicker> {
//   DateTime selectedDate = DateTime.now();

//   Future<void> _selectDate(BuildContext context) async {
//     // Date Picker calender
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: selectedDate,
//       firstDate: DateTime(1900),
//       lastDate: DateTime(2099),
//     );

//     if (picked != null && picked != selectedDate) {
//       setState(() {
//         selectedDate = picked;
//       });
//     }
//   }

//   //Time picker clock
//   TimeOfDay _selectedTime = TimeOfDay.now();

//   void _selectTime() async {
//     final TimeOfDay? pickedTime = await showTimePicker(
//       context: context,
//       initialTime: _selectedTime,
//     );

//     if (pickedTime != null && pickedTime != _selectedTime) {
//       setState(() {
//         _selectedTime = pickedTime;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Date Picker Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             Text(
//               'Selected Time: ${_selectedTime.format(context)}',
//               style: const TextStyle(fontSize: 25),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _selectTime,
//               child: const Text('Select Time'),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               "${selectedDate.toLocal()}".split(' ')[0],
//               style: const TextStyle(fontSize: 25),
//             ),
//             const SizedBox(
//               height: 20.0,
//             ),
//             ElevatedButton(
//               onPressed: () => _selectDate(context),
//               child: const Text('Select date'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:wscube_tech/screens/secondscreen.dart';

class FontAwesomeScreen extends StatefulWidget {
  const FontAwesomeScreen({super.key});

  @override
  State<FontAwesomeScreen> createState() => _FontAwesomeScreenState();
}

class _FontAwesomeScreenState extends State<FontAwesomeScreen> {
  // int count = 0;
  var no1controller = TextEditingController();
  var no2controller = TextEditingController();
  var Result = "";

  TextEditingController textController = TextEditingController();
  String enteredText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //////  Count setstate
      //  Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(
      //         "Count : $count",
      //         style: TextStyle(
      //           fontSize: 16,
      //           color: c44,
      //         ),
      //       ),
      //       ElevatedButton(
      //           onPressed: () {
      //             setState(() {
      //               count++;
      //             });
      //           },
      //           child: const Text("Click")),
      //       ElevatedButton(
      //           onPressed: () {
      //             setState(() {
      //               count--;
      //             });
      //           },
      //           child: const Text("Click"))
      //     ],
      //   )
      // ),

      // User value show
      //  Container(
      //   color: Colors.blue.shade200,
      //   child: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         TextField(
      //           keyboardType: TextInputType.number,
      //           controller: no1controller,
      //         ),
      //         TextField(
      //           keyboardType: TextInputType.number,
      //           controller: no2controller,
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(20.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //             children: [
      //               ElevatedButton(
      //                   onPressed: () {
      //                     var no1 = int.parse(no1controller.text.toString());
      //                     var no2 = int.parse(no2controller.text.toString());
      //                     var sum = no1 + no2;
      //                     Result = "The sum of $no1 and $no2 is $sum";
      //                     setState(() {});
      //                   },
      //                   child: const Text("Add")),
      //               ElevatedButton(
      //                   onPressed: () {
      //                     var no1 = int.parse(no1controller.text.toString());
      //                     var no2 = int.parse(no2controller.text.toString());
      //                     var sub = no1 - no2;
      //                     Result = "The sub of $no1 and $no2 is $sub";
      //                     setState(() {});
      //                   },
      //                   child: const Text("Sub")),
      //               ElevatedButton(
      //                   onPressed: () {
      //                     var no1 = int.parse(no1controller.text.toString());
      //                     var no2 = int.parse(no2controller.text.toString());
      //                     var mult = no1 * no2;
      //                     Result = "The mult of $no1 and $no2 is $mult";
      //                     setState(() {});
      //                   },
      //                   child: const Text("Mult")),
      //               ElevatedButton(
      //                   onPressed: () {
      //                     var no1 = int.parse(no1controller.text.toString());
      //                     var no2 = int.parse(no2controller.text.toString());
      //                     var div = no1 / no2;
      //                     Result =
      //                         "The div of $no1 and $no2 is ${div.toStringAsFixed(2)}";
      //                     setState(() {});
      //                   },
      //                   child: const Text("Div"))
      //             ],
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(10),
      //           child: Text(
      //             Result,
      //             style: const TextStyle(fontSize: 25),
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),

      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Dashboard Screen",
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        enteredText = textController.text;
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                SecondScreen(textController.text.toString()),
                          ));
                    },
                    child: const Text("Pass Data")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
