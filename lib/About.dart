import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  ScrollController controller = ScrollController();
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 212, 120, 228),
      body: Container(
        
        child: Stack(
          
          children: [
            WebSmoothScroll(controller: controller, 
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                               SizedBox(
                      height: 43,
                    ),
                    Text(
                      "Get to know ME moreee!",
                      style: GoogleFonts.vinaSans(
                        fontSize: 70,
                        color: Colors.black,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    // Text(
                    //   "About ME",
                    //   style: GoogleFonts.poppins(
                    //     fontSize: 46,
                    //     color: Colors.white,
                    //     fontWeight: FontWeight.w700
                    //   ),
                    // ),
                    SizedBox(
                      height: 40,
                    ),
                    BootstrapRow(
                      height: 50,
                      children: [
                      BootstrapCol(
                        sizes: 'col-md-12 col-lg-4 col-sm-12',

                        child: MediaQuery.of(context).size.width < 992?
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/diana.jpg'),
                          radius: MediaQuery.of(context).size.width *0.2,
                        ):Container(
                          height: 500,
                          child: Image(
                            image: AssetImage('assets/images/diana.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),

                      ),
                      BootstrapCol(
                        sizes: 'col-md-12 col-lg-6 col-sm-12',
                        child: Container(
                        height: 570,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MediaQuery.of(context).size.width > 992?
                            Container()
                            :SizedBox(
                              height: 35,
                            ),
                            // Text(
                            //    "Who am I?",
                            //    style: GoogleFonts.poppins(
                            //     fontSize: 25,
                            //     color: Color(0xff009e66),
                            //     fontWeight: FontWeight.w500
                            //    ),
                            // ),
                            SizedBox(
                              height: 2,
                            ),
                            AutoSizeText(
                              "Hi!!! I\'m Diana Dcruz, a pre-final year B.Tech Computer science student",
                              maxLines: 2,
                              style: GoogleFonts.josefinSans(
                                fontSize: 33,
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                               ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            AutoSizeText(
                              "A computer science student is a dedicated individual passionate about technology constantly learning and exploring various aspects of the field they have a deep understanding of programming languages algorithms data structures computer networks databases artificial intelligence machine learning and more their analytical and problem-solving skills are exceptional they work on diverse projects and collaborate with teams to develop innovative solutions they are adaptable and stay updated with the latest trends in technology.",
                              maxLines: 5,
                              style: GoogleFonts.preahvihear(
                                fontSize: 25,
                                color: Color.fromARGB(255, 62, 61, 61),
                                fontWeight: FontWeight.w400
                               ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              width: double.maxFinite,
                              height: 2,
                              color: Colors.black,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                            child: MediaQuery.of(context).size.width > 800?
                            Row(
                              children: [
                                Cvcard(text1: "Name: ", text2: "Diana Dcruz"),
                                Spacer(),
                                Cvcard(text1: "email: ", text2: "dianadcruzt@gmail.com"),
                              ],

                            )
                            :
                            Column(
                              children: [
                                Cvcard(text1: "Name: ", text2: "Diana Dcruz"),
                                Spacer(),
                                Cvcard(text1: "email: ", text2: "dianadcruzt@gmail.com"),
                              ],
                            ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                            child: MediaQuery.of(context).size.width > 800?
                            Row(
                              children: [
                                Cvcard(text1: "Github: ", text2: "diana582"),
                                Spacer(),
                                Cvcard(text1: "LinkedIn: ", text2: "diana-dcruz-286b69211/"),
                              ],

                            )
                            :
                            Column(
                              children: [
                                Cvcard(text1: "Github: ", text2: "diana582"),
                                Spacer(),
                                Cvcard(text1: "LinkedIn: ", text2: "diana-dcruz-286b69211/"),
                              ],
                            ),
                            ),
                             Padding(
                              padding: EdgeInsets.only(top: 10),
                            child: MediaQuery.of(context).size.width > 800?
                            Row(
                              children: [
                                Cvcard(text1: "Phone: ", text2: "7356732344"),
                                Spacer(),
                                Cvcard(text1: "Age: ", text2: "21"),
                              ],

                            )
                            :
                            Column(
                              children: [
                                Cvcard(text1: "Phone: ", text2: "7356732344"),
                                Spacer(),
                                Cvcard(text1: "Age: ", text2: "21"),
                              ],
                            ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.black
                                  ),
                                  child: Center(
                                    child: GestureDetector(
                                      onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PDFScreen()),
            );
          },
                                      child: Text(
                                        "Download CV",
                                        style:  GoogleFonts.radley(
                                                                    fontSize: 16,
                                                                    color: Colors.white,
                                                                    fontWeight: FontWeight.w400
                                                                   ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        _launchURL('https://github.com/diana582');
                                      },
                                      child: Image(
                                      image: NetworkImage("https://cdn-icons-png.flaticon.com/128/3291/3291695.png"),
                                                                       // color: Colors.black, // Color to apply to the image
                                         width: 25,
                                      height: 25,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                     GestureDetector(
                                      onTap: (){
                                        _launchURL('https://www.linkedin.com/in/diana-dcruz-286b69211/');
                                      },
                                       child: Image(
                                                                         image: NetworkImage("https://cdn-icons-png.flaticon.com/128/174/174857.png"),
                                                                        // color: Colors.black, // Color to apply to the image
                                         width: 25,
                                                                         height: 25,
                                                                         ),
                                     ),

                                    SizedBox(
                                      width: 15,
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        _launchURL('https://www.instagram.com/_dianadcruz_/');
                                      },
                                      child: Image(
                                      image: NetworkImage("https://cdn-icons-png.flaticon.com/128/2111/2111463.png"),
                                                                       // color: Colors.black, // Color to apply to the image
                                         width: 25,
                                      height: 25,
                                      ),
                                    ),

                                    SizedBox(
                                      width: 15,
                                    ),
                                  ],
                                )
                              ],
                            )
                        
                          ],
                        ),
                      ))
                    ])
                  ],
                ),
              ),
            ))
          ],
        ),
      ),

    );

    
  }
}
class Cvcard extends StatefulWidget {
  final String text1;
  final String text2;

  const Cvcard({super.key, required this.text1, required this.text2});

  @override
  State<Cvcard> createState() => _CvcardState();
}

class _CvcardState extends State<Cvcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            widget.text1,
            maxLines: 1,
            style:  GoogleFonts.preahvihear(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w500
                               ),
          ),
          Text(
             widget.text2,
            maxLines: 1,
            style:  GoogleFonts.rajdhani(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 47, 46, 46),
                                fontWeight: FontWeight.w500
                               ),
          )
        ],
      ),
    );
  }
}
class PDFScreen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color.fromARGB(255, 221, 127, 238),
      body: 
      
           PDFView(
              filePath: 'assets/sample.pdf', // Replace with your PDF URL or local file path
            
            ),
    );
  }
}