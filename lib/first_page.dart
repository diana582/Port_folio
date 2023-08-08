// import 'package:diana_portfolio/About.dart';
// import 'package:diana_portfolio/Projects.dart';
// import 'package:diana_portfolio/Resume.dart';
// import 'package:diana_portfolio/contact.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';


// class FirstPage extends StatefulWidget {
//   const FirstPage({Key? key}) : super(key: key);

//   @override
//   _FirstPageState createState() => _FirstPageState();
// }

// class _FirstPageState extends State<FirstPage> {
//   bool isHoveringContainer1 = false;
//   bool isHoveringContainer2 = false;
//   bool isHoveringContainer3 = false;
//   bool isHoveringContainer4 = false;
//   bool isHoveringContainer5 = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background Image
//           Container(
//             color: Color.fromARGB(255, 150, 148, 148),
//             // decoration: BoxDecoration(
//             //   image: DecorationImage(
//             //     image: NetworkImage(
//             //         ''),
//             //     fit: BoxFit.cover,
//             //   ),
//             // ),
//           ),
//           // Five Different Containers
//           Positioned(
//             top: 10,
//             right: 10,
//             left: 10,
//             bottom: 10,
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     Expanded(
//                       child: GestureDetector(
//                         onTap: () {
//                            Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => Resume()),
//       );
//                         },
//                         child: MouseRegion(
//                           onEnter: (_) {
//                             setState(() {
//                               isHoveringContainer1 = true;
//                             });
//                           },
//                           onExit: (_) {
//                             setState(() {
//                               isHoveringContainer1 = false;
//                             });
//                           },
//                           child: Container(
//                             margin: EdgeInsets.all(10),
//                            // color: Colors.white,
                            
                            
//                             child: isHoveringContainer1
//                                 ? Image.network(
//                                     'https://cdn.dribbble.com/userupload/7069342/file/original-70db30a47e8619f028b4660ec5e14de0.jpg?resize=1200x900',
                                    
//                                     height: 400,
//                                     width: 50,
//                                     fit: BoxFit.cover,
//                                   )
//                                 : Image.network(
//                                     'https://cdn.dribbble.com/users/56024/screenshots/16441404/media/51856749b3360f83c8eaab11f68478d7.jpg?resize=1000x750&vertical=center',
//                                     height: 400,
//                                     width: 50,
//                                     fit: BoxFit.cover,
//                                   ),
//                           ),
//                         ),
//                       ),
//                     ),
//                    Container(
//                     width: 300,
//                      child: Expanded(
                      
//                         child: GestureDetector(
//                           onTap: () {
//                              Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => Contact()),
//       );
//                           },
//                           child: MouseRegion(
//                             onEnter: (_) {
//                               setState(() {
//                                 isHoveringContainer2 = true;
//                               });
//                             },
//                             onExit: (_) {
//                               setState(() {
//                                 isHoveringContainer2 = false;
//                               });
//                             },
//                             child: Container(
//                               margin: EdgeInsets.all(10),
//                               color: Colors.white,
//                               child: isHoveringContainer2
//                                   ? Image.network(
//                                       'https://cdn.dribbble.com/userupload/7069342/file/original-70db30a47e8619f028b4660ec5e14de0.jpg?resize=1200x900',
//                                       height: 400,
//                                       width: 100,
//                                       alignment: Alignment.centerLeft,
//                                       fit: BoxFit.cover,
//                                     )
//                                   : Image.network(
//                                       'https://cdn.dribbble.com/users/927952/screenshots/16981066/media/752d194a338a5f11647e83214b84549f.png?resize=1000x750&vertical=center',
//                                       height: 400,
//                                       width: 100,
//                                       alignment: Alignment.centerLeft,
//                                       fit: BoxFit.cover,
//                                     ),
//                             ),
//                           ),
//                         ),
//                       ),
//                    ),
                   
// Expanded(
//   child: Container(
//     margin: EdgeInsets.all(10),
//     color: Color.fromRGBO(255, 255, 255, 0),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           'P o r t f o l i o',
//           style: GoogleFonts.aboreto(
//             fontSize: 60,
//             fontWeight: FontWeight.bold
//           ),
//         ),
//         SizedBox(height: 20),
//         AnimatedTextKit(
//           animatedTexts: [
//             TyperAnimatedText(
//               'I know I tend to make it about me\nI know you never get just what you see\nBut I will never bore you, baby\nAnd there\'s a lot of lame guys out there\n And when we had that fight out in the rain\nYou ran after me and called my name\nI never wanna see you walk away',
//               textStyle: GoogleFonts.chakraPetch(
//                 fontSize: 20,
//                 fontWeight: FontWeight.w400,
//                 color: Colors.black87
//               ),
//               speed: Duration(milliseconds: 100),
//             ),
//           ],
//           totalRepeatCount: 1, // Set to 1 for typing effect to appear once
//         ),
//       ],
//     ),
//     height: 400,
//     width: 1000,
//   ),
// ),

// // ... Your existing code ...







//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: GestureDetector(
//                         onTap: () {
//                            Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => Blog()),
//       );
//                         },
//                         child: MouseRegion(
//                           onEnter: (_) {
//                             setState(() {
//                               isHoveringContainer4 = true;
//                             });
//                           },
//                           onExit: (_) {
//                             setState(() {
//                               isHoveringContainer4 = false;
//                             });
//                           },
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20)
//                             ),
//                             margin: EdgeInsets.all(10),
//                             //color: Colors.white,
//                             child: isHoveringContainer4
//                                 ? Image.network(
//                                     'https://cdn.dribbble.com/userupload/7069342/file/original-70db30a47e8619f028b4660ec5e14de0.jpg?resize=1200x900',
//                                     height: 270,
//                                     width: 100,
//                                     fit: BoxFit.cover,
//                                   )
//                                 : Image.network(
//                                     'https://cdn.dribbble.com/userupload/6155516/file/original-45ed79aab3cff081faee8387c65b9f48.jpg?resize=1200x900',
//                                     height: 270,
//                                     width: 100,
//                                     fit: BoxFit.cover,
//                                   ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: 700,
//                       child: Expanded(
//                         child: GestureDetector(
//                           onTap: () {
//                              Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => About()),
//       );
//                           },
//                           child: MouseRegion(
//                             onEnter: (_) {
//                               setState(() {
//                                 isHoveringContainer5 = true;
//                               });
//                             },
//                             onExit: (_) {
//                               setState(() {
//                                 isHoveringContainer5 = false;
//                               });
//                             },
//                             child: Container(
//                               margin: EdgeInsets.all(10),
//                               color: Colors.white,
//                               child: isHoveringContainer5
//                                   ? Image.network(
//                                       'https://cdn.dribbble.com/userupload/7069342/file/original-70db30a47e8619f028b4660ec5e14de0.jpg?resize=1200x900',
//                                       height: 270,
//                                       width: 100,
//                                       fit: BoxFit.cover,
//                                     )
//                                   : Image.network(
//                                       'https://cdn.dribbble.com/users/927952/screenshots/16981030/media/e9d7a3f29806af6eedbfed793e2c1f6b.png?resize=1000x750&vertical=center',
//                                       height: 270,
//                                       width: 100,
//                                       fit: BoxFit.cover,
//                                       alignment: Alignment.topLeft,
//                                     ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:diana_portfolio/About.dart';
import 'package:diana_portfolio/Projects.dart';
import 'package:diana_portfolio/Resume.dart';
import 'package:diana_portfolio/contact.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        backgroundColor: Colors.black,
        
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              // First Row
            Row(
  mainAxisAlignment: MainAxisAlignment.center, // To center the violet container
  children: [
    Expanded(
      flex: 3,
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text("I know I tend to\nmake it about me",
            style: GoogleFonts.vinaSans(
                        fontSize: 110,
                        color: Color.fromARGB(255, 208, 206, 206),
                        fontWeight: FontWeight.w500
                      ),
            ),
          ),
        ),
      ), // You can add content in this container if needed
    ),
    Expanded(
      flex: 2,
      child: GestureDetector(
        onTap: () {
                            Navigator.push(
         context,
         MaterialPageRoute(builder: (context) => About()),
       );
                         },
        child: Container(
          width: 700,
          height: 350,
          // color: Colors.purple,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 212, 120, 228),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
        ),
      ),
    ),
    SizedBox(
      width: 79,
    )
    
  ],
),

              SizedBox(height: 20), // Add some spacing between rows
              // Second Row
              Row(
                
                //mainAxisAlignment: MainAxisAlignment.,
                children: [
               Container(
  width: 645,
  child: Align(
    alignment: Alignment.topCenter,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 40,
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                 Navigator.push(
         context,
         MaterialPageRoute(builder: (context) => About()),
       );
                         // Add your button's action here
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 208, 206, 206),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                  // Set your button's border radius here
                ),
              ),
              child: Text(
                'GET STARTED -->',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 10), // Add spacing between buttons
          SizedBox(
            height: 40,
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                
              },
              style: ElevatedButton.styleFrom(
                 primary: Colors.transparent, // Set your button's background color here
                onPrimary: Colors.black,
                side: BorderSide(width: 2, color: Color.fromARGB(255, 148, 146, 146)),   // Set your button's background color here
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  // Set your button's border radius here
                ),
              ),
              child: Text(
                'I am smart',
                style: GoogleFonts.inconsolata(
                        fontSize: 20,
                        color: Color.fromARGB(255, 148, 146, 146),
                        fontWeight: FontWeight.w400
                      ),
              ),
            ),
          ),
          SizedBox(height: 10), // Add spacing between buttons
          SizedBox(
            height: 40,
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                // Add your button's action here
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent, // Set your button's background color here
                onPrimary: Colors.black,
                side: BorderSide(width: 2, color: Color.fromARGB(255, 148, 146, 146)),  // Set your button's background color here
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  // Set your button's border radius here
                ),
              ),
              child:  Text(
                'I do freelance',
                style: GoogleFonts.inconsolata(
                        fontSize: 20,
                        color: Color.fromARGB(255, 148, 146, 146),
                        fontWeight: FontWeight.w400
                      ),
              ),
            ),
          ),
          SizedBox(height: 10), // Add spacing between buttons
          SizedBox(
            height: 40,
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                // Add your button's action here
              },
              style: ElevatedButton.styleFrom(
                 primary: Colors.transparent, // Set your button's background color here
                onPrimary: Colors.black, // Set your button's text color here
                side: BorderSide(width: 2, color: Color.fromARGB(255, 148, 146, 146)), // Set the border style here// Set your button's background color here
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  // Set your button's border radius here
                ),
              ),
              child:  Text(
                'I develop apps',
                style: GoogleFonts.inconsolata(
                        fontSize: 20,
                        color: Color.fromARGB(255, 148, 146, 146),
                        fontWeight: FontWeight.w400
                      ),
              ),
            ),
          ),
        ],
      ),
    ),
  ),
),

                  // SizedBox(
                  //   width: 645,
                  // ),
                  GestureDetector(
                     onTap: () {
                            Navigator.push(
         context,
         MaterialPageRoute(builder: (context) => Resume()),
       );
                         },
                    child: Container(
                      width: 250,
                      height: 250,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("MY EDUCATION &  EXPERIENCE",
                          style: GoogleFonts.prompt(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                        ),
                        ),
                        ),
                      ),
                      //color: Colors.red,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 249, 111, 61),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)
                          ),
                        ),
                  
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                            Navigator.push(
         context,
         MaterialPageRoute(builder: (context) => Contact()),
       );
                         },
                    child: Container(
                      width: 250,
                      height: 250,
                      //color: Colors.green,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 191, 188, 192),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)
                          ),
                        ),
                        child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'CONTACT ME',
                          style: GoogleFonts.prompt(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                        ),
                          
                        ),
                      ),
                    
                  )
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                            Navigator.push(
         context,
         MaterialPageRoute(builder: (context) => Blog()),
       );
                         },
                    child: Container(
                      width: 250,
                      height: 250,
                      //color: Colors.blue,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 234, 193, 33),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)
                          ),
                        ),
                        child: Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'SUCCESSFUL            PROJECTS',
                          style: GoogleFonts.prompt(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                        ),
                          
                        ),
                      ),
                    
                  )
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

