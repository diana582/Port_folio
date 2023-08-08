import 'package:diana_portfolio/custom%20widgets/resume_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class Resume extends StatefulWidget {
  const Resume({super.key});

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  ScrollController controller = ScrollController();

   // Data for the "Education" section
  List<CustomCard> educationData = [
    CustomCard(
      head: "Bachelor of Technology",
      sub: "Computer Science engineering  CGPA-8.94",
      sub2: "Thangal Kunju Musaliar College of Engineering /2020-2024",
    ),
    CustomCard(
      head: "Higher secondary Education",
      sub: "Kristu Jyothi higher secondary school",
      sub2: "Percentage 98%",
    ),
    CustomCard(
      head: "Secondary Education",
      sub: "Placid Vidya Vihar sr. sec school",
      sub2: "Percentage 95.4% /2020-2024",
    ),
    CustomCard(
      head: "Secondary Education",
      sub: "Placid Vidya Vihar sr. sec school",
      sub2: "Percentage 95.4% /2020-2024",
    ),
  ];

  // Data for the "Experience" section
  List<CustomCard> experienceData = [
    CustomCard(
      head: "App Developer",
      sub: "Pulivilakth Engg. Services",
      sub2: "May 2023 - Present",
    ),
    CustomCard(
      head: "Junior Flutter developer",
      sub: "Honeybadgersco.",
      sub2: "May 2023 - July 2023",
    ),
    CustomCard(
      head: "Python and ML intern",
      sub: "Acsia Technologies",
      sub2: "May 2023 - June 2023",
    ),
     CustomCard(
      head: "App and Web developer",
      sub: "Revolt Infotech",
      sub2: "May 2021 - June 2022",
    ),
  ];
  @override

  Widget build(BuildContext context) {
    
    return Scaffold(
      
      backgroundColor: Color.fromARGB(255, 249, 111, 61),
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
                      "Check out my Resume",
                      style: GoogleFonts.vinaSans(
                        fontSize: 70,
                        color: Colors.black,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  //  Text(
                   //   "Resume",
                    //  style: GoogleFonts.poppins(
                    //    fontSize: 46,
                    //    color: Colors.white,
                     //   fontWeight: FontWeight.w700
                   //   ),
                  //  ),
                    SizedBox(
                      height: 80,
                    ),
                    MediaQuery.of(context).size.width > 950?
                    Container(
                      width: double.infinity,
                      child: Center(
                        child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                            ResumeCard(head: "Education",
                            educationData: educationData,
                                          experienceData: [],
                            ),
                            SizedBox(
                              width: 75,
                            ),
                            ResumeCard(head: "Experience",
                             educationData: [],
                                          experienceData: experienceData,
                            ),],
                            ),
                          ],
                        ),
                      ),
                    ):Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ResumeCard(head: "Education",
                        educationData: educationData,
                                  experienceData: [],
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        ResumeCard(head: "Experience",
                         educationData: [],
                                  experienceData: experienceData,),
                      ],
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7 + 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: double.maxFinite,
                            child: Column(
                              children: [
                                Text(
                                  "My level of knowledege",
                                  style: GoogleFonts.vinaSans(
                                    fontSize: 70,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400
                                  )
                                  ,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                               // Text(
                                 // "My skills",
                                //  style: GoogleFonts.poppins(
                                 //   fontSize: 46,
                                 //   fontWeight: FontWeight.w700,
                                 //   color: Colors.white
                                //  ),
                               // ),
                                MediaQuery.of(context).size.width > 950?
                                Row(
                                  children: [
                                    PercentItem(),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    
                                  ],
                                ):Column(
                                  children: [
                                    PercentItem(),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    
                                  ],
                                ),
                                SizedBox(
                                  height: 100,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.35,
                                  child: BootstrapRow(
                                    height: 350,
                                    children: [
                                      BootstrapCol(
                                        sizes: "col-12 col-sm-12 col-mi-6 col-lg-",
                                        child: Container(
                                          height: 350,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [

                                            ],
                                          ),

                                      ))
                                    ]),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      
                    )
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
class PercentItem extends StatefulWidget {
  const PercentItem({super.key});

  @override
  State<PercentItem> createState() => _PercentItemState();
}

class _PercentItemState extends State<PercentItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PercentCard(progress: 0.95, text: "C++/C",),
          PercentCard(progress: 0.70, text: "Java",),
          PercentCard(progress: 0.80, text: "JavaScript",),
          PercentCard(progress: 0.1, text: "Flutter",),
          PercentCard(progress: 0.95, text: "Dart",),
          PercentCard(progress: 0.1, text: "SQL",),
          PercentCard(progress: 0.50, text: "Django",),
          
          
          
          
          
        ],
      ),
    );
  }
}
class PercentCard extends StatefulWidget {
  final double progress;
  final String text;
  const PercentCard({super.key, required this.progress,required this.text});

  @override
  State<PercentCard> createState() => _PercentCardState();
}

class _PercentCardState extends State<PercentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width > 950
            ? MediaQuery.of(context).size.width * 0.3 + 35
            :MediaQuery.of(context).size.width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 45,
                ),
                Text(
                  " ${widget.text}",
                  style: GoogleFonts.oswald(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                LinearPercentIndicator(
                  percent: widget.progress,
                  lineHeight: 8,
                  animation: true,
                  animationDuration: 1000,
                  linearStrokeCap: LinearStrokeCap.butt,
                  progressColor: Colors.white,
                  backgroundColor: Color(0xff161616),
                ),

              ],
            ),
    );
  }
}