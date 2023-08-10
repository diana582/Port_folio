
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
            LayoutBuilder(
              builder: (context, constraints) {
                
              
              return Row(
              mainAxisAlignment: MainAxisAlignment.center, // To center the violet container
              children: [
                Flexible(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
              child: Text("I know I tend to\nmake it about me",
              style: GoogleFonts.vinaSans(
                          fontSize: MediaQuery.of(context).size.width >= 700 ? 110 : 50,
                          color: Color.fromARGB(255, 208, 206, 206),
                          fontWeight: FontWeight.w500
                        ),
              ),
                      ),
                    ),
                  ), // You can add content in this container if needed
                ),
                if (MediaQuery.of(context).size.width >= 700) // Check screen width
                  SizedBox(
                       width: 20, // Add a small space if screen width is enough
                  ),
                Flexible(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                              Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => About()),
                   );
                           },
                    child: Container(
              width: MediaQuery.of(context).size.width >= 700 ? 600 : 200,
              height: MediaQuery.of(context).size.width >= 700 ? 350 : 300,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 212, 120, 228),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Text(
                      'ME!!!',
                      style: GoogleFonts.vinaSans(
                          fontSize: 90,
                          color: Color.fromARGB(255, 78, 43, 80),
                          fontWeight: FontWeight.w500
                        ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/My project.png'), // Replace with your image asset path
                alignment: Alignment.centerRight,
                fit: BoxFit.contain,
              ),
                      ),
                    ),
                  ),
                ],
              ),
            )
            
            
                  ),
                ),
                SizedBox(
                  width: 79,
                ),
                
              ],
            );
              },
            ),

              SizedBox(height: 20), 
              // Second Row
              LayoutBuilder(
                builder: (context, constraints) {
                return Row(
                  
                  
                  children: [
                 Flexible(
                  flex: constraints.maxWidth< 700 ? 1 : 2,
                   child: Container(
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
                          SizedBox(height: 10), 
                          SizedBox(
                            height: 40,
                            width: 200,
                            child: ElevatedButton(
                                 onPressed: () {
                    Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => Blog()),
                       );
                                 },
                                 style: ElevatedButton.styleFrom(
                     primary: Colors.transparent, 
                    onPrimary: Colors.black,
                    side: BorderSide(width: 2, color: Color.fromARGB(255, 148, 146, 146)),   
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      
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
                          SizedBox(height: 10), 
                          SizedBox(
                            height: 40,
                            width: 200,
                            child: ElevatedButton(
                                 onPressed: () {
                    Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => Contact()),
                       );// Add your button's action here
                                 },
                                 style: ElevatedButton.styleFrom(
                    primary: Colors.transparent, 
                    onPrimary: Colors.black,
                    side: BorderSide(width: 2, color: Color.fromARGB(255, 148, 146, 146)),  
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      
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
                          SizedBox(height: 10), 
                          SizedBox(
                            height: 40,
                            width: 200,
                            child: ElevatedButton(
                                 onPressed: () {
                    // Add your button's action here
                     Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => Contact()),
                       );
                                 },
                                 style: ElevatedButton.styleFrom(
                     primary: Colors.transparent, 
                    onPrimary: Colors.black, 
                    side: BorderSide(width: 2, color: Color.fromARGB(255, 148, 146, 146)), 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      
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
                 ),
              
                    // SizedBox(
                    //   width: 645,
                    // ),
                    Flexible(
                      flex: 1,
                      child: GestureDetector(
                         onTap: () {
                                Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => Resume()),
                       );
                             },
                        child: Container(
                                    width: 250,
                                    height: 250,
                                    child: Stack(
                                      children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "MY EDUCATION & EXPERIENCE",
                            style: GoogleFonts.bebasNeue(
                                    fontSize: 35,
                                    color: Color.fromARGB(255, 113, 31, 2),
                                    fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                            image: NetworkImage('https://cdn-icons-png.flaticon.com/128/2936/2936719.png'), // Replace with your image asset path
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 249, 111, 61),
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
                      width: 30,
                    ),
                    Flexible(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                                Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => Contact()),
                       );
                             },
                        child: Container(
                                    width: 250,
                                    height: 250,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 191, 188, 192),
                                      borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: NetworkImage('https://cdn-icons-png.flaticon.com/128/6349/6349197.png'), // Replace with your image asset path
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'CONTACT ME',
                            style: GoogleFonts.bebasNeue(
                                    fontSize: 40,
                                    color: Color.fromARGB(255, 56, 55, 56),
                                    fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                                      ],
                                    ),
                                  ),
                                  
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Flexible(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                                Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => Blog()),
                       );
                             },
                        child: Container(
                                    width: 250,
                                    height: 250,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 234, 193, 33),
                                      borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: NetworkImage('https://cdn-icons-png.flaticon.com/128/8644/8644515.png'), // Replace with your image asset path
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'SUCCESSFUL PROJECTS',
                            style: GoogleFonts.bebasNeue(
                                    fontSize: 35,
                                    color: Color.fromARGB(255, 100, 84, 22),
                                    fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                                      ],
                                    ),
                                  ),
                                  
                      ),
                    ),
                  ],
                );
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}

