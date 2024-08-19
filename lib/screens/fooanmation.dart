//////////////////  Animation Container ///////////////////////

// import 'package:flutter/material.dart';

// class FooAnimation extends StatefulWidget {
//   const FooAnimation({super.key});

//   @override
//   State<FooAnimation> createState() => _FooAnimationState();
// }

// class _FooAnimationState extends State<FooAnimation> {
//   var _width = 200.0;
//   var _height = 100.0;
//   bool flag = true;
//   Color bgcolor = Colors.grey;
//   Decoration mydecoration = BoxDecoration(
//       borderRadius: BorderRadius.circular(10), color: Colors.grey);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Foo Animation"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             AnimatedContainer(
//                 height: _height,
//                 width: _width,
//                 curve: Curves.bounceIn,
//                 decoration: mydecoration,
//                 duration: const Duration(seconds: 5)),
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       if (flag) {
//                         _height = 200.0;
//                         _width = 100.0;
//                         flag = false;
//                         mydecoration = BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: Colors.tealAccent);
//                       } else {
//                         _height = 100.0;
//                         _width = 200.0;
//                         flag = true;
//                         mydecoration = BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: Colors.yellow);
//                       }
//                     });
//                   },
//                   child: const Text("Animate")),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

/////////////////  Animation Opacity ///////////////

// import 'package:flutter/material.dart';

// class FooAnimation extends StatefulWidget {
//   const FooAnimation({super.key});

//   @override
//   State<FooAnimation> createState() => _FooAnimationState();
// }

// class _FooAnimationState extends State<FooAnimation> {
//   var myopacity = 1.0;
//   bool _Visible = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Foo Animation"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             AnimatedOpacity(
//               opacity: myopacity,
//               duration: const Duration(seconds: 3),
//               curve: Curves.easeInOut,
//               child: Container(
//                 width: 200,
//                 height: 100,
//                 color: Colors.amber,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       if (_Visible) {
//                         myopacity = 0.0;
//                         _Visible = false;
//                       } else {
//                         myopacity = 1.0;
//                         _Visible = true;
//                       }
//                     });
//                   },
//                   child: const Text("Close")),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

/////////////// Cross Fade Animation ////////////////

// import 'package:flutter/material.dart';

// class FooAnimation extends StatefulWidget {
//   const FooAnimation({super.key});

//   @override
//   State<FooAnimation> createState() => _FooAnimationState();
// }

// class _FooAnimationState extends State<FooAnimation> {
//   bool isfirst = true;

//   void reload() {
//     setState(() {
//       if (isfirst) {
//         isfirst = false;
//       } else {
//         isfirst = true;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         title: const Text("Foo Animation"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             AnimatedCrossFade(
//                 firstChild: Image.asset(
//                   "assets/images/australia.jpg",
//                   height: 500,
//                   width: 500,
//                 ),
//                 secondChild: Image.asset(
//                   "assets/images/africa.jpg",
//                   height: 500,
//                   width: 500,
//                 ),
//                 crossFadeState: isfirst
//                     ? CrossFadeState.showFirst
//                     : CrossFadeState.showSecond,
//                 duration: const Duration(seconds: 2)),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: ElevatedButton(
//                   onPressed: () {
//                     reload();
//                   },
//                   child: const Text("Change")),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

//////////////////////  Hero Animation  //////////////////////

// class FooAnimation extends StatefulWidget {
//   const FooAnimation({super.key});

//   @override
//   State<FooAnimation> createState() => _FooAnimationState();
// }

// class _FooAnimationState extends State<FooAnimation> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Center(
//           child: GestureDetector(
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => const DetailHeroAnimation(),
//                   ));
//             },
//             child: Hero(
//                 tag: "background",
//                 child: Image.asset(
//                   "assets/images/africa.jpg",
//                   height: 100,
//                   width: 150,
//                 )),
//           ),
//         ),
//       ),
//     );
//   }
// }

/////////////////////// List Wheel /////////////////////

// import 'package:flutter/material.dart';

// class FooAnimation extends StatefulWidget {
//   const FooAnimation({super.key});

//   @override
//   State<FooAnimation> createState() => _FooAnimationState();
// }

// class _FooAnimationState extends State<FooAnimation> {
//   var color = Colors.amber;
//   var scrollwheel = [
//     1,
//     2,
//     3,
//     4,
//     5,
//     6,
//     7,
//     8,
//     9,
//     10,
//     11,
//     12,
//     13,
//     14,
//     15,
//     16,
//     17,
//     18,
//     19,
//     20,
//     21,
//     22,
//     23,
//     24,
//     25,
//     26,
//     27,
//     28,
//     29,
//     30
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListWheelScrollView(
//       itemExtent: 100,
//       children: scrollwheel
//           .map((e) => Container(
//                 margin: const EdgeInsets.only(left: 30, right: 30),
//                 width: double.infinity,
//                 color: color,
//                 child: Center(
//                   child: Text("$e"),
//                 ),
//               ))
//           .toList(),
//     ));
//   }
// }

///////////////////// Tween Animation //////////////////////

// import 'package:flutter/material.dart';

// class FooAnimation extends StatefulWidget {
//   const FooAnimation({super.key});

//   @override
//   State<FooAnimation> createState() => _FooAnimationState();
// }

// class _FooAnimationState extends State<FooAnimation>
//     with SingleTickerProviderStateMixin {
//   late Animation coloranimation;
//   late Animation animation;
//   late AnimationController animationController;

//   @override
//   void initState() {
//     super.initState();
//     animationController =
//         AnimationController(vsync: this, duration: const Duration(seconds: 4));
//     animation = Tween(begin: 0.0, end: 200.0).animate(animationController);
//     coloranimation = ColorTween(begin: Colors.amber, end: Colors.blue)
//         .animate(animationController);
//     animationController.addListener(() {
//       setState(() {});
//     });
//     animationController.forward();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           height: animation.value,
//           width: animation.value,
//           color: coloranimation.value,
//         ),
//       ),
//     );
//   }
// }

//////////////////// Ripple Animation ////////////////////

// class FooAnimation extends StatefulWidget {
//   const FooAnimation({super.key});

//   @override
//   State<FooAnimation> createState() => _FooAnimationState();
// }

// class _FooAnimationState extends State<FooAnimation>
//     with SingleTickerProviderStateMixin {
//   late Animation _animation;
//   late AnimationController _animationController;

//   @override
//   void initState() {
//     super.initState();

//     _animationController =
//         AnimationController(vsync: this, duration: const Duration(seconds: 4));
//     // _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);
//     _animationController.addListener(() {
//       setState(() {});
//     });
//     _animationController.forward();
//   }

//   var listeadius = [
//     150.0,
//     200.0,
//     250.0,
//     300.0,
//     350.0,
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Stack(
//           alignment: Alignment.center,
//           children: listeadius
//               .map((e) => Container(
//                     height: e * _animationController.value,
//                     width: e * _animationController.value,
//                     decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Colors.blue
//                             .withOpacity(1.0 - _animationController.value)),
//                     child: const Center(
//                       child: Icon(
//                         Icons.phone,
//                         color: Colors.yellowAccent,
//                         size: 30,
//                       ),
//                     ),
//                   ))
//               .toList(),
//         ),
//       ),
//     );
//   }
// }

////////////////// Ripple Effect Animation to use package ///////////////////////////

// import 'package:awesome_ripple_animation/awesome_ripple_animation.dart';
// import 'package:flutter/material.dart';

// class FooAnimation extends StatefulWidget {
//   const FooAnimation({super.key});

//   @override
//   State<FooAnimation> createState() => _FooAnimationState();
// }

// class _FooAnimationState extends State<FooAnimation> {
//   @override
//   Widget build(BuildContext context) {
//     return RippleAnimation(
//         repeat: true,
//         color: Colors.yellowAccent,
//         minRadius: 90,
//         size: Size.infinite,
//         ripplesCount: 6,
//         child: const Icon(
//           Icons.phone,
//           size: 40,
//         ));
//   }
// }
